`timescale 1ns/1ps
// =============================================================================
// masked_compress_dN_full.sv
//
// Step 3+5 Phase B v1 — full masked Kyber compression wrapper.
//
// Combines:
//   - X2X A2B (prime mode, 13-bit) to convert (c_p, c_m) arithmetic shares
//     to Boolean shares of c.
//   - Y construction for D=11: y = c * 2^D + Q/2. For D=11 the Q/2 (11 bits)
//     fits exactly under the c shift — pure wiring, no SecAdd needed.
//   - masked_compress_dN (D=11) — Boolean long division by Q.
//
// For D<11, a SecAdd to add Q/2 would be needed; currently this wrapper only
// supports D=11. (Phase B.5 will add the D=5 path with the SecAdd.)
//
// FSM:
//   IDLE → A2B_RUN (X2X valid_data pulsed) → A2B_WAIT (waiting valid_result)
//        → LDIV_RUN (masked_compress_dN start pulsed) → LDIV_WAIT (waiting done)
//        → DONE.
//
// Total latency: ≈10 (X2X) + ≈140 (long div) = 150 cycles.
//
// Reference: plan_masked_ntt_phaseB_design.md §12
// =============================================================================

module masked_compress_dN_full #(
    parameter int          D            = 11,                 // output bit width
    parameter [12:0]       Q            = 13'd3329,
    parameter int          PARAM_WIDTH  = 13,                 // X2X width
    parameter int          N_SHARES     = 2,
    parameter int          N_STAGES     = 4,
    // 11 bits of Q/2 fit under the D-bit shift when D >= 11
    parameter [10:0]       Q_HALF       = 11'd1664,
    // X2X randomness sizing
    parameter int          X2X_RND_SHARES      = 2 * (N_SHARES - 1) + 2 * N_SHARES
                                                 + 4 * (N_SHARES * (N_SHARES - 1) / 2),
    parameter int          X2X_RND_SHARES_8bit = 2 * N_STAGES * 3
                                                 * (N_SHARES * (N_SHARES - 1) / 2),
    // long-division randomness sizing (one SecAdd + one SecAnd per iteration,
    // we provide fresh inputs that are held stable across iterations in v1)
    parameter int          LD_RND_TRI = 2 * (N_SHARES * (N_SHARES - 1) / 2),
    parameter int          LD_RND_BOX = (N_STAGES - 1) * 3 * (N_SHARES * (N_SHARES - 1) / 2)
                                        + 2 * (N_SHARES * (N_SHARES - 1) / 2)
)(
    input  logic                   clk,
    input  logic                   rst_n,

    // Pulse start to begin one compression. Outputs (q_p, q_m) become valid
    // when done pulses high.
    input  logic                   start,
    output logic                   done,

    // Arithmetic prime shares of c (c = c_p - c_m mod Q)
    input  logic [11:0]            c_p,
    input  logic [11:0]            c_m,

    // X2X randomness
    input  logic [PARAM_WIDTH-1:0] fresh_rnd_shares      [X2X_RND_SHARES-1:0],
    input  logic [7:0]             fresh_rnd_shares_8bit [X2X_RND_SHARES_8bit-1:0],

    // long-division randomness
    input  logic [PARAM_WIDTH-1:0] ld_rnd_tri [LD_RND_TRI-1:0],
    input  logic [7:0]             ld_rnd_box [LD_RND_BOX-1:0],
    input  logic [11:0]            ld_rnd_and12,

    // Boolean shares of D-bit quotient
    output logic [D-1:0]           q_p,
    output logic [D-1:0]           q_m
);

    // -------------------------------------------------------------------------
    // X2X A2B inputs — convert (c_p, c_m) prime-share to X2X's (a, b) convention
    //   X2X: c = a + b mod Q with b in [-Q, -1] (= 2^13 - c_m bit pattern).
    //   For c_m=0, b would be -Q which is out of range — remask by adding 1
    //   to both shares (same trick as masked_compress_d1.sv).
    // -------------------------------------------------------------------------
    wire        c_m_is_zero = (c_m == 12'd0);
    wire [11:0] cp_plus_1   = (c_p == 12'(Q[11:0] - 1)) ? 12'd0 : (c_p + 12'd1);
    wire [11:0] cp_safe     = c_m_is_zero ? cp_plus_1 : c_p;
    wire [11:0] cm_safe     = c_m_is_zero ? 12'd1     : c_m;

    logic [PARAM_WIDTH-1:0] a_in, b_in;
    assign a_in = {1'b0, cp_safe};
    assign b_in = 13'h2000 - {1'b0, cm_safe};

    logic [PARAM_WIDTH-1:0] x2x_in  [1:0][N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] x2x_out [1:0][N_SHARES-1:0];
    logic                   x2x_valid_data, x2x_ready_data;
    logic                   x2x_valid_result, x2x_ready_result;

    always_comb begin
        x2x_in[0][0] = a_in;
        x2x_in[0][1] = b_in;
        x2x_in[1][0] = '0;
        x2x_in[1][1] = '0;
    end

    (* keep_hierarchy = "TRUE" *) MaskConversion_HALFCYCLE_STREAM #(
        .HALFCYCLE       (1),
        .PARAM_WIDTH     (PARAM_WIDTH),
        .N_SHARES        (N_SHARES),
        .RND_SHARES      (X2X_RND_SHARES),
        .RND_SHARES_8bit (X2X_RND_SHARES_8bit)
    ) u_x2x (
        .clk                  (clk),
        .rst_n                (rst_n),
        .conversion_mode      (1'b0),                // 0 = A2B
        .data_type_mode       (1'b1),                // 1 = prime
        .dual_mode            (1'b0),
        .valid_data           (x2x_valid_data),
        .ready_data           (x2x_ready_data),
        .original_data        (x2x_in),
        .converted_data       (x2x_out),
        .valid_result         (x2x_valid_result),
        .ready_result         (x2x_ready_result),
        .fresh_rnd_shares     (fresh_rnd_shares),
        .fresh_rnd_shares_8bit(fresh_rnd_shares_8bit)
    );

    // -------------------------------------------------------------------------
    // Capture X2X Boolean output, build y = c*2^D + Q/2 (D=11 only here)
    // -------------------------------------------------------------------------
    localparam int Y_WIDTH = 12 + D;     // 23 for D=11

    logic [12:0] c_B_p, c_B_m;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            c_B_p <= '0;
            c_B_m <= '0;
        end else if (x2x_valid_result) begin
            c_B_p <= x2x_out[0][0][12:0];
            c_B_m <= x2x_out[0][1][12:0];
        end
    end

    // For D=11: y_p = {c_B_p[11:0], 11'h680}, y_m = {c_B_m[11:0], 11'h0}.
    // y_p XOR y_m = {c, 11'h680} = c * 2^11 + Q/2.
    logic [Y_WIDTH-1:0] y_p, y_m;
    assign y_p = {c_B_p[11:0], Q_HALF};
    assign y_m = {c_B_m[11:0], 11'h0};

    // -------------------------------------------------------------------------
    // FSM driving X2X + long division
    // -------------------------------------------------------------------------
    typedef enum logic [2:0] {
        IDLE,
        A2B_RUN,    // pulse x2x_valid_data
        A2B_WAIT,   // wait for x2x_valid_result
        LDIV_RUN,   // pulse ld_start
        LDIV_WAIT,  // wait for ld_done
        DONE_S
    } state_t;
    state_t state, next_state;

    logic ld_start;
    logic ld_done;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= IDLE;
        else        state <= next_state;
    end

    always_comb begin
        next_state = state;
        case (state)
            IDLE:      if (start) next_state = A2B_RUN;
            A2B_RUN:   if (x2x_ready_data) next_state = A2B_WAIT;
            A2B_WAIT:  if (x2x_valid_result) next_state = LDIV_RUN;
            LDIV_RUN:  next_state = LDIV_WAIT;            // one-cycle pulse start
            LDIV_WAIT: if (ld_done) next_state = DONE_S;
            DONE_S:    next_state = IDLE;
            default:   next_state = IDLE;
        endcase
    end

    assign x2x_valid_data   = (state == A2B_RUN);
    assign x2x_ready_result = 1'b1;     // always ready to capture
    assign ld_start         = (state == LDIV_RUN);
    assign done             = (state == DONE_S);

    // -------------------------------------------------------------------------
    // masked_compress_dN — long division core
    // -------------------------------------------------------------------------
    (* keep_hierarchy = "TRUE" *) masked_compress_dN #(
        .D           (D),
        .PARAM_WIDTH (PARAM_WIDTH),
        .Q           (Q),
        .N_SHARES    (N_SHARES),
        .N_STAGES    (N_STAGES)
    ) u_ldiv (
        .clk            (clk),
        .rst_n          (rst_n),
        .start          (ld_start),
        .done           (ld_done),
        .y_p            (y_p),
        .y_m            (y_m),
        .rnd_secadd_tri (ld_rnd_tri),
        .rnd_secadd_box (ld_rnd_box),
        .rnd_secand_12  (ld_rnd_and12),
        .q_p            (q_p),
        .q_m            (q_m)
    );

endmodule
