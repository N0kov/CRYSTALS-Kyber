`timescale 1ns/1ps
// =============================================================================
// masked_compress_d1.sv
//
// Step 3+5 Phase A v1 — masked Kyber d=1 compression with X2X A2B.
//
// Operation per call:
//     m_bit = compress_q(c, 1)   where c = (c_p - c_m) mod q, q = 3329
//                                and compress_q(x, 1) = ((2x + q/2) / q) & 1
//
//     Equivalently: m_bit = 1 iff c ∈ [833, 2496) (i.e. closer to q/2 than 0).
//
// Internally:
//   1. Project's `(c_p, c_m)` shares (c = c_p - c_m mod q) are remapped to
//      X2X's signed-arithmetic convention `c = a + b mod q` by setting
//      a = c_p, b = (-c_m) as a 13-bit two's-complement value.
//   2. X2X `MaskConversion_HALFCYCLE_STREAM` runs A2B (`conversion_mode=0`,
//      `data_type_mode=1` prime, `dual_mode=0`) producing Boolean shares
//      (B_p, B_m) of c in [0, q).
//   3. **v1 ONLY**: the threshold compare is currently a *combinational
//      unmask* of (B_p, B_m) followed by a public range check. This exposes
//      cleartext c on a combinational wire inside this module — DOCUMENTED
//      LIMITATION. v2 replaces the threshold with a properly-masked
//      Boolean compare (constant-input SecAdd extracting the carry-out,
//      plus SecAnd to combine). Until v2 ships, this module is a
//      *structural* refactor that consolidates the leak into one place,
//      not a real security improvement.
//
// Interface uses simple valid/ready handshake matching X2X's. One
// compression request per `valid_data`/`ready_data` pulse pair.
//
// Plan reference: /home/lincoln/.claude/plans/sure-go-ahead-starry-knuth.md
//                 plan_masked_ntt_phase3a_design.md
// =============================================================================

module masked_compress_d1 #(
    parameter HALFCYCLE  = 1,
    parameter PARAM_WIDTH = 13,
    parameter [12:0] Q   = 13'd3329,
    parameter [12:0] LO  = 13'd833,    // smallest c with compress_d1(c) = 1
    parameter [12:0] HI  = 13'd2497,   // smallest c above LO with compress_d1(c) = 0
                                       //   (so compress_d1 = 1 iff c in [LO, HI))
    // X2X randomness sizing (N_SHARES=2, N_STAGES=4); exposed as parameters
    // so the port-list array sizes are known before module body parsing.
    parameter int N_SHARES          = 2,
    parameter int N_STAGES          = 4,
    parameter int X2X_RND_SHARES    = 2 * (N_SHARES - 1) + 2 * N_SHARES
                                      + 4 * (N_SHARES * (N_SHARES - 1) / 2),
    parameter int X2X_RND_SHARES_8bit = 2 * N_STAGES * 3 *(N_SHARES * (N_SHARES - 1) / 2)
) (
    input  logic              clk,
    input  logic              rst_n,                  // active-low

    // Project-style input shares: c = (c_p - c_m) mod Q
    input  logic [11:0]       c_p,
    input  logic [11:0]       c_m,

    // Handshake
    input  logic              valid_data,             // assert when (c_p, c_m) ready
    output logic              ready_data,             // module accepts a new request
    input  logic              ready_result,           // downstream is ready for m_bit
    output logic              valid_result,           // m_bit is valid this cycle

    // Boolean shares of compress_q(c, 1):
    //   m_p_o XOR m_m_o = 1 iff c ∈ [LO, HI)
    output logic              m_p_o,
    output logic              m_m_o,

    // Fresh randomness for X2X (one set per call).
    // For v1 the parent supplies these directly; v2 will move PRNG inside.
    input  logic [PARAM_WIDTH - 1 : 0] fresh_rnd_shares      [X2X_RND_SHARES - 1 : 0],
    input  logic [7:0]                 fresh_rnd_shares_8bit [X2X_RND_SHARES_8bit - 1 : 0]
);

    // ---------------------------------------------------------------------
    // Convention conversion: project (c_p - c_m = c) -> X2X (a + b = c)
    //
    //   X2X expects shared_data[1] to live in [-q, -1] (i.e. negative).
    //   For c_m > 0: b = -c_m, encoded as 13-bit two's complement
    //   = 2^13 - c_m. For c_m = 0: b = -q (also negative, ≡ 0 mod q).
    // ---------------------------------------------------------------------
    logic [PARAM_WIDTH - 1 : 0] a_in;      // = c_p, zero-extended
    logic [PARAM_WIDTH - 1 : 0] b_in;      // = -c_m as 13-bit two's complement

    assign a_in = {1'b0, c_p};
    assign b_in = (c_m == 12'd0) ? (13'h2000 - {1'b0, Q[11:0]})
                                 : (13'h2000 - {1'b0, c_m});

    // ---------------------------------------------------------------------
    // X2X instantiation: A2B in prime mode, single (non-dual), 2 shares
    // ---------------------------------------------------------------------
    logic [PARAM_WIDTH - 1 : 0] x2x_in  [1:0][N_SHARES - 1 : 0];
    logic [PARAM_WIDTH - 1 : 0] x2x_out [1:0][N_SHARES - 1 : 0];
    logic                       x2x_valid_data, x2x_ready_data;
    logic                       x2x_valid_result, x2x_ready_result;

    always_comb begin
        x2x_in[0][0] = a_in;
        x2x_in[0][1] = b_in;
        // dual-mode lane unused for single conversion
        x2x_in[1][0] = '0;
        x2x_in[1][1] = '0;
    end

    (* keep_hierarchy = "TRUE" *) MaskConversion_HALFCYCLE_STREAM #(
        .HALFCYCLE       (HALFCYCLE),
        .PARAM_WIDTH     (PARAM_WIDTH),
        .N_SHARES        (N_SHARES),
        .RND_SHARES      (X2X_RND_SHARES),
        .RND_SHARES_8bit (X2X_RND_SHARES_8bit)
    ) u_x2x (
        .clk                  (clk),
        .rst_n                (rst_n),
        .conversion_mode      (1'b0),               // 0 = A2B
        .data_type_mode       (1'b1),               // 1 = prime
        .dual_mode            (1'b0),               // single coefficient at a time
        .valid_data           (x2x_valid_data),
        .ready_data           (x2x_ready_data),
        .original_data        (x2x_in),
        .converted_data       (x2x_out),
        .valid_result         (x2x_valid_result),
        .ready_result         (x2x_ready_result),
        .fresh_rnd_shares     (fresh_rnd_shares),
        .fresh_rnd_shares_8bit(fresh_rnd_shares_8bit)
    );

    // Pass-through handshake (v1: no buffering). The parent provides
    // valid_data when (c_p, c_m) are stable. X2X has its own internal
    // pipeline so latency is opaque to the parent.
    assign x2x_valid_data    = valid_data;
    assign ready_data        = x2x_ready_data;
    assign x2x_ready_result  = ready_result;

    // ---------------------------------------------------------------------
    // Boolean threshold compare — v1 PLACEHOLDER
    //
    // *** SECURITY CAVEAT ***: this v1 computes the cleartext c via
    // combinational XOR of the Boolean shares, then does a public range
    // check. The cleartext is briefly on a combinational wire inside this
    // module. v2 replaces this block with a properly-masked compare using
    // X2X's SecAdd (carry-out extraction) and SecAnd (range conjunction).
    //
    // All cleartext wires are DONT_TOUCH to prevent synthesis from
    // spreading them across the design.
    // ---------------------------------------------------------------------
    (* DONT_TOUCH = "TRUE" *) wire [PARAM_WIDTH - 1 : 0] c_cleartext_v1 =
        x2x_out[0][0] ^ x2x_out[0][1];

    (* DONT_TOUCH = "TRUE" *) wire m_bit_cleartext_v1 =
        (c_cleartext_v1 >= LO) && (c_cleartext_v1 < HI);

    // For v1, output the cleartext bit on m_p_o and 0 on m_m_o. v2 will
    // make m_p_o, m_m_o be true Boolean shares with fresh randomness.
    assign m_p_o = m_bit_cleartext_v1;
    assign m_m_o = 1'b0;
    assign valid_result = x2x_valid_result;

endmodule
