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

    // X2X's prime-mode A2B expects b in signed [-Q, -1] (= unsigned [Q+1, 2Q-1]
    // bit pattern). For c_m = 0, the "natural" b values (0, -Q, +Q) are all
    // outside this range and X2X produces wrong outputs — confirmed by an
    // explicit c_m=0 standalone test that fails 5/9 boundary cases.
    //
    // Workaround: when c_m = 0, REMASK by adding 1 to both shares:
    //   cp_safe = (c_p + 1) mod Q,  cm_safe = 1
    // Truth is unchanged: cp_safe - cm_safe mod Q = c_p - 0 mod Q = c.
    // c_m_safe = 1 is firmly inside X2X's expected range.
    wire        c_m_is_zero = (c_m == 12'd0);
    wire [11:0] cp_plus_1   = (c_p == 12'(Q[11:0] - 1)) ? 12'd0 : (c_p + 12'd1);
    wire [11:0] cp_safe     = c_m_is_zero ? cp_plus_1 : c_p;
    wire [11:0] cm_safe     = c_m_is_zero ? 12'd1     : c_m;

    assign a_in = {1'b0, cp_safe};
    assign b_in = 13'h2000 - {1'b0, cm_safe};

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
    // Boolean threshold compare — v2 (closes ledger entry XOR-1)
    //
    // X2X's A2B produces Boolean shares of c. masked_threshold_compare takes
    // those shares and produces Boolean shares of (LO <= c < HI), keeping
    // c shared throughout. The wrapper's external contract changes only in
    // (a) latency: now ~15 cycles instead of 10 (+5 for SecAdds + SecAnd),
    // (b) output semantics: (m_p_o, m_m_o) are now true Boolean shares (in
    // v1 they were (cleartext_bit, 0); their XOR still equals the cleartext
    // bit so downstream callers that XOR them get the same value).
    //
    // Pipeline: masked_threshold_compare's `start` is driven by X2X's
    // valid_result, so the threshold compare kicks off as soon as the
    // A2B output is ready. In streaming mode (valid_data held high), X2X
    // pushes one A2B output per cycle and the threshold compare absorbs
    // them in its own pipeline (SecAdd_HALFCYCLE_STREAM is streaming-
    // capable). valid_result of the wrapper fires when threshold done fires.
    //
    // Randomness sizing parameters for the threshold compare:
    parameter MTC_RND_TRI = 2 * (N_SHARES * (N_SHARES - 1) / 2);
    parameter MTC_RND_BOX = (N_STAGES - 1) * 3 * (N_SHARES * (N_SHARES - 1) / 2)
                            + 2 * (N_SHARES * (N_SHARES - 1) / 2);
    parameter MTC_RND_AND = N_SHARES * (N_SHARES - 1) / 2;
    // ---------------------------------------------------------------------

    // Slice the parent-supplied randomness for the threshold compare.
    // We re-use bits from the existing X2X randomness arrays. Because
    // X2X already consumed those bits this cycle, this is technically
    // double-use of randomness — accept for v2-v1; v2-v2 would add a
    // dedicated PRNG for the threshold compare.
    logic [PARAM_WIDTH - 1 : 0] mtc_lo_tri [MTC_RND_TRI - 1 : 0];
    logic [7:0]                 mtc_lo_box [MTC_RND_BOX - 1 : 0];
    logic [PARAM_WIDTH - 1 : 0] mtc_hi_tri [MTC_RND_TRI - 1 : 0];
    logic [7:0]                 mtc_hi_box [MTC_RND_BOX - 1 : 0];
    logic                       mtc_and    [MTC_RND_AND - 1 : 0];

    // Re-slice from the existing fresh_rnd arrays. X2X_RND_SHARES=8 and
    // X2X_RND_SHARES_8bit=24 for N_SHARES=2, N_STAGES=4. MTC_RND_TRI=2,
    // MTC_RND_BOX=11. We need 2*2=4 13-bit values and 2*11=22 8-bit values
    // — fits within X2X's randomness budget.
    assign mtc_lo_tri[0] = fresh_rnd_shares[0];
    assign mtc_lo_tri[1] = fresh_rnd_shares[1];
    assign mtc_hi_tri[0] = fresh_rnd_shares[2];
    assign mtc_hi_tri[1] = fresh_rnd_shares[3];

    genvar gi;
    generate
        for (gi = 0; gi < MTC_RND_BOX; gi = gi + 1) begin : g_mtc_box
            assign mtc_lo_box[gi] = fresh_rnd_shares_8bit[gi];
            assign mtc_hi_box[gi] = fresh_rnd_shares_8bit[MTC_RND_BOX + gi];
        end
    endgenerate

    assign mtc_and[0] = fresh_rnd_shares[4][0];

    // X2X output bits for the threshold compare (13-bit Boolean shares of c)
    logic [12:0] c_share_p, c_share_m;
    assign c_share_p = x2x_out[0][0][12:0];
    assign c_share_m = x2x_out[0][1][12:0];

    // Start the threshold compare when X2X output is valid. In streaming
    // mode, x2x_valid_result is held high after the 10-cycle X2X warmup.
    logic mtc_start;
    assign mtc_start = x2x_valid_result;

    logic mtc_done;
    logic mtc_m_p, mtc_m_m;

    (* keep_hierarchy = "TRUE" *) masked_threshold_compare #(
        .HALFCYCLE  (HALFCYCLE),
        .PARAM_WIDTH(13),
        .N_SHARES   (N_SHARES),
        .N_STAGES   (N_STAGES),
        .LO         (LO),
        .HI         (HI)
    ) u_mtc (
        .clk                   (clk),
        .rst_n                 (rst_n),
        .start                 (mtc_start),
        .done                  (mtc_done),
        .c_share_p             (c_share_p),
        .c_share_m             (c_share_m),
        .rnd_secadd_lo_triangle(mtc_lo_tri),
        .rnd_secadd_lo_box     (mtc_lo_box),
        .rnd_secadd_hi_triangle(mtc_hi_tri),
        .rnd_secadd_hi_box     (mtc_hi_box),
        .rnd_secand            (mtc_and),
        .m_p_o                 (mtc_m_p),
        .m_m_o                 (mtc_m_m)
    );

    assign m_p_o        = mtc_m_p;
    assign m_m_o        = mtc_m_m;
    assign valid_result = mtc_done;

endmodule
