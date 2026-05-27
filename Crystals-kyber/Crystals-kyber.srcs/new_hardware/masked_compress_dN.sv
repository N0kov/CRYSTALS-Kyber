`timescale 1ns/1ps
// =============================================================================
// masked_compress_dN.sv
//
// Step 3+5 Phase B — masked Kyber compression for arbitrary d.
// Closes XOR-3 ledger entry for the dout states (0x2c/0x2d/0x38/0x39).
//
// Operation per call:
//     m_bits = compress_q(c, d) = round(c * 2^d / Q) mod 2^d
//   where c = (c_p - c_m) mod Q, Q = 3329.
//
// Algorithm (3.1 — Boolean long division):
//   1. X2X A2B converts (c_p, c_m) arithmetic-prime shares -> Boolean shares of c.
//   2. Caller-prepared y = c * 2^d + Q/2 is fed in already-shifted/Q2-summed
//      (for d=11 this is just {c, 11'h680}; for d<11 the caller must SecAdd 1664
//      because Q/2's 11 bits overlap the low d bits of c*2^d). For simplicity
//      this module accepts (y_p, y_m) Boolean shares of the (12+d)-bit dividend
//      directly and does the long division. The A2B + dividend prep is left to
//      the caller (see masked_compress_d1.sv pattern).
//   3. Boolean long division: for i = (12+d)-1 downto 0:
//        - shifted = (partial_remainder << 1) | y[i]   (Boolean-shared)
//        - SecAdd((shifted, 0), (2^13 - Q, 0)) — bit 12 indicates (shifted < Q)
//        - SecNOT(bit 12) gives Boolean share of (shifted >= Q)
//        - SecMux: r = (shifted >= Q) ? sum[11:0] : shifted
//          via r = shifted XOR (ge_share AND (shifted XOR sum[11:0]))
//        - if i < d: q_share[i] = ge_share
//   4. Output Boolean shares of the d-bit quotient. Caller XORs at boundary
//      (acceptable: dout goes to public ciphertext).
//
// Latency: ~6 cycles per iteration × (12+d) iterations = 138 cycles for d=11.
// Streaming-friendly within iterations (one SecAdd + one SecAnd back-to-back).
//
// References:
//   - plan_masked_ntt_phaseB_design.md §3.1
//   - masked_threshold_compare.sv (Phase A v2) for SecAdd-carry-out compare pattern
// =============================================================================

module masked_compress_dN #(
    parameter int          D            = 11,                 // output bit width
    parameter int          PARAM_WIDTH  = 13,                 // SecAdd width (X2X hardcoded 13-bit)
    parameter [12:0]       Q            = 13'd3329,
    parameter int          N_SHARES     = 2,
    parameter int          N_STAGES     = 4,
    // Q/2 offset for SecAdd compare: bit 12 of SecAdd(r, OFFSET) = (r < Q)
    // 2^13 - Q mod 2^13. With PARAM_WIDTH=13, -Q is the 2's complement form.
    parameter [PARAM_WIDTH-1:0] LT_OFFSET = -Q,
    // dividend width — caller passes y_p, y_m of width Y_WIDTH = 12 + D
    parameter int          Y_WIDTH      = 12 + D,
    // Randomness sizing per SecAdd + per SecAnd (one of each per iteration)
    parameter int          RND_TRI      = 2 * (N_SHARES * (N_SHARES - 1) / 2),
    parameter int          RND_BOX      = (N_STAGES - 1) * 3 * (N_SHARES * (N_SHARES - 1) / 2)
                                          + 2 * (N_SHARES * (N_SHARES - 1) / 2),
    parameter int          RND_AND      = N_SHARES * (N_SHARES - 1) / 2
)(
    input  logic                   clk,
    input  logic                   rst_n,

    input  logic                   start,
    output logic                   done,

    // Boolean shares of dividend y = c*2^D + Q/2
    input  logic [Y_WIDTH-1:0]     y_p,
    input  logic [Y_WIDTH-1:0]     y_m,

    // Fresh randomness — caller must keep stable for the full iteration burst,
    // or refresh per cycle in streaming mode (functional, leaks in HO; for v1
    // we hold across the whole compression and refresh on each new start).
    input  logic [PARAM_WIDTH-1:0] rnd_secadd_tri [RND_TRI-1:0],
    input  logic [7:0]             rnd_secadd_box [RND_BOX-1:0],
    input  logic [11:0]            rnd_secand_12,   // 12-bit SecAnd width for SecMux body

    // Boolean shares of D-bit quotient
    output logic [D-1:0]           q_p,
    output logic [D-1:0]           q_m
);

    // -------------------------------------------------------------------------
    // Iteration counter — counts down from Y_WIDTH-1 to 0
    // -------------------------------------------------------------------------
    logic [$clog2(Y_WIDTH+1)-1:0] ctr;
    logic                         busy;
    logic                         step_start;

    // Partial remainder (Boolean shares, 13 bits)
    logic [12:0]                  r_p, r_m;

    // Quotient bits accumulated so far (Boolean shares)
    logic [D-1:0]                 acc_q_p, acc_q_m;

    // Combinational: bit i of y where i = ctr (current iteration index)
    logic y_bit_p, y_bit_m;
    assign y_bit_p = y_p[ctr];
    assign y_bit_m = y_m[ctr];

    // Shifted partial remainder (Boolean shares, 13 bits)
    // Bring in next bit of y at the LSB; shift partial_remainder left by 1.
    logic [12:0] shifted_p, shifted_m;
    assign shifted_p = {r_p[11:0], y_bit_p};
    assign shifted_m = {r_m[11:0], y_bit_m};

    // -------------------------------------------------------------------------
    // SecAdd((shifted, 0), (LT_OFFSET, 0)) — 13-bit, 5-cycle pipeline
    // -------------------------------------------------------------------------
    logic [PARAM_WIDTH-1:0] secadd_a [N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] secadd_b [N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] secadd_S [N_SHARES-1:0];
    logic                   secadd_done;

    assign secadd_a[0] = {1'b0, shifted_p[11:0]} | (shifted_p[12] << 12);
    assign secadd_a[1] = {1'b0, shifted_m[11:0]} | (shifted_m[12] << 12);
    assign secadd_b[0] = LT_OFFSET;
    assign secadd_b[1] = '0;

    (* keep_hierarchy = "TRUE" *) SecAdd_HALFCYCLE_STREAM #(
        .HALFCYCLE  (1),
        .N_STAGES   (N_STAGES),
        .N_SHARES   (N_SHARES),
        .PARAM_WIDTH(PARAM_WIDTH)
    ) u_secadd (
        .clk                (clk),
        .rst_n              (rst_n),
        .start              (step_start),
        .done               (secadd_done),
        .fresh_rnd_triangle (rnd_secadd_tri),
        .fresh_rnd_box      (rnd_secadd_box),
        .a                  (secadd_a),
        .b                  (secadd_b),
        .S                  (secadd_S)
    );

    // Bit 12 of SecAdd result = (shifted < Q). NOT it for (shifted >= Q).
    // SecNOT is free on Boolean shares: flip share[0], leave share[1].
    logic ge_p, ge_m;
    assign ge_p = ~secadd_S[0][12];
    assign ge_m =  secadd_S[1][12];

    // -------------------------------------------------------------------------
    // SecMux body: AND of ge_share with (shifted XOR sum[11:0])
    //   new_r[j] = shifted[j] XOR (ge AND (shifted[j] XOR sum[j]))
    //
    // Use one SecAnd of width 12 (the low 12 bits of partial remainder).
    // Note: the SecAdd input/output here is the SecAdd that already fired;
    // its output appears 5 cycles after step_start. We pipeline-align so the
    // SecAnd consumes the SecAdd output one cycle after secadd_done.
    // -------------------------------------------------------------------------
    logic [11:0]  diff_p, diff_m;
    logic         ge_p_reg, ge_m_reg;

    // Capture SecAdd outputs (registered) for SecAnd consumption
    logic [11:0]  sum_low_p, sum_low_m;
    logic [12:0]  shifted_p_at_secadd, shifted_m_at_secadd;

    // The shifted value at the time SecAdd started is captured here
    // (delayed by 5 cycles to match SecAdd latency). For a clean impl,
    // pipe shifted in a shift register of depth = N_STAGES + 1 = 5.
    logic [12:0] shifted_pipe_p [4:0];
    logic [12:0] shifted_pipe_m [4:0];
    integer pi;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (pi = 0; pi < 5; pi = pi + 1) begin
                shifted_pipe_p[pi] <= '0;
                shifted_pipe_m[pi] <= '0;
            end
        end else if (busy) begin
            shifted_pipe_p[0] <= shifted_p;
            shifted_pipe_m[0] <= shifted_m;
            for (pi = 1; pi < 5; pi = pi + 1) begin
                shifted_pipe_p[pi] <= shifted_pipe_p[pi-1];
                shifted_pipe_m[pi] <= shifted_pipe_m[pi-1];
            end
        end
    end

    // The shifted value when SecAdd finishes (5 cycles later)
    assign shifted_p_at_secadd = shifted_pipe_p[4];
    assign shifted_m_at_secadd = shifted_pipe_m[4];

    assign sum_low_p = secadd_S[0][11:0];
    assign sum_low_m = secadd_S[1][11:0];

    assign diff_p = sum_low_p ^ shifted_p_at_secadd[11:0];
    assign diff_m = sum_low_m ^ shifted_m_at_secadd[11:0];

    // SecAnd: ge_share AND diff_share, width 12, single SecAnd (no width split needed)
    logic [11:0] secand_a [N_SHARES-1:0];
    logic [11:0] secand_b [N_SHARES-1:0];
    logic [11:0] secand_c [N_SHARES-1:0];
    logic        secand_done;

    assign secand_a[0] = {12{ge_p}};
    assign secand_a[1] = {12{ge_m}};
    assign secand_b[0] = diff_p;
    assign secand_b[1] = diff_m;

    logic [11:0] secand_rnd [RND_AND-1:0];
    assign secand_rnd[0] = rnd_secand_12;

    (* keep_hierarchy = "TRUE" *) SecAnd #(
        .N_SHARES (N_SHARES),
        .WIDTH    (12),
        .PIPELINE (1)
    ) u_secand (
        .clk       (clk),
        .rst_n     (rst_n),
        .start     (secadd_done),
        .done      (secand_done),
        .fresh_rnd (secand_rnd),
        .a         (secand_a),
        .b         (secand_b),
        .c         (secand_c)
    );

    // After SecAnd: new partial remainder = shifted XOR (ge AND diff)
    // SecAnd output is registered, available 1 cycle after secand started.
    // shifted_pipe is now at index 5 cycles old, but we need it at the SecAnd
    // output time (1 more cycle). Extend pipe to depth 6:
    logic [12:0] shifted_pipe_p2, shifted_pipe_m2;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shifted_pipe_p2 <= '0;
            shifted_pipe_m2 <= '0;
        end else if (busy) begin
            shifted_pipe_p2 <= shifted_pipe_p[4];
            shifted_pipe_m2 <= shifted_pipe_m[4];
        end
    end

    logic [11:0] new_r_low_p, new_r_low_m;
    assign new_r_low_p = shifted_pipe_p2[11:0] ^ secand_c[0];
    assign new_r_low_m = shifted_pipe_m2[11:0] ^ secand_c[1];

    // -------------------------------------------------------------------------
    // FSM control
    //
    // States:
    //   IDLE → ITERATE (one iteration takes 6 cycles: SecAdd 5 + SecAnd 1) → DONE
    //
    // For each iteration, step_start is pulsed for one cycle to start SecAdd.
    // After 5 cycles secadd_done fires, then 1 cycle later secand_done fires.
    // We then commit r_p/r_m, advance ctr, and pulse step_start again.
    // -------------------------------------------------------------------------
    typedef enum logic [1:0] { IDLE, RUN, DONE_S } state_t;
    state_t state, next_state;

    // Cycle counter within an iteration (0..5)
    logic [2:0] cyc;

    // ge_p/m captured for quotient bit
    logic ge_p_at_done, ge_m_at_done;

    // Quotient bit position (the index where this iteration's bit is stored)
    // Iteration i is for ctr value; ctr starts at Y_WIDTH-1 and counts down.
    // We store q[ctr] when ctr < D.
    logic [$clog2(Y_WIDTH+1)-1:0] ctr_at_start;
    logic [4:0] ctr_pipe [5:0];  // shift register to track ctr through the 6-cycle pipeline
    integer ci;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (ci = 0; ci < 6; ci = ci + 1) ctr_pipe[ci] <= '0;
        end else if (busy) begin
            ctr_pipe[0] <= ctr;
            for (ci = 1; ci < 6; ci = ci + 1) ctr_pipe[ci] <= ctr_pipe[ci-1];
        end
    end

    always_comb begin
        next_state = state;
        case (state)
            IDLE   : if (start) next_state = RUN;
            RUN    : if (ctr == 0 && secand_done) next_state = DONE_S;
            DONE_S : next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            ctr   <= '0;
            cyc   <= '0;
            r_p   <= '0;
            r_m   <= '0;
            acc_q_p <= '0;
            acc_q_m <= '0;
            busy  <= 1'b0;
            step_start <= 1'b0;
        end else begin
            state <= next_state;

            case (state)
                IDLE: begin
                    busy <= 1'b0;
                    step_start <= 1'b0;
                    if (start) begin
                        ctr   <= Y_WIDTH - 1;
                        cyc   <= '0;
                        r_p   <= '0;
                        r_m   <= '0;
                        acc_q_p <= '0;
                        acc_q_m <= '0;
                        busy  <= 1'b1;
                        step_start <= 1'b1;  // start first SecAdd
                    end
                end
                RUN: begin
                    busy <= 1'b1;
                    step_start <= 1'b0;
                    if (secand_done) begin
                        // commit new partial remainder
                        r_p <= {1'b0, new_r_low_p};
                        r_m <= {1'b0, new_r_low_m};
                        // store quotient bit if within d
                        if (ctr_pipe[5] < D) begin
                            acc_q_p[ctr_pipe[5]] <= ge_p;
                            acc_q_m[ctr_pipe[5]] <= ge_m;
                        end
                        // advance ctr or finish
                        if (ctr == 0) begin
                            // done — next_state goes to DONE_S
                            busy <= 1'b0;
                        end else begin
                            ctr <= ctr - 1;
                            step_start <= 1'b1;  // launch next SecAdd
                        end
                    end
                end
                DONE_S: begin
                    busy <= 1'b0;
                    step_start <= 1'b0;
                end
                default: ;
            endcase
        end
    end

    assign done  = (state == DONE_S);
    assign q_p   = acc_q_p;
    assign q_m   = acc_q_m;

endmodule
