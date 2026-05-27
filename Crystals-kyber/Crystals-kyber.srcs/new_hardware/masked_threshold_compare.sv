`timescale 1ns/1ps
// =============================================================================
// masked_threshold_compare.sv
//
// Phase A v2 building block. Computes Boolean shares of
//     m_bit = (LO <= c < HI)
// from Boolean shares of c, without unmasking c at any combinational wire.
//
// Designed to drop into masked_compress_d1.sv in place of the v1 cleartext
// XOR-and-range-check. Closes ledger entry XOR-1 in the master plan.
//
// Algorithm (13-bit native; X2X's SecAdd_HALFCYCLE_STREAM is hardcoded to
// 13-bit width regardless of its PARAM_WIDTH "parameter" — see line 164 of
// the X2X file. So we work modulo 2^13 = 8192 and use bit 12 (the MSB) as
// the discriminator rather than a 14th overflow bit):
//
//   For c in [0, Q) and a public threshold T < Q, look at
//       result = (c + (2^13 - T)) mod 2^13
//   - If c >= T  : result = c - T   (in [0, c-T])    → result < T < 4096 → bit 12 = 0
//   - If c <  T  : result = c + 2^13 - T (no wrap)   → result >= 2^13 - T = 4096+(...) → bit 12 = 1
//   (works as long as T < 2^12 = 4096; we have LO=833 and HI=2497, both < 4096 ✓)
//
//   So (c >= T) = NOT bit 12 of the 13-bit SecAdd result.
//
//   1. SecAdd((c, 0), (8192 - LO, 0))  in 13-bit width  -> sum_LO. Bit 12 = NOT (c >= LO).
//   2. SecAdd((c, 0), (8192 - HI, 0))  in 13-bit width  -> sum_HI. Bit 12 = NOT (c >= HI) = (c < HI).
//   3. SecNOT on bit 12 of sum_LO -> Boolean share of (c >= LO).
//   4. Bit 12 of sum_HI is already the Boolean share of (c < HI) directly.
//   5. SecAnd of (c >= LO) and (c < HI) -> m_bit. One SecAnd, WIDTH=1.
//
// Latency: ~5 cycles (4 for parallel SecAdds + 1 for SecAnd) — assuming
// HALFCYCLE=1 and N_STAGES=4. Parent module is responsible for supplying
// fresh randomness on every cycle the gadget is active.
//
// Reference: plan_masked_ntt_phase3a_design.md §12.b
// =============================================================================

module masked_threshold_compare #(
    parameter HALFCYCLE   = 1,
    parameter PARAM_WIDTH = 13,   // X2X SecAdd is hardcoded 13-bit; do not change
    parameter N_SHARES    = 2,
    parameter N_STAGES    = 4,
    parameter [12:0] LO   = 13'd833,
    parameter [12:0] HI   = 13'd2497,
    // SecAdd input offsets: (2^13 - threshold) so bit 12 of sum = NOT (c >= threshold)
    parameter [PARAM_WIDTH-1:0] LO_OFFSET = 13'd8192 - LO,   // = 7359
    parameter [PARAM_WIDTH-1:0] HI_OFFSET = 13'd8192 - HI,   // = 5695
    // Randomness sizing — one set per SecAdd, plus one fresh bit for SecAnd
    parameter RND_TRIANGLE_PER_SECADD = 2 * (N_SHARES * (N_SHARES - 1) / 2),
    parameter RND_BOX_PER_SECADD      = (N_STAGES - 1) * 3 * (N_SHARES * (N_SHARES - 1) / 2)
                                        + 2 * (N_SHARES * (N_SHARES - 1) / 2),
    parameter RND_SECAND              = N_SHARES * (N_SHARES - 1) / 2
) (
    input  logic                       clk,
    input  logic                       rst_n,

    // Pulse for one cycle to begin a single threshold compare.
    input  logic                       start,
    output logic                       done,

    // Boolean shares of c (13-bit value)
    input  logic [12:0]                c_share_p,
    input  logic [12:0]                c_share_m,

    // Fresh randomness for the two SecAdds (LO and HI) and one SecAnd.
    input  logic [PARAM_WIDTH - 1 : 0] rnd_secadd_lo_triangle [RND_TRIANGLE_PER_SECADD - 1 : 0],
    input  logic [7:0]                 rnd_secadd_lo_box      [RND_BOX_PER_SECADD - 1 : 0],
    input  logic [PARAM_WIDTH - 1 : 0] rnd_secadd_hi_triangle [RND_TRIANGLE_PER_SECADD - 1 : 0],
    input  logic [7:0]                 rnd_secadd_hi_box      [RND_BOX_PER_SECADD - 1 : 0],
    input  logic                       rnd_secand             [RND_SECAND - 1 : 0],

    // Boolean shares of m_bit
    output logic                       m_p_o,
    output logic                       m_m_o
);

    // c is already 13-bit, matching PARAM_WIDTH; no extension needed.
    logic [PARAM_WIDTH-1:0] c_ext_p, c_ext_m;
    assign c_ext_p = c_share_p;
    assign c_ext_m = c_share_m;

    // -------------------------------------------------------------------------
    // SecAdd-LO and SecAdd-HI inputs (constant offsets shared trivially)
    // -------------------------------------------------------------------------
    logic [PARAM_WIDTH-1:0] lo_off_p, lo_off_m;
    logic [PARAM_WIDTH-1:0] hi_off_p, hi_off_m;
    assign lo_off_p = LO_OFFSET;
    assign lo_off_m = '0;
    assign hi_off_p = HI_OFFSET;
    assign hi_off_m = '0;

    // SecAdd ports want N_SHARES-element arrays
    logic [PARAM_WIDTH-1:0] secadd_lo_a [N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] secadd_lo_b [N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] secadd_lo_S [N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] secadd_hi_a [N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] secadd_hi_b [N_SHARES-1:0];
    logic [PARAM_WIDTH-1:0] secadd_hi_S [N_SHARES-1:0];

    assign secadd_lo_a[0] = c_ext_p;
    assign secadd_lo_a[1] = c_ext_m;
    assign secadd_lo_b[0] = lo_off_p;
    assign secadd_lo_b[1] = lo_off_m;

    assign secadd_hi_a[0] = c_ext_p;
    assign secadd_hi_a[1] = c_ext_m;
    assign secadd_hi_b[0] = hi_off_p;
    assign secadd_hi_b[1] = hi_off_m;

    logic secadd_lo_done, secadd_hi_done;

    (* keep_hierarchy = "TRUE" *) SecAdd_HALFCYCLE_STREAM #(
        .HALFCYCLE   (HALFCYCLE),
        .N_STAGES    (N_STAGES),
        .N_SHARES    (N_SHARES),
        .PARAM_WIDTH (PARAM_WIDTH)
    ) u_secadd_lo (
        .clk                  (clk),
        .rst_n                (rst_n),
        .start                (start),
        .done                 (secadd_lo_done),
        .fresh_rnd_triangle   (rnd_secadd_lo_triangle),
        .fresh_rnd_box        (rnd_secadd_lo_box),
        .a                    (secadd_lo_a),
        .b                    (secadd_lo_b),
        .S                    (secadd_lo_S)
    );

    (* keep_hierarchy = "TRUE" *) SecAdd_HALFCYCLE_STREAM #(
        .HALFCYCLE   (HALFCYCLE),
        .N_STAGES    (N_STAGES),
        .N_SHARES    (N_SHARES),
        .PARAM_WIDTH (PARAM_WIDTH)
    ) u_secadd_hi (
        .clk                  (clk),
        .rst_n                (rst_n),
        .start                (start),
        .done                 (secadd_hi_done),
        .fresh_rnd_triangle   (rnd_secadd_hi_triangle),
        .fresh_rnd_box        (rnd_secadd_hi_box),
        .a                    (secadd_hi_a),
        .b                    (secadd_hi_b),
        .S                    (secadd_hi_S)
    );

    // -------------------------------------------------------------------------
    // Extract bit 12 (MSB of 13-bit sum). Per the algorithm comment above:
    //   bit 12 of sum_LO = NOT (c >= LO) = (c < LO)
    //   bit 12 of sum_HI = NOT (c >= HI) = (c < HI)
    // -------------------------------------------------------------------------
    logic lt_lo_p, lt_lo_m;   // Boolean share of (c < LO)
    logic lt_hi_p, lt_hi_m;   // Boolean share of (c < HI)
    assign lt_lo_p = secadd_lo_S[0][PARAM_WIDTH - 1];
    assign lt_lo_m = secadd_lo_S[1][PARAM_WIDTH - 1];
    assign lt_hi_p = secadd_hi_S[0][PARAM_WIDTH - 1];
    assign lt_hi_m = secadd_hi_S[1][PARAM_WIDTH - 1];

    // -------------------------------------------------------------------------
    // SecNOT on (lt_lo) -> (ge_lo). Flip share[0]; free.
    // -------------------------------------------------------------------------
    logic ge_lo_p, ge_lo_m;
    assign ge_lo_p = ~lt_lo_p;
    assign ge_lo_m =  lt_lo_m;

    // -------------------------------------------------------------------------
    // SecAnd((ge_lo), (lt_hi)) -> m_bit, WIDTH=1
    // -------------------------------------------------------------------------
    wire        and_start;
    logic       and_done;
    logic [0:0] and_a [N_SHARES-1:0];
    logic [0:0] and_b [N_SHARES-1:0];
    logic [0:0] and_c_out [N_SHARES-1:0];
    logic [0:0] and_rnd [RND_SECAND-1:0];

    assign and_a[0] = ge_lo_p;
    assign and_a[1] = ge_lo_m;
    assign and_b[0] = lt_hi_p;
    assign and_b[1] = lt_hi_m;
    assign and_rnd[0] = rnd_secand[0];

    // Drive SecAnd's start DIRECTLY from secadd_*_done (no extra register).
    // The register version was 1 cycle late and caused SecAnd to MISS the
    // first SecAdd output in streaming mode (we observed first wrapper
    // output as wrong; the rest correct). Without the extra register, the
    // first SecAnd's reg_res update lines up with the first valid SecAdd
    // output, so wrapper latency drops to X2X(10)+SecAdd(5)+SecAnd(1) = 16.
    assign and_start = secadd_lo_done & secadd_hi_done;

    // PIPELINE=1: in streaming mode SecAnd's inputs change every cycle.
    // PIPELINE=0 mixes registered + unregistered terms (data from cycles T
    // and T-1 in xor_res), producing wrong outputs when consecutive inputs
    // differ. PIPELINE=1 uses fully registered terms — correct for stream.
    (* keep_hierarchy = "TRUE" *) SecAnd #(
        .N_SHARES (N_SHARES),
        .WIDTH    (1),
        .PIPELINE (1)
    ) u_secand (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (and_start),
        .done       (and_done),
        .fresh_rnd  (and_rnd),
        .a          (and_a),
        .b          (and_b),
        .c          (and_c_out)
    );

    assign m_p_o = and_c_out[0][0];
    assign m_m_o = and_c_out[1][0];
    assign done  = and_done;

endmodule
