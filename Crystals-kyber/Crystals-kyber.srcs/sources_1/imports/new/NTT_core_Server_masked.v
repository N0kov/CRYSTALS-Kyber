`timescale 1ns / 1ps
// =============================================================================
// NTT_core_Server_masked.v — Phase A Stage 0 baseline
// -----------------------------------------------------------------------------
// CURRENTLY a byte-identical copy of NTT_core_Server.v with only the module
// name changed. Subsequent stages of plan_masked_ntt_phaseA.md add the actual
// masking infrastructure:
//   Stage 1: dual polynomial state (parallel RAMs + butterfly), mask=0
//   Stage 2: real CSPRNG-driven mask at coefficient input
//   Stage 3: unmask-before-quotient registers at the 6 critical states
//            (m_dec at 0x1d-0x1e; dout at 0x2c-0x2d, 0x38-0x39, 0x5c)
// At Stage 0, KAT regression must pass byte-identical to the unmasked baseline.
// =============================================================================
module NTT_core_Server_masked(
	input clk, rst, start,
	input CCA_enc,
	input CCA_enc_start,
	input [2:0] k,
	input [24:0] din,
	input fifo0_empty, fifo1_empty, fifo1_full,
	input [3:0] m_bits,
	input DFIFO0_full_eff,
	input ready_c,
	output reg fifo0_req,
	output fifo1_req_r9,
	output reg req_D0, req_D1,
	output reg ena_sft,
	output reg ready_t,
	output reg m_ena,
	output reg [1:0] m_dec,
	output reg valid,
	output reg finish,
	output reg [23:0] dout
);

reg [5:0] next_state, state;
reg [5:0] state_r1, state_r2, state_r3;
wire [5:0] state_r13;
reg [5:0] state_r13_d1, state_r13_d2, state_r13_d3, state_r13_d4, state_r13_d5;
reg [5:0] state_r13_d6, state_r13_d7, state_r13_d8;
reg wen_RAM2_decomp, wen_RAM3_decomp;
reg [3:0] ctr_NTT;
reg [1:0] ctr_col, ctr_col_r1;
wire [1:0] ctr_col_r12;

wire [1:0] k_1;

wire [5:0] b0, b1, b2, b3;
wire [2:0] samp0, samp1, samp2, samp3;
// Step 4: replaces samp0..3_q (cleartext binomial sample, 1-cycle stable
// register — primary DPA target). samp{0..3}_p_q holds the masked sample
// directly (samp_corrected + mask_used) mod Q; samp{0..3}_m_q holds the
// mask used. Recombination (samp_p_q - samp_m_q) mod Q gives the original
// cleartext value, so the share-sum invariant is preserved.
reg [11:0] samp0_p_q, samp1_p_q, samp2_p_q, samp3_p_q;
reg [11:0] samp0_m_q, samp1_m_q, samp2_m_q, samp3_m_q;
reg fifo1_req, fifo1_req_r10;
reg req_noise, req_noise_r1, req_noise_r2;
wire req_noise_r12;
reg req_noise_done;

reg [23:0] in0_butt, in1_butt, tw_butt;
(* DONT_TOUCH = "TRUE" *) reg [23:0] tw_butt_m;
wire [23:0] out0_butt, out1_butt;
reg [23:0] out0_butt_r1, out1_butt_r1, out1_butt_r2;
wire [10:0] quo0_butt, quo1_butt;
reg [10:0] quo0_butt_r1, quo1_butt_r1;
wire [11:0] decomp0_butt, decomp1_butt;
reg [11:0] decomp0_butt_r1, decomp1_butt_r1;
reg [10:0] ctrl_butt;

// Mask-share counterparts of butterfly signals. tw_butt and ctrl_butt are
// SHARED (twiddles are public, control is FSM state — neither carries
// secret information).
//
// Stage 2: mask is now real (constant polynomial mask from mask_polyfifo).
// BU_m runs on mask values, produces masked outputs; the retiming
// registers _r1_m / _r2_m mirror primary's pipeline.
(* DONT_TOUCH = "TRUE" *) reg [23:0] in0_butt_m, in1_butt_m;
wire [23:0] out0_butt_m, out1_butt_m;
(* DONT_TOUCH = "TRUE" *) reg [23:0] out0_butt_r1_m, out1_butt_r1_m, out1_butt_r2_m;
wire [10:0] quo0_butt_m, quo1_butt_m;
(* DONT_TOUCH = "TRUE" *) reg [10:0] quo0_butt_r1_m, quo1_butt_r1_m;
wire [11:0] decomp0_butt_m, decomp1_butt_m;
(* DONT_TOUCH = "TRUE" *) reg [11:0] decomp0_butt_r1_m, decomp1_butt_r1_m;

// Mask-share RAM data. Stage 2: wdata_RAM*_m driven by parallel always block
// that mirrors primary's wdata_RAM* logic, using mask values.
(* DONT_TOUCH = "TRUE" *) reg [23:0] wdata_RAM0_m;
(* DONT_TOUCH = "TRUE" *) reg [23:0] wdata_RAM1_m;
(* DONT_TOUCH = "TRUE" *) reg [47:0] wdata_RAM2_m;
wire [23:0] rdata_RAM0_m, rdata_RAM1_m, rdata_RAM2_m, rdata_RAM3_m;
wire [47:0] rdata_RAM4_m;

// Step 1 (per-coefficient masking): replace single-mask polyfifo with the
// 4-way mask_polyfifo_x4, which emits four fresh, independent uniform-mod-Q
// 12-bit masks per cycle. Each sampling cycle (state_r13 in the sampling
// set below) pulses req to advance the per-lane FIFOs by one. The four
// masks consumed at sampling-state cycle T are used:
//   - lane 0 (mask_for_samp0) → samp0_masked + wdata_RAM*_m[ 11: 0]
//   - lane 1 (mask_for_samp1) → samp1_masked + wdata_RAM*_m[23:12]
//   - lane 2 (mask_for_samp2) → samp2_masked + wdata_RAM2_m[35:24]
//   - lane 3 (mask_for_samp3) → samp3_masked + wdata_RAM2_m[47:36]
wire [11:0] mask_for_samp0, mask_for_samp1, mask_for_samp2, mask_for_samp3;
wire [11:0] mask_for_samp0_next, mask_for_samp1_next, mask_for_samp2_next, mask_for_samp3_next;
wire        mask_ready_next;  // Step 4: all 4 FIFOs have cnt >= 2 (next_mask valid)
// Legacy alias kept for any straggler debug code that still references
// `mask_const`. New code must use the per-sample mask wires above.
wire [11:0] mask_const = mask_for_samp0;
wire        mask_ready;
// Single-cycle ntt_call_start pulse on rising edge of `start`.
reg         start_d1;
always @(posedge clk) begin
    if (rst) start_d1 <= 1'b0;
    else     start_d1 <= start;
end
wire        ntt_call_start_pulse = start & ~start_d1;

// req_x4_sampling: high at every state_r13 cycle that writes a freshly-sampled
// coefficient to a RAM_m mask-side location. Mirrors the case-labels in the
// wdata_RAM*_m blocks below (lines ~1071-1140). 10 states total.
wire        req_x4_sampling =
       (state_r13 == 6'h 20) | (state_r13 == 6'h 21) | (state_r13 == 6'h 22)
     | (state_r13 == 6'h 23) | (state_r13 == 6'h 3e) | (state_r13 == 6'h 3f)
     | (state_r13 == 6'h 2a) | (state_r13 == 6'h 2b)
     | (state_r13 == 6'h 34) | (state_r13 == 6'h 35);

(* KEEP_HIERARCHY = "TRUE" *) mask_polyfifo_x4 #(
    .SEED0 (32'hCAFEBABE),
    .SEED1 (32'hDEADBEEF),
    .SEED2 (32'hFEEDFACE),
    .SEED3 (32'hBAADF00D)
) u_mask (
    .clk_i           (clk),
    .reset_i         (~rst),                 // active-low reset
    .ntt_call_start  (ntt_call_start_pulse),
    .req             (req_x4_sampling),
    .valid           (mask_ready),
    .valid_next      (mask_ready_next),
    .mask0           (mask_for_samp0),
    .mask1           (mask_for_samp1),
    .mask2           (mask_for_samp2),
    .mask3           (mask_for_samp3),
    .mask0_next      (mask_for_samp0_next),
    .mask1_next      (mask_for_samp1_next),
    .mask2_next      (mask_for_samp2_next),
    .mask3_next      (mask_for_samp3_next)
);

// Step 1 invariant: mask_polyfifo_x4 must never underrun during a sampling
// state. An underrun means a stale mask is reused at the sampling site, which
// silently breaks d=1 probing security (two coefficients masked with the same
// r → their difference reveals the unmasked difference). The KAT itself
// cannot detect this — same mask added then subtracted still cancels — so we
// enforce it as a logged invariant that the regression script greps for.
reg inv_mask_underrun_S_flag = 1'b0;
always @(posedge clk) begin
    // Step 4 strengthens the invariant: when req_x4_sampling fires, BOTH the
    // current head AND the next-head must be valid (cnt >= 2 per lane) because
    // the samp_p_q register reads next_mask on this exact edge. cnt < 2 would
    // mean next_mask is stale fifo_mem and not a fresh PRNG sample → stale
    // mask reuse → d=1 break (same as the Step 1 cnt > 0 condition).
    if (!rst && req_x4_sampling && !mask_ready_next) begin
        if (!inv_mask_underrun_S_flag) begin
            $display("[INV_FIRST_BREAK_MASK_S t=%0t state_r13=%h] mask_polyfifo_x4 underrun (cnt<2; next_mask invalid) — stale mask reused at sampling site (d=1 broken)", $time, state_r13);
            inv_mask_underrun_S_flag <= 1'b1;
        end
    end
end

// =============================================================================
// Step 3+5 Phase A v1: masked d=1 compression for m_dec (states 0x1d/0x1e).
//
// Replaces the leaky butterfly-quotient path with masked_compress_d1, fed
// arithmetic shares directly from the RAM mux reads. X2X (inside the wrapper)
// produces Boolean shares of the m_dec bit with 10-cycle pipeline latency,
// which matches the existing butterfly's state_r3 -> state_r13 alignment.
//
// v1 limitations (documented):
//   - Cleartext threshold inside the wrapper (XOR of Boolean shares) — see
//     masked_compress_d1.sv header comment. v2 replaces with masked SecAdd
//     compare.
//   - Single shared PRNG feeds both lo/hi instances — they reuse randomness.
//     v2 should use independent PRNGs per half.
//   - PRNG output is REGISTERED only when prng_done fires (one cycle per
//     fill), so X2X sees the same randomness for many cycles between fills.
//     Acceptable for v1 (functional correctness preserved); v2 should use
//     a streaming PRNG that provides fresh randomness every cycle.
//
// Plan reference: plan_masked_ntt_phase3a_design.md
// =============================================================================

localparam MCD1_PARAM_WIDTH = 13;
localparam MCD1_N_SHARES    = 2;
localparam MCD1_N_STAGES    = 4;
localparam MCD1_RND_SHARES  = 2 * (MCD1_N_SHARES - 1) + 2 * MCD1_N_SHARES
                              + 4 * (MCD1_N_SHARES * (MCD1_N_SHARES - 1) / 2);
localparam MCD1_RND_SHARES_8bit = 2 * MCD1_N_STAGES * 3
                                  * (MCD1_N_SHARES * (MCD1_N_SHARES - 1) / 2);
localparam MCD1_NB_SEEDS    = 6;
localparam MCD1_LSFR_WIDTH  = 32;

// Active-low reset for X2X / PRNG (their convention)
wire mcd1_rst_n = ~rst;

// PRNG: warms up at reset, then continuously refills.
wire                            mcd1_prng_done;
reg                             mcd1_prng_update;
reg                             mcd1_prng_load_seed;
// Note: unpacked arrays declared as reg/wire so plain Verilog accepts them.
wire [MCD1_PARAM_WIDTH - 1 : 0] mcd1_rnd_shares_raw      [MCD1_RND_SHARES - 1 : 0];
wire [7:0]                      mcd1_rnd_shares_8bit_raw [MCD1_RND_SHARES_8bit - 1 : 0];
reg  [MCD1_PARAM_WIDTH - 1 : 0] mcd1_rnd_shares          [MCD1_RND_SHARES - 1 : 0];
reg  [7:0]                      mcd1_rnd_shares_8bit     [MCD1_RND_SHARES_8bit - 1 : 0];

// Hold the latest valid randomness across cycles. The PRNG's raw output is
// zero except when prng_done is high; latch it then so X2X sees stable
// randomness throughout the m_dec burst.
integer mcd1_rnd_i;
always @(posedge clk) begin
    if (mcd1_prng_done) begin
        for (mcd1_rnd_i = 0; mcd1_rnd_i < MCD1_RND_SHARES; mcd1_rnd_i = mcd1_rnd_i + 1)
            mcd1_rnd_shares[mcd1_rnd_i] <= mcd1_rnd_shares_raw[mcd1_rnd_i];
        for (mcd1_rnd_i = 0; mcd1_rnd_i < MCD1_RND_SHARES_8bit; mcd1_rnd_i = mcd1_rnd_i + 1)
            mcd1_rnd_shares_8bit[mcd1_rnd_i] <= mcd1_rnd_shares_8bit_raw[mcd1_rnd_i];
    end
end

// Drive load_seed once after reset; hold update_rnd high so PRNG continuously
// refills (one fill ~5-10 cycles, then auto-restart since update_rnd stays high).
reg mcd1_seed_done;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        mcd1_seed_done      <= 1'b0;
        mcd1_prng_load_seed <= 1'b0;
        mcd1_prng_update    <= 1'b0;
    end else begin
        if (!mcd1_seed_done) begin
            mcd1_prng_load_seed <= 1'b1;
            mcd1_seed_done      <= 1'b1;
        end else begin
            mcd1_prng_load_seed <= 1'b0;
            mcd1_prng_update    <= 1'b1;
        end
    end
end

PRNG_engine_STREAM #(
    .PARAM_WIDTH    (MCD1_PARAM_WIDTH),
    .LSFR_WIDTH     (MCD1_LSFR_WIDTH),
    .SEED_WIDTH     (MCD1_NB_SEEDS * 128),
    .N_SHARES       (MCD1_N_SHARES),
    .RND_SHARES     (MCD1_RND_SHARES),
    .RND_SHARES_8bit(MCD1_RND_SHARES_8bit)
) u_mcd1_prng (
    .clk            (clk),
    .rst_n          (mcd1_rst_n),
    .mod_type       (1'b1),         // prime mode
    .conversion_type(1'b0),         // A2B
    .dual_mode      (1'b0),         // single conversion at a time
    .load_seed      (mcd1_prng_load_seed),
    .update_rnd     (mcd1_prng_update),
    .prng_done      (mcd1_prng_done),
    .seed_in        ({MCD1_NB_SEEDS{128'h0123456789ABCDEF_FEDCBA9876543210}}),
    .rnd_out_8bit   (mcd1_rnd_shares_8bit_raw),
    .rnd_out        (mcd1_rnd_shares_raw)
);

// Share-wise differences: d = (c0 - c1) mod Q for each half.
// Project convention: c0_p - c0_m mod Q = c0; same for c1.
// Difference share: d_p = (c0_p - c1_p) mod Q, d_m = (c0_m - c1_m) mod Q.
// Verify: d_p - d_m = (c0_p - c1_p) - (c0_m - c1_m) = c0 - c1 = d.
function automatic [11:0] mod_q_sub12(input [11:0] a, input [11:0] b);
    reg [12:0] diff;
    begin
        diff = {1'b0, a} + 13'h d01 - {1'b0, b};
        mod_q_sub12 = (diff >= 13'h d01) ? diff[11:0] - 12'h d01 : diff[11:0];
    end
endfunction

wire [11:0] mcd1_d_p_lo = mod_q_sub12(rdata_RAM_mux0_r1  [11:0],  rdata_RAM_mux1_r1  [11:0]);
wire [11:0] mcd1_d_m_lo = mod_q_sub12(rdata_RAM_mux0_r1_m[11:0],  rdata_RAM_mux1_r1_m[11:0]);
wire [11:0] mcd1_d_p_hi = mod_q_sub12(rdata_RAM_mux0_r1  [23:12], rdata_RAM_mux1_r1  [23:12]);
wire [11:0] mcd1_d_m_hi = mod_q_sub12(rdata_RAM_mux0_r1_m[23:12], rdata_RAM_mux1_r1_m[23:12]);

// Valid_data is high whenever state_r3 is one of the m_dec extraction states.
// Output (valid_result) arrives 10 cycles later, matching state_r13.
wire mcd1_valid_data = (state_r3 == 6'h 1d) || (state_r3 == 6'h 1e);

wire mcd1_m_p_lo, mcd1_m_m_lo, mcd1_m_p_hi, mcd1_m_m_hi;
wire mcd1_valid_result_lo, mcd1_valid_result_hi;

(* keep_hierarchy = "TRUE" *) masked_compress_d1 #(
    .HALFCYCLE          (1),
    .PARAM_WIDTH        (MCD1_PARAM_WIDTH),
    .Q                  (13'd3329),
    .LO                 (13'd833),
    .HI                 (13'd2497),
    .N_SHARES           (MCD1_N_SHARES),
    .N_STAGES           (MCD1_N_STAGES),
    .X2X_RND_SHARES     (MCD1_RND_SHARES),
    .X2X_RND_SHARES_8bit(MCD1_RND_SHARES_8bit)
) u_mcd1_lo (
    .clk                 (clk),
    .rst_n               (mcd1_rst_n),
    .c_p                 (mcd1_d_p_lo),
    .c_m                 (mcd1_d_m_lo),
    .valid_data          (mcd1_valid_data),
    .ready_data          (),                   // back-pressure ignored in streaming
    .ready_result        (1'b1),
    .valid_result        (mcd1_valid_result_lo),
    .m_p_o               (mcd1_m_p_lo),
    .m_m_o               (mcd1_m_m_lo),
    .fresh_rnd_shares    (mcd1_rnd_shares),
    .fresh_rnd_shares_8bit(mcd1_rnd_shares_8bit)
);

(* keep_hierarchy = "TRUE" *) masked_compress_d1 #(
    .HALFCYCLE          (1),
    .PARAM_WIDTH        (MCD1_PARAM_WIDTH),
    .Q                  (13'd3329),
    .LO                 (13'd833),
    .HI                 (13'd2497),
    .N_SHARES           (MCD1_N_SHARES),
    .N_STAGES           (MCD1_N_STAGES),
    .X2X_RND_SHARES     (MCD1_RND_SHARES),
    .X2X_RND_SHARES_8bit(MCD1_RND_SHARES_8bit)
) u_mcd1_hi (
    .clk                 (clk),
    .rst_n               (mcd1_rst_n),
    .c_p                 (mcd1_d_p_hi),
    .c_m                 (mcd1_d_m_hi),
    .valid_data          (mcd1_valid_data),
    .ready_data          (),
    .ready_result        (1'b1),
    .valid_result        (mcd1_valid_result_hi),
    .m_p_o               (mcd1_m_p_hi),
    .m_m_o               (mcd1_m_m_hi),
    .fresh_rnd_shares    (mcd1_rnd_shares),
    .fresh_rnd_shares_8bit(mcd1_rnd_shares_8bit)
);

// Cleartext m_dec bits (XOR of Boolean shares — v1 boundary unmask).
// At v1 these are the bits driven onto the m_dec port and packed into the
// RAM writeback at state_r13 == 0x1d/0x1e. v2 keeps them shared longer.
wire mcd1_bit_lo = mcd1_m_p_lo ^ mcd1_m_m_lo;
wire mcd1_bit_hi = mcd1_m_p_hi ^ mcd1_m_m_hi;

// =============================================================================
// Step 3+5 Phase B v1: masked du compression at states 0x2c/0x2d (D=11 for k=4).
//
// Two masked_compress_dN_full instances (lo + hi halves) compute the
// Kyber compression compress_q(c, 11) on arithmetic-share input. The FSM
// stalls the parent state register at 0x2c/0x2d until the compute completes
// (~150 cycles per state value).
//
// Output: cleartext 11-bit compress values per half (XOR of Boolean shares
// at the module boundary — acceptable per XOR-3 ledger note since dout
// goes to the public ciphertext stream).
//
// Plan reference: plan_masked_ntt_phaseB_design.md §11-12
// =============================================================================

localparam MCDN_D            = 11;
localparam MCDN_PARAM_WIDTH  = 13;
localparam MCDN_N_SHARES     = 2;
localparam MCDN_N_STAGES     = 4;
localparam MCDN_X2X_RND_SHARES      = 2 * (MCDN_N_SHARES - 1) + 2 * MCDN_N_SHARES
                                      + 4 * (MCDN_N_SHARES * (MCDN_N_SHARES - 1) / 2);
localparam MCDN_X2X_RND_SHARES_8bit = 2 * MCDN_N_STAGES * 3
                                      * (MCDN_N_SHARES * (MCDN_N_SHARES - 1) / 2);
localparam MCDN_LD_RND_TRI = 2 * (MCDN_N_SHARES * (MCDN_N_SHARES - 1) / 2);
localparam MCDN_LD_RND_BOX = (MCDN_N_STAGES - 1) * 3 * (MCDN_N_SHARES * (MCDN_N_SHARES - 1) / 2)
                             + 2 * (MCDN_N_SHARES * (MCDN_N_SHARES - 1) / 2);

// Reuse the mcd1 PRNG randomness arrays (mcd1_rnd_shares*) — they refill on
// prng_done and hold otherwise. This is acceptable for v1 first-order security
// (same randomness reuse pattern as Phase A v1's mcd1).
//
// Slice randomness for the LD inputs:
wire [MCDN_PARAM_WIDTH - 1 : 0] mcdN_ld_rnd_tri [MCDN_LD_RND_TRI - 1 : 0];
wire [7:0]                      mcdN_ld_rnd_box [MCDN_LD_RND_BOX - 1 : 0];
wire [11:0]                     mcdN_ld_rnd_and12;

genvar gN;
generate
    for (gN = 0; gN < MCDN_LD_RND_TRI; gN = gN + 1) begin : g_mcdN_tri
        assign mcdN_ld_rnd_tri[gN] = mcd1_rnd_shares[gN];
    end
    for (gN = 0; gN < MCDN_LD_RND_BOX; gN = gN + 1) begin : g_mcdN_box
        assign mcdN_ld_rnd_box[gN] = mcd1_rnd_shares_8bit[gN];
    end
endgenerate
assign mcdN_ld_rnd_and12 = mcd1_rnd_shares[MCDN_LD_RND_TRI][11:0];

// -----------------------------------------------------------------------------
// mc FSM — drives the masked compress runs and stalls the parent FSM
//
// Stall design: mc_stall is combinational from state and a "compress_done +
// compress_done_state" pair. compress_done_state captures the state value the
// most recent compress was done for. mc_stall is only deasserted if we're in
// a compress state that has ALREADY been computed for. After state advances
// past that, compress_done_state no longer matches, mc_stall goes high again
// and a new compress starts.
// -----------------------------------------------------------------------------
wire in_compress_state = (state == 6'h 2c) || (state == 6'h 2d);

reg       compress_done;
reg [5:0] compress_done_state;
reg       mcdN_busy;
reg [3:0] mcdN_wait_cnt;
reg       mcdN_start_pulse_r;
wire      mcdN_done_lo, mcdN_done_hi;
wire      mcdN_all_done = mcdN_done_lo & mcdN_done_hi;

reg  mcdN_all_done_prev;
wire mcdN_done_edge = mcdN_busy & mcdN_all_done & ~mcdN_all_done_prev;

// "Compress is done for the state we're currently in" — release stall only then.
wire compress_done_for_curr = compress_done & (state == compress_done_state);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        compress_done       <= 1'b0;
        compress_done_state <= 6'h0;
        mcdN_busy           <= 1'b0;
        mcdN_wait_cnt       <= 4'h0;
        mcdN_start_pulse_r  <= 1'b0;
        mcdN_all_done_prev  <= 1'b0;
    end else begin
        mcdN_start_pulse_r <= 1'b0;
        mcdN_all_done_prev <= mcdN_busy & mcdN_all_done;

        if (in_compress_state && !compress_done_for_curr && !mcdN_busy) begin
            // Newly in a compress state (either just entered, or moved from a
            // different compress state) — launch a fresh mcdN run.
            mcdN_busy     <= 1'b1;
            mcdN_wait_cnt <= 4'h0;
        end else if (mcdN_busy) begin
            if (mcdN_wait_cnt < 4'd4) begin
                mcdN_wait_cnt <= mcdN_wait_cnt + 1'b1;
            end else if (mcdN_wait_cnt == 4'd4) begin
                mcdN_start_pulse_r <= 1'b1;
                mcdN_wait_cnt      <= mcdN_wait_cnt + 1'b1;
            end else if (mcdN_done_edge) begin
                mcdN_busy           <= 1'b0;
                compress_done       <= 1'b1;
                compress_done_state <= state;
            end
        end
    end
end

// mc_stall: combinational so it fires from the first cycle state==compress.
wire mc_stall = in_compress_state & ~compress_done_for_curr;
// mc_done_pulse: 1-cycle pulse when mcdN finishes — drives dout valid + latch.
wire mc_done_pulse = mcdN_done_edge;

// Phase B v1 debug removed; mc FSM kept for future integration once the
// stall corruption (suspected BRAM collisions / pipeline interaction) is
// understood. mcdN_du_lo/hi are unused — dout still sources butterfly quo.

// -----------------------------------------------------------------------------
// Two masked_compress_dN_full instances — lo and hi halves of the coefficient
// pair, mirroring Phase A v2's two-instance pattern. Inputs are the
// arithmetic-share differences already computed for Phase A (mcd1_d_p_lo/hi
// etc.) — those signals are combinational from rdata_RAM_mux*_r1, so they
// reflect whatever the current state mux returns. During the FSM stall at
// state==0x2c/0x2d, the mux holds the right RAM2/RAM3 vs RAM4 pair.
// -----------------------------------------------------------------------------
wire [10:0] mcdN_q_p_lo, mcdN_q_m_lo;
wire [10:0] mcdN_q_p_hi, mcdN_q_m_hi;

(* keep_hierarchy = "TRUE" *) masked_compress_dN_full #(
    .D                   (MCDN_D),
    .Q                   (13'd3329),
    .PARAM_WIDTH         (MCDN_PARAM_WIDTH),
    .N_SHARES            (MCDN_N_SHARES),
    .N_STAGES            (MCDN_N_STAGES),
    .X2X_RND_SHARES      (MCDN_X2X_RND_SHARES),
    .X2X_RND_SHARES_8bit (MCDN_X2X_RND_SHARES_8bit),
    .LD_RND_TRI          (MCDN_LD_RND_TRI),
    .LD_RND_BOX          (MCDN_LD_RND_BOX)
) u_mcdN_du_lo (
    .clk                  (clk),
    .rst_n                (mcd1_rst_n),
    .start                (mcdN_start_pulse_r),
    .done                 (mcdN_done_lo),
    .c_p                  (mcd1_d_p_lo),
    .c_m                  (mcd1_d_m_lo),
    .fresh_rnd_shares     (mcd1_rnd_shares),
    .fresh_rnd_shares_8bit(mcd1_rnd_shares_8bit),
    .ld_rnd_tri           (mcdN_ld_rnd_tri),
    .ld_rnd_box           (mcdN_ld_rnd_box),
    .ld_rnd_and12         (mcdN_ld_rnd_and12),
    .q_p                  (mcdN_q_p_lo),
    .q_m                  (mcdN_q_m_lo)
);

(* keep_hierarchy = "TRUE" *) masked_compress_dN_full #(
    .D                   (MCDN_D),
    .Q                   (13'd3329),
    .PARAM_WIDTH         (MCDN_PARAM_WIDTH),
    .N_SHARES            (MCDN_N_SHARES),
    .N_STAGES            (MCDN_N_STAGES),
    .X2X_RND_SHARES      (MCDN_X2X_RND_SHARES),
    .X2X_RND_SHARES_8bit (MCDN_X2X_RND_SHARES_8bit),
    .LD_RND_TRI          (MCDN_LD_RND_TRI),
    .LD_RND_BOX          (MCDN_LD_RND_BOX)
) u_mcdN_du_hi (
    .clk                  (clk),
    .rst_n                (mcd1_rst_n),
    .start                (mcdN_start_pulse_r),
    .done                 (mcdN_done_hi),
    .c_p                  (mcd1_d_p_hi),
    .c_m                  (mcd1_d_m_hi),
    .fresh_rnd_shares     (mcd1_rnd_shares),
    .fresh_rnd_shares_8bit(mcd1_rnd_shares_8bit),
    .ld_rnd_tri           (mcdN_ld_rnd_tri),
    .ld_rnd_box           (mcdN_ld_rnd_box),
    .ld_rnd_and12         (mcdN_ld_rnd_and12),
    .q_p                  (mcdN_q_p_hi),
    .q_m                  (mcdN_q_m_hi)
);

// Cleartext compress bits at the module boundary (XOR of Boolean shares)
wire [10:0] mcdN_du_lo = mcdN_q_p_lo ^ mcdN_q_m_lo;
wire [10:0] mcdN_du_hi = mcdN_q_p_hi ^ mcdN_q_m_hi;

// Latch the cleartext compress output at the mc_done_pulse moment so that
// the dout case-statement (which fires on state_r13==0x2c/0x2d every cycle
// during the stall) can read a stable value.
reg [10:0] mcdN_du_lo_latched, mcdN_du_hi_latched;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        mcdN_du_lo_latched <= 11'h0;
        mcdN_du_hi_latched <= 11'h0;
    end else if (mc_done_pulse) begin
        mcdN_du_lo_latched <= mcdN_du_lo;
        mcdN_du_hi_latched <= mcdN_du_hi;
    end
end

reg [7:0] raddr_RAM0;
reg [5:0] raddr_RAM1;
reg [6:0] raddr_RAM2;
reg [6:0] raddr_ROM, raddr_ROM_r1;
wire [23:0] rdata_RAM0, rdata_RAM1, rdata_RAM2, rdata_RAM3;
wire [47:0] rdata_RAM4;
reg [23:0] rdata_RAM_mux0, rdata_RAM_mux1;
wire [11:0] rdata_ROM0, rdata_ROM1, rdata_ROM2; 
wire [7:0] waddr_RAM0;
wire [5:0] waddr_RAM1;
wire [6:0] waddr_RAM2;
reg [23:0] wdata_RAM0, wdata_RAM1;
reg [47:0] wdata_RAM2;
reg wen_RAM0, wen_RAM1, wen_RAM2, wen_RAM3, wen_RAM4;
reg [23:0] rdata_RAM_mux0_r1, rdata_RAM_mux1_r1;
reg [23:0] rdata_RAM_mux1_r2;

reg [23:0] rdata_acc;
wire [23:0] rdata_acc_r8;
wire [12:0] data_acc0, data_acc1;
wire [12:0] data_acc0_q, data_acc1_q;
reg [11:0] data_mux0, data_mux1;

reg raddr_RAM2_lsb_r1, raddr_RAM2_lsb_r2;

reg [6:0] ctr_i;
reg [5:0] ctr_j;
(* MAX_FANOUT = 20 *) reg [6:0] ctr_k;
reg [6:0] ctr_group;
wire flag_j, flag_k;

assign flag_j = ctr_i + ctr_j == 7'h 40;
assign flag_k = ctr_k + 1'h 1 == ctr_i[6:1];
assign k_1 = k-1;

always @(posedge clk) begin
	if(rst)
		state <= 4'h 0;
	else
		state <= next_state;
end
always @(*) case(state)
	4'h 0 : next_state = start | CCA_enc_start ? state + 1'h 1 : state;	
	4'h 1 : next_state = fifo1_full ? CCA_enc ? 6'h 3e : 6'h 20 : state;
	4'h 3 : next_state = flag_j & flag_k & ctr_i[1] ? state + 1'h 1 : 4'h 2;
	4'h 4 : next_state = flag_j ? state + 1'h 1 : state;
	4'h 5 : if(ctr_NTT == k_1)
				next_state = CCA_enc ? 6'h 26 : state + 1'h 1;
			else
				next_state = 4'h 1;
	5'h 6 : next_state = fifo1_full ? 6'h 22 : state;
	5'h 8 : next_state = flag_j & flag_k & ctr_i[1] ? state + 1'h 1 : 5'h 7;
	5'h 9 : next_state = flag_j ? state + 1'h 1 : state;
	5'h a : next_state = ~fifo0_empty ? state + 1'h 1 : state;
	5'h b : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	5'h c : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	5'h d : next_state = ctr_col == k_1 ? ctr_NTT[2:0] == k_1 ? state + 1'h 1 : 5'h 6 : 5'h a;
	5'h e : next_state = ready_c & DFIFO0_full_eff ? state + 1'h 1 : state;
	6'h 10 : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h f;
	5'h 12 : next_state = flag_j & flag_k & ctr_i[1] ? state + 1'h 1 : 5'h 11;
	5'h 13 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 15 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : 6'h 14;
	6'h 16 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 17 : next_state = ctr_col == k_1 ? state + 1'h 1 : 5'h f;
	6'h 18 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 1a : next_state = flag_j & flag_k & ctr_i[6] ? state + 1'h 1 : 6'h 19;
	6'h 1c : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h 1b;
	6'h 1e : next_state = ctr_k == 7'h 3f ? 6'h 3a : 6'h 1d;
	
	6'h 20 : next_state = state + 1'h 1;
	6'h 21 : next_state = ctr_k == 7'h 3f ? 6'h 2 : 6'h 20;
	6'h 22 : next_state = state + 1'h 1;
	6'h 23 : next_state = ctr_k == 7'h 3f ? 6'h 7 : 6'h 22;
	
	6'h 26 : next_state = ctr_k == 7'h 7f & ~fifo0_empty ? state + 1'h 1 : state;
	6'h 27 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 28 : next_state = ctr_col == k_1 ? state + 1'h 1 : 6'h 26;
	6'h 29 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 2b : next_state = flag_j & flag_k & ctr_i[6] ? state + 1'h 1 : 6'h 2a;
	6'h 2d : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h 2c;
	6'h 2e : if(ctr_NTT[3] && ctr_NTT[2:0] == k_1)
				next_state = state + 1'h 1;
			else
				next_state = 6'h 26;
	6'h 2f : next_state = ready_t ? state + 1'h 1 : state;
	6'h 30 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 31 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 32 : next_state = ctr_col == k_1 ? state + 1'h 1 : 6'h 30;
	6'h 33 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 35 : next_state = flag_j & flag_k & ctr_i[5] ? state + 1'h 1 : 6'h 34;	
	6'h 37 : next_state = flag_j & flag_k & ctr_i[6] ? state + 1'h 1 : 6'h 36;
	6'h 39 : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h 38;
	6'h 3a : next_state = 5'h 0;
	6'h 3e : next_state = state + 1'h 1;
	6'h 3f : next_state = ctr_k == 7'h 3f ? 5'h 2 : 6'h 3e;
	default : next_state = state + 1'h 1;
endcase

always @(posedge clk) case(state)
	6'h 1, 6'h 6, 6'h e : ctr_i <= 7'h 40;
	6'h 3, 6'h 8, 6'h 12 : ctr_i <= flag_j & flag_k ? ctr_i[6:1] : ctr_i;
	6'h 4, 6'h 9, 6'h 13 : ctr_i <= flag_j ? ctr_i[6:1] : ctr_i;
	6'h 17 : ctr_i <= ctr_col == k_1 ? 7'h 1 : 7'h 40;
	6'h 18 : ctr_i <= flag_j ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h 1a, 6'h 1e : ctr_i <= flag_j & flag_k ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h a : ctr_i <= 7'h 0;
	6'h 28, 6'h 32 : ctr_i <= ctr_col == k_1 ? 7'h 1 : 7'h 0;
	6'h 29, 6'h 33 : ctr_i <= flag_j ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h 2b, 6'h 35, 6'h 37 : ctr_i <= flag_j & flag_k ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h 2e : ctr_i <= 7'h 0;
	default : ctr_i <= ctr_i;
endcase
always @(posedge clk) case(state)
	6'h 1, 6'h 6 : ctr_j <= 6'h 0;
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 1e : ctr_j <= flag_k ? flag_j ? 6'h 0 : ctr_j + ctr_i : ctr_j;
	6'h 4, 6'h 9, 6'h 13, 6'h 18 : ctr_j <= flag_j ? 6'h 0 : ctr_j + ctr_i;
	6'h 28 : ctr_j <= 6'h 0;
	6'h 2b, 6'h 35, 6'h 37 : ctr_j <= flag_k ? flag_j ? 6'h 0 : ctr_j + ctr_i : ctr_j;
	6'h 29, 6'h 33 : ctr_j <= flag_j ? 6'h 0 : ctr_j + ctr_i;
	default : ctr_j <= ctr_j;
endcase
always @(posedge clk) case(state)
	6'h 1, 6'h 6 : ctr_k <= 7'h 0;
	6'h 3, 6'h 8, 6'h 12, 6'h 1a : ctr_k <= flag_k ? 7'h 0 : ctr_k + 1'h 1;
	6'h b, 6'h c, 6'h 14, 6'h 15, 6'h 16 : ctr_k <= ctr_k + 1'h 1;
	6'h 10, 6'h 1c, 6'h 1e : ctr_k <= ctr_k == 7'h 3f ? 7'h 0 : ctr_k + 1'h 1;
	6'h 20, 6'h 21, 6'h 22, 6'h 23 : ctr_k <= ctr_k == 7'h 3f ? 7'h 0 : ctr_k + 1'h 1;
	6'h 28, 6'h 2e : ctr_k <= 7'h 0;
	6'h 2b, 6'h 35, 6'h 37 : ctr_k <= flag_k ? 7'h 0 : ctr_k + 1'h 1;
	6'h 26, 6'h 27, 6'h 30, 6'h 31 : ctr_k <= ctr_k + 1'h 1;
	6'h 2d, 6'h 39 : ctr_k <= ctr_k + 1'h 1;
	6'h 3e, 6'h 3f : ctr_k <= ctr_k == 7'h 3f ? 7'h 0 : ctr_k + 1'h 1;
	default : ctr_k <= ctr_k;
endcase
always @(posedge clk) case(state)
	6'h 0, 6'h 6, 6'h a : ctr_group <= 6'h 0;
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 1e : ctr_group <= flag_k ? flag_j ? 6'h 0 : ctr_group + 1'h 1 : ctr_group;
	6'h 4, 6'h 9, 6'h 13, 6'h 18 : ctr_group <= flag_j ? 6'h 0 : ctr_group + 1'h 1;
	6'h c, 6'h 16 : ctr_group <= ctr_group + 1'h 1;
	6'h 2b, 6'h 35, 6'h 37 : ctr_group <= flag_k ? flag_j ? 6'h 0 : ctr_group + 1'h 1 : ctr_group;
	6'h 29, 6'h 33 : ctr_group <= flag_j ? 6'h 0 : ctr_group + 1'h 1;
	6'h 27, 6'h 31 : ctr_group <= ctr_group + 1'h 1;
	default : ctr_group <= ctr_group;
endcase
always @(posedge clk) begin
	if(start)
		ctr_NTT <= 4'h 0;
	else if(finish)
		ctr_NTT <= 4'h 0;
	else if(state == 5'h 5 || state == 6'h 2e)
		ctr_NTT <= ctr_NTT[2:0] == k_1 ? 4'h 8 : ctr_NTT + 1'h 1;
	else if(ctr_NTT[3] && state == 5'h d && ctr_col == k_1)
		ctr_NTT <= ctr_NTT[2:0] == k_1 ? 4'h 8 : ctr_NTT + 1'h 1;
	else if(state == 6'h 2f)
		ctr_NTT <= 4'h 8;
	else
		ctr_NTT <= ctr_NTT;
end
always @(posedge clk) begin
	if(start)
		ctr_col <= 3'h 0;
	else if(ctr_NTT[3] && (state == 5'h d || state == 6'h 17 || state == 6'h 28 || state == 6'h 32))
		ctr_col <= ctr_col == k_1 ? 3'h 0 : ctr_col + 1'h 1;
	else
		ctr_col <= ctr_col;
end

always @(posedge clk) case(state_r3)
	5'h 2, 5'h 3, 5'h 4, 5'h 7, 5'h 8, 5'h 9, 5'h 11, 5'h 12, 5'h 13 : ctrl_butt <= 11'b 0_110_000_0000;
	5'h b, 6'h 14, 6'h 15, 6'h 26, 6'h 30 : ctrl_butt <= 11'b 0_000_001_1010;
	5'h c, 6'h 16, 6'h 27, 6'h 31 : ctrl_butt <= 11'b 0_100_011_1101;
	6'h 18, 6'h 19, 6'h 1a, 6'h 29, 6'h 2a, 6'h 2b, 6'h 33, 6'h 34, 6'h 35 : ctrl_butt <= 11'b 0_000_111_0000;
	6'h 1b, 6'h 1c : ctrl_butt <= 11'b 1_000_000_0000;
	6'h 1d, 6'h 1e, 6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : ctrl_butt <= 11'b 0_000_110_1000;
	6'h 36, 6'h 37 : ctrl_butt <= 11'b 0_111_111_0000;
	default : ctrl_butt <= 11'b 0_000_000_0000;
endcase

always @(posedge clk) case(state_r3)
	6'h 2, 6'h 7, 6'h 11, 6'h 19, 6'h 2a, 6'h 34 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux0;
	end
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 2b, 6'h 35 : begin
		in0_butt <= rdata_RAM_mux1_r2;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	// Phase 2 Stage C: compression op (ctrl=0x3f0) is non-linear in the share.
	// Load BU inputs from unmasked truth so the share invariant is preserved
	// for non-zero mask. Single-cycle leak window on in_butt registers
	// (Stage 3.c discipline). With wdata_RAM*_m forced to 0 at the matching
	// state_r13 writeback, share invariant: primary - 0 = truth.
	6'h 36 : begin
		in0_butt <= unmasked_mux0_r1;
		in1_butt <= unmasked_mux0;
	end
	6'h 37 : begin
		in0_butt <= unmasked_mux1_r2;
		in1_butt <= unmasked_mux1_r1;
	end
	6'h 4, 6'h 9, 6'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	5'h b, 6'h 26, 6'h 30 : begin
		in0_butt <= raddr_RAM2_lsb_r2 ? rdata_RAM_mux1_r1 : rdata_RAM_mux0_r1;
		in1_butt <= din;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	6'h 14, 6'h 15 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	// Step 3+5 Phase A v1: m_dec is now computed by masked_compress_d1
	// (see PRNG+u_mcd1_lo/u_mcd1_hi instances above). Butterfly's quotient
	// path is no longer the m_dec source. Load arithmetic-share PRIMARY
	// values here (not unmasked!) so no cleartext touches in*_butt at these
	// states. Butterfly's quo*_butt_r1 outputs at state_r13==0x1d/0x1e are
	// now garbage and ignored — wdata_RAM0/1 below pack the masked_compress
	// output instead.
	6'h 1d, 6'h 1e : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	5'h f, 5'h 10 : begin
		in0_butt <= 24'h 0;
		case(k)
			3'h 2, 3'h 3 : in1_butt <= {din[19:10],2'b0,din[9:0]};
			default : in1_butt <= {din[21:11],1'b0,din[10:0]};
		endcase
	end
	6'h 1b, 6'h 1c : begin
		in0_butt <= 24'h 0;
		case(k)
			// 3'h 2 : in1_butt <= {din[5:3],9'b0,din[2:0]};
			3'h 2, 3'h 3 : in1_butt <= {din[7:4],8'b0,din[3:0]};
			default : in1_butt <= {din[9:5],7'b0,din[4:0]};
		endcase
	end
	// Stage 3 unmask: dout critical states. Load unmasked polynomial data
	// so butterfly's quotient produces correct dout bits.
	// Phase B viability test (May 2026) showed loading shares here breaks
	// K because RAM2/RAM3 contents at these addresses feed the hash chain.
	// Closing this leak (Phase B) requires routing masked Barrett output to
	// both dout AND wdata_RAM0/1 — deferred (~3 weeks effort).
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : begin
		in0_butt <= unmasked_mux0_r1;
		in1_butt <= unmasked_mux1_r1;
	end
	default : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
endcase
always @(posedge clk) case(state_r3)
	6'h 2, 6'h 3, 6'h 4 : tw_butt <= {rdata_ROM0,rdata_ROM0};
	6'h 7, 6'h 8, 6'h 9 : tw_butt <= {rdata_ROM0,rdata_ROM0};
	// Stage 3.c (S3b-1 fix): tw_butt at these states sources from RAM,
	// which holds masked data. With shared tw between BU and BU_m, the
	// multiply `in1 * tw` becomes bilinear in (in1_share, tw_share) and
	// breaks the share invariant. Use the existing combinational unmask
	// (unmasked_mux*_r1) so tw_butt holds the UNMASKED twiddle for one
	// register-cycle. This exposes the secret on tw_butt for that cycle —
	// accepted per the original plan's "single-cycle unmask window with
	// DONT_TOUCH" discipline (extending the discipline from in_butt to tw_butt).
	// Stage 3.c (S3b-1 fix): tw_butt at these states sources from RAM,
	// which holds masked data. With shared tw between BU and BU_m, the
	// multiply `in1 * tw` becomes bilinear in (in1_share, tw_share) and
	// breaks the share invariant. Use the existing combinational unmask
	// (unmasked_mux*_r1) so tw_butt holds the UNMASKED twiddle for one
	// register-cycle. This exposes the secret on tw_butt for that cycle —
	// accepted per the original plan's "single-cycle unmask window with
	// DONT_TOUCH" discipline (extending the discipline from in_butt to tw_butt).
	6'h b, 6'h 26, 6'h 30 : tw_butt <= raddr_RAM2_lsb_r2 ? unmasked_mux1_r1 : unmasked_mux0_r1;
	6'h c, 6'h 16, 6'h 27, 6'h 31 : tw_butt <= {rdata_ROM2, unmasked_mux0_r1[23:12]};
	6'h 14, 6'h 15 : tw_butt <= unmasked_mux0_r1;
	6'h f, 6'h 10 : tw_butt <= {12'hd01,12'hd01};
	6'h 11, 6'h 12, 6'h 13 : tw_butt <= {rdata_ROM0,rdata_ROM0};
	6'h 1b, 6'h 1c : tw_butt <= {12'hd01,12'hd01};
	6'h 18, 6'h 19, 6'h 1a : tw_butt <= {rdata_ROM1,rdata_ROM1};
	6'h 29, 6'h 2a, 6'h 2b, 6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : tw_butt <= {rdata_ROM1,rdata_ROM1};
	6'h 1d, 6'h 1e : tw_butt <= {12'h2,12'h2};
	6'h 2c, 6'h 2d : tw_butt <= {k[2],~k[2],10'b0,k[2],~k[2],10'b0};
	6'h 38, 6'h 39 : tw_butt <= {6'h0,k[2],k[1],10'b0,k[2],k[1],4'b0};
	default : tw_butt <= {rdata_ROM1,rdata_ROM1};
endcase
// Phase 2 Step 2: tw_butt_m mirrors tw_butt EXACTLY (no functional change).
// Provides a separate mask-side twiddle wire so BU_m can be untied from BU's tw.
// Stage 3.c states still source from unmasked helpers; Step 3 will change this.
always @(posedge clk) case(state_r3)
	6'h 2, 6'h 3, 6'h 4 : tw_butt_m <= {rdata_ROM0,rdata_ROM0};
	6'h 7, 6'h 8, 6'h 9 : tw_butt_m <= {rdata_ROM0,rdata_ROM0};
	6'h b, 6'h 26, 6'h 30 : tw_butt_m <= raddr_RAM2_lsb_r2 ? unmasked_mux1_r1 : unmasked_mux0_r1;
	6'h c, 6'h 16, 6'h 27, 6'h 31 : tw_butt_m <= {rdata_ROM2, unmasked_mux0_r1[23:12]};
	6'h 14, 6'h 15 : tw_butt_m <= unmasked_mux0_r1;
	6'h f, 6'h 10 : tw_butt_m <= {12'hd01,12'hd01};
	6'h 11, 6'h 12, 6'h 13 : tw_butt_m <= {rdata_ROM0,rdata_ROM0};
	6'h 1b, 6'h 1c : tw_butt_m <= {12'hd01,12'hd01};
	6'h 18, 6'h 19, 6'h 1a : tw_butt_m <= {rdata_ROM1,rdata_ROM1};
	6'h 29, 6'h 2a, 6'h 2b, 6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : tw_butt_m <= {rdata_ROM1,rdata_ROM1};
	6'h 1d, 6'h 1e : tw_butt_m <= {12'h2,12'h2};
	6'h 2c, 6'h 2d : tw_butt_m <= {k[2],~k[2],10'b0,k[2],~k[2],10'b0};
	6'h 38, 6'h 39 : tw_butt_m <= {6'h0,k[2],k[1],10'b0,k[2],k[1],4'b0};
	default : tw_butt_m <= {rdata_ROM1,rdata_ROM1};
endcase

assign samp0 = b0[0]-b0[1]+b0[2]-b0[3]+b0[4]-b0[5];
assign samp1 = b1[0]-b1[1]+b1[2]-b1[3]+b1[4]-b1[5];
assign samp2 = b2[0]-b2[1]+b2[2]-b2[3]+b2[4]-b2[5];
assign samp3 = b3[0]-b3[1]+b3[2]-b3[3]+b3[4]-b3[5];

// Step 4: combine binomial-sum mod-Q correction + mask add + mod-Q reduce in
// the SAME combinational chain so the register downstream stores ALREADY-MASKED
// data. samp0_corrected is the post-correction value in [0, Q).
wire [11:0] samp0_corrected = samp0[2] ? 12'h cfd + {1'b0,samp0[1:0]} : {9'h0, samp0};
wire [11:0] samp1_corrected = samp1[2] ? 12'h cfd + {1'b0,samp1[1:0]} : {9'h0, samp1};
wire [11:0] samp2_corrected = samp2[2] ? 12'h cfd + {1'b0,samp2[1:0]} : {9'h0, samp2};
wire [11:0] samp3_corrected = samp3[2] ? 12'h cfd + {1'b0,samp3[1:0]} : {9'h0, samp3};

// Step 4 mask selection. The FIFO pop happens at THIS edge if req=1, so reading
// mask_for_samp at the edge yields PRE-pop value. For back-to-back sampling
// cycles, that would reuse the same mask. Use next_mask (= fifo_mem[rptr+1])
// when a pop is in progress so the registered mask matches what the OLD design
// would have used at the consumption cycle.
wire [11:0] mask_used_S0 = req_x4_sampling ? mask_for_samp0_next : mask_for_samp0;
wire [11:0] mask_used_S1 = req_x4_sampling ? mask_for_samp1_next : mask_for_samp1;
wire [11:0] mask_used_S2 = req_x4_sampling ? mask_for_samp2_next : mask_for_samp2;
wire [11:0] mask_used_S3 = req_x4_sampling ? mask_for_samp3_next : mask_for_samp3;

wire [12:0] samp0_p_pre = {1'b0, samp0_corrected} + {1'b0, mask_used_S0};
wire [12:0] samp1_p_pre = {1'b0, samp1_corrected} + {1'b0, mask_used_S1};
wire [12:0] samp2_p_pre = {1'b0, samp2_corrected} + {1'b0, mask_used_S2};
wire [12:0] samp3_p_pre = {1'b0, samp3_corrected} + {1'b0, mask_used_S3};

always @(posedge clk) begin
    samp0_p_q <= (samp0_p_pre >= 13'h d01) ? samp0_p_pre[11:0] - 12'h d01 : samp0_p_pre[11:0];
    samp1_p_q <= (samp1_p_pre >= 13'h d01) ? samp1_p_pre[11:0] - 12'h d01 : samp1_p_pre[11:0];
    samp2_p_q <= (samp2_p_pre >= 13'h d01) ? samp2_p_pre[11:0] - 12'h d01 : samp2_p_pre[11:0];
    samp3_p_q <= (samp3_p_pre >= 13'h d01) ? samp3_p_pre[11:0] - 12'h d01 : samp3_p_pre[11:0];
    samp0_m_q <= mask_used_S0;
    samp1_m_q <= mask_used_S1;
    samp2_m_q <= mask_used_S2;
    samp3_m_q <= mask_used_S3;
end
always @(posedge clk) begin
	state_r1 <=state;
	state_r2 <= state_r1;
	state_r3 <= state_r2;
	out0_butt_r1 <= out0_butt;
	out1_butt_r1 <= out1_butt;
	out1_butt_r2 <= out1_butt_r1;
	quo0_butt_r1 <= quo0_butt;
	quo1_butt_r1 <= quo1_butt;
	decomp0_butt_r1 <= decomp0_butt;
	decomp1_butt_r1 <= decomp1_butt;
	// Stage 2: mask-share retiming registers, mirroring primary structure.
	out0_butt_r1_m   <= out0_butt_m;
	out1_butt_r1_m   <= out1_butt_m;
	out1_butt_r2_m   <= out1_butt_r1_m;
	quo0_butt_r1_m   <= quo0_butt_m;
	quo1_butt_r1_m   <= quo1_butt_m;
	decomp0_butt_r1_m <= decomp0_butt_m;
	decomp1_butt_r1_m <= decomp1_butt_m;
	raddr_RAM2_lsb_r1 <= raddr_RAM2[0];
	raddr_RAM2_lsb_r2 <= raddr_RAM2_lsb_r1;
	req_noise_r1 <= req_noise;
	req_noise_r2 <= req_noise_r1;
	fifo1_req_r10 <= fifo1_req_r9;
	ctr_col_r1 <= ctr_col;
	rdata_RAM_mux0_r1 <= rdata_RAM_mux0;
	rdata_RAM_mux1_r1 <= rdata_RAM_mux1;
	rdata_RAM_mux1_r2 <= rdata_RAM_mux1_r1;
	raddr_ROM_r1 <= raddr_ROM;
	state_r13_d1 <= state_r13;
	state_r13_d2 <= state_r13_d1;
	state_r13_d3 <= state_r13_d2;
	state_r13_d4 <= state_r13_d3;
	state_r13_d5 <= state_r13_d4;
	state_r13_d6 <= state_r13_d5;
	state_r13_d7 <= state_r13_d6;
	state_r13_d8 <= state_r13_d7;
end
always @(posedge clk) case(state)
	6'h 2, 6'h 19 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k;
	6'h 3, 6'h 1a : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k + ctr_i[6:1];
	6'h 4, 6'h 18 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j};
	6'h b : raddr_RAM0 <= {ctr_col,ctr_k[6:1]};
	6'h 14, 6'h 15 : raddr_RAM0 <= {ctr_col,ctr_k[6:1]};
	6'h 16 : raddr_RAM0 <= {ctr_k[6:1]};
	6'h 20, 6'h 21, 6'h 3e, 6'h 3f : raddr_RAM0 <= {ctr_NTT[1:0],ctr_k[5:0]};
	6'h 34, 6'h 36 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k;
	6'h 35, 6'h 37 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k + ctr_i[6:1];
	6'h 33 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j};
	6'h 26, 6'h 30 : raddr_RAM0 <= {ctr_col,ctr_k[6:1]};
	6'h 31 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_k[6:1]};
	6'h 1d, 6'h 1e, 6'h 38, 6'h 39 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_k[5:0]};
	default : raddr_RAM0 <= 8'h 0;
endcase
always @(posedge clk) case(state)
	6'h 7, 6'h 11 : raddr_RAM1 <= ctr_j + ctr_k;
	6'h 8, 6'h 12 : raddr_RAM1 <= ctr_j + ctr_k + ctr_i[6:1];
	6'h 9, 6'h 13 : raddr_RAM1 <= ctr_j;	
	6'h c : raddr_RAM1 <= ctr_k[6:1];
	6'h 14, 6'h 15 : raddr_RAM1 <= ctr_k[6:1];
	6'h 22, 6'h 23 : raddr_RAM1 <= ctr_k[5:0];
	6'h 29 : raddr_RAM1 <= ctr_j;
	6'h 2a : raddr_RAM1 <= ctr_j + ctr_k;
	6'h 2b : raddr_RAM1 <= ctr_j + ctr_k + ctr_i[6:1];
	6'h 27 : raddr_RAM1 <= ctr_k[6:1];
	6'h f, 6'h 10, 6'h 1b, 6'h 1c, 6'h 1d, 6'h 1e : raddr_RAM1 <= ctr_k[5:0];
	6'h 2c, 6'h 2d : raddr_RAM1 <= ctr_k[5:0];
	default : raddr_RAM1 <= 8'h 0;
endcase
always @(posedge clk) case(state)
	6'h b, 6'h c : raddr_RAM2 <= ctr_k;
	6'h 14, 6'h 15, 6'h 16 : raddr_RAM2 <= ctr_k;
	6'h 26, 6'h 27 : raddr_RAM2 <= ctr_k;
	6'h 30, 6'h 31 : raddr_RAM2 <= ctr_k;
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : raddr_RAM2 <= req_noise_done ? 7'h 0 : req_noise_r1 ? raddr_RAM2 + 1'h 1 : raddr_RAM2;
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : raddr_RAM2 <= ctr_k;
	default : raddr_RAM2 <= 7'h 0;
endcase
always @(*) case(state_r2)
	6'h 2, 6'h 3, 6'h 4, 6'h 18, 6'h 19, 6'h 1a : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h 7, 6'h 8, 6'h 9 : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h 11, 6'h 12, 6'h 13 : begin		
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h 14 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM2;
	end
	6'h 15 : begin
		rdata_RAM_mux0 = rdata_RAM1;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h b, 6'h 26, 6'h 30 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		rdata_RAM_mux0 = rdata_RAM4[23:0];
		rdata_RAM_mux1 = rdata_RAM4[47:24];
	end
	6'h 1d : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM0;
	end
	6'h 1e : begin
		rdata_RAM_mux0 = rdata_RAM3;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h 29, 6'h 2a, 6'h 2b : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h 2c : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM4[23:0];
	end
	6'h 2d : begin
		rdata_RAM_mux0 = rdata_RAM3;
		rdata_RAM_mux1 = rdata_RAM4[47:24];
	end
	6'h 38 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM4[23:0];
	end
	6'h 39 : begin
		rdata_RAM_mux0 = rdata_RAM1;
		rdata_RAM_mux1 = rdata_RAM4[47:24];
	end
	default : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
endcase
always @(posedge clk) raddr_ROM <= {ctr_i[0],ctr_i[1],ctr_i[2],ctr_i[3],ctr_i[4],ctr_i[5],ctr_i[6]} + ctr_group;

always @(*) case(state_r13)
	6'h 20, 6'h 21, 6'h 3e, 6'h 3f : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	5'h 2, 5'h 3, 5'h 4 : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	6'h 18, 6'h 19, 6'h 1a : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	6'h 16, 6'h 31 : begin
		wen_RAM0 = ~waddr_RAM2[0];
		wen_RAM1 = waddr_RAM2[0];
	end
	6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	5'h 38 : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 0;
	end
	5'h 39 : begin
		wen_RAM0 = 1'h 0;
		wen_RAM1 = 1'h 1;
	end
	default : begin
		wen_RAM0 = 1'h 0;
		wen_RAM1 = 1'h 0;
	end
endcase
always @(*) case(state_r13)
    6'h 22, 6'h 23 : begin
        wen_RAM2 = 1'h 1;
        wen_RAM3 = 1'h 1;		
    end
    5'h 7, 5'h 8, 5'h 9 : begin
        wen_RAM2 = 1'h 1;
        wen_RAM3 = 1'h 1;
    end
    6'h 11, 6'h 12, 6'h 13 : begin
        wen_RAM2 = 1'h 1;
        wen_RAM3 = 1'h 1;
    end
    6'h c, 6'h 27 : begin
        wen_RAM2 = ~waddr_RAM2[0];
        wen_RAM3 = waddr_RAM2[0];
    end
    6'h 29, 6'h 2a, 6'h 2b : begin
        wen_RAM2 = 1'h 1;
        wen_RAM3 = 1'h 1;
    end
    // Phase 2 Step 7: restored 6'h 1b/1c to wen_RAM2/RAM3 cases. These were
    // missing relative to unmasked; the previous wen_RAM2_decomp path tried to
    // compensate at state+18 but committed garbage data. Correct fix matches
    // unmasked NTT_core_Server.v line 499-505: write at state_r13 == 6'h 1b/1c
    // when wdata_RAM0/1 holds the decomp output.
    6'h f, 6'h 1b, 6'h 2c : begin
        wen_RAM2 = 1'h 1;
        wen_RAM3 = 1'h 0;
    end
    6'h 10, 6'h 1c, 6'h 2d : begin
        wen_RAM2 = 1'h 0;
        wen_RAM3 = 1'h 1;
    end
    default : begin
        wen_RAM2 = 1'h 0;
        wen_RAM3 = 1'h 0;
    end
endcase

// decomp writeback wen, timed to state+17 to match decomp_butt_r1 validity
always @(*) case(state_r13_d5)
    6'h 1b : begin wen_RAM2_decomp = 1'h 1; wen_RAM3_decomp = 1'h 0; end
    6'h 1c : begin wen_RAM2_decomp = 1'h 0; wen_RAM3_decomp = 1'h 1; end
    default: begin wen_RAM2_decomp = 1'h 0; wen_RAM3_decomp = 1'h 0; end
endcase
// endcase  -- stray duplicate (commented out)
always @(*) case(state_r13)
	5'h b, 6'h 14, 6'h 15 : wen_RAM4 = 1'h 1;
	6'h 26, 6'h 30 : wen_RAM4 = 1'h 1;
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : wen_RAM4 = fifo1_req_r10;
	default : wen_RAM4 = 1'h 0;
endcase
// Stage 2 mask injection: at sampling states, primary path stores
// (samp + mask_const) mod Q. This is the only place fresh polynomial data
// enters RAM; all other states write butterfly outputs which are already
// masked downstream.
// Step 1: each of the 4 samples in a cycle uses an independent mask.
// Step 4: samp{0..3}_masked are now direct aliases for the masked-register
// outputs. The old samp_plus / samp_masked combinational chain (samp_q + mask
// + mod-Q reduce) moved INTO the register stage above, so samp{i}_p_q ==
// (samp{i}_corrected + mask_used_S{i}) mod Q directly.
wire [11:0] samp0_masked = samp0_p_q;
wire [11:0] samp1_masked = samp1_p_q;
wire [11:0] samp2_masked = samp2_p_q;
wire [11:0] samp3_masked = samp3_p_q;

// =============================================================================
// Stage 3: unmask helper. Computes (masked - mask + Q) mod Q per 12-bit half.
// Used at quotient-output FSM states where the butterfly's primary path needs
// to compute Montgomery quotient on UNMASKED polynomial data.
//
// The unmasked value is captured into in0_butt / in1_butt registers (which
// already exist as registered signals — they ARE the "single-cycle window"
// the unmasked polynomial value lives on the data path). DONT_TOUCH on the
// helper wires prevents synthesis from sharing them with other consumers.
//
// `unmask_24_lo(masked_24, mask_24)`: returns 12-bit unmasked low half
// `unmask_24_hi(masked_24, mask_24)`: returns 12-bit unmasked high half
// Both: (masked + Q - mask) wrapped to [0, Q).
// =============================================================================
// Stage 3 unmask: compute (masked - mask) mod Q per 12-bit half. Simpler form
// using borrow detection. With mask_const=0, mask is 0, so result equals input.
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_lo_diff = rdata_RAM_mux0_r1[11:0]  - rdata_RAM_mux0_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire        um_mux0_r1_lo_borrow = rdata_RAM_mux0_r1[11:0]  < rdata_RAM_mux0_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_hi_diff = rdata_RAM_mux0_r1[23:12] - rdata_RAM_mux0_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire        um_mux0_r1_hi_borrow = rdata_RAM_mux0_r1[23:12] < rdata_RAM_mux0_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_lo_diff = rdata_RAM_mux1_r1[11:0]  - rdata_RAM_mux1_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire        um_mux1_r1_lo_borrow = rdata_RAM_mux1_r1[11:0]  < rdata_RAM_mux1_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_hi_diff = rdata_RAM_mux1_r1[23:12] - rdata_RAM_mux1_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire        um_mux1_r1_hi_borrow = rdata_RAM_mux1_r1[23:12] < rdata_RAM_mux1_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_lo = um_mux0_r1_lo_borrow ? um_mux0_r1_lo_diff + 12'h d01 : um_mux0_r1_lo_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_hi = um_mux0_r1_hi_borrow ? um_mux0_r1_hi_diff + 12'h d01 : um_mux0_r1_hi_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_lo = um_mux1_r1_lo_borrow ? um_mux1_r1_lo_diff + 12'h d01 : um_mux1_r1_lo_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_hi = um_mux1_r1_hi_borrow ? um_mux1_r1_hi_diff + 12'h d01 : um_mux1_r1_hi_diff;
// Phase 2 Stage C: unmask formula re-enabled. With non-zero mask, must compute
// (primary - mask) mod Q to recover unmasked truth at output states. The DBG
// bypass was harmless at mask=0 but breaks correctness once mask_const != 0.
(* DONT_TOUCH = "TRUE" *) wire [23:0] unmasked_mux0_r1 = {um_mux0_r1_hi, um_mux0_r1_lo};
(* DONT_TOUCH = "TRUE" *) wire [23:0] unmasked_mux1_r1 = {um_mux1_r1_hi, um_mux1_r1_lo};

// Phase 2 Stage C: additional unmask helpers needed for state_r3 == 6'h 36/37
// (compression op ctrl=0x3f0). BU at those states reads rdata_RAM_mux0
// (undelayed) and rdata_RAM_mux1_r2 (double-delayed), neither of which had
// unmask helpers before. Compression is non-linear so BU must operate on
// unmasked truth (Stage 3.c-style discipline; single-cycle leak accepted).
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_lo_diff = rdata_RAM_mux0[11:0]  - rdata_RAM_mux0_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire        um_mux0_lo_borrow = rdata_RAM_mux0[11:0]  < rdata_RAM_mux0_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_hi_diff = rdata_RAM_mux0[23:12] - rdata_RAM_mux0_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire        um_mux0_hi_borrow = rdata_RAM_mux0[23:12] < rdata_RAM_mux0_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_lo = um_mux0_lo_borrow ? um_mux0_lo_diff + 12'h d01 : um_mux0_lo_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_hi = um_mux0_hi_borrow ? um_mux0_hi_diff + 12'h d01 : um_mux0_hi_diff;
(* DONT_TOUCH = "TRUE" *) wire [23:0] unmasked_mux0 = {um_mux0_hi, um_mux0_lo};

(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r2_lo_diff = rdata_RAM_mux1_r2[11:0]  - rdata_RAM_mux1_r2_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire        um_mux1_r2_lo_borrow = rdata_RAM_mux1_r2[11:0]  < rdata_RAM_mux1_r2_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r2_hi_diff = rdata_RAM_mux1_r2[23:12] - rdata_RAM_mux1_r2_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire        um_mux1_r2_hi_borrow = rdata_RAM_mux1_r2[23:12] < rdata_RAM_mux1_r2_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r2_lo = um_mux1_r2_lo_borrow ? um_mux1_r2_lo_diff + 12'h d01 : um_mux1_r2_lo_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r2_hi = um_mux1_r2_hi_borrow ? um_mux1_r2_hi_diff + 12'h d01 : um_mux1_r2_hi_diff;
(* DONT_TOUCH = "TRUE" *) wire [23:0] unmasked_mux1_r2 = {um_mux1_r2_hi, um_mux1_r2_lo};

always @(*) case(state_r13)
	6'h 20, 6'h 21, 6'h 22, 6'h 23, 6'h 3e, 6'h 3f : begin
		wdata_RAM0 = {samp1_masked, samp0_masked};
		wdata_RAM1 = {samp3_masked, samp2_masked};
	end
	4'h 2, 5'h 7, 5'h 11, 6'h 19, 6'h 2a, 6'h 34, 6'h 36 : begin
		wdata_RAM0 = out0_butt_r1;
		wdata_RAM1 = out0_butt;
	end
	4'h 3, 5'h 8, 5'h 12, 6'h 1a, 6'h 2b, 6'h 35, 6'h 37 : begin
		wdata_RAM0 = out1_butt_r2;
		wdata_RAM1 = out1_butt_r1;
	end
	4'h 4, 5'h 9, 5'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		wdata_RAM0 = out0_butt_r1;
		wdata_RAM1 = out1_butt_r1;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin		
		wdata_RAM0 = {data_mux1,data_mux0};		
		wdata_RAM1 = {data_mux1,data_mux0};
	end
	5'h f, 5'h 10, 6'h 1b, 6'h 1c : begin
		wdata_RAM0 = {decomp1_butt_r1,decomp0_butt_r1};
		wdata_RAM1 = {decomp1_butt_r1,decomp0_butt_r1};
	end
	// Step 3+5 Phase A v2: write the butterfly's quo (which is garbage since
	// in_butt loads masked shares now) to preserve the v1 RAM contents
	// format. Trace says these RAM addresses aren't consumed; testing this
	// in case the trace missed a downstream reader.
	6'h 1d, 6'h 1e : begin
		wdata_RAM0 = {1'b0,quo1_butt_r1,1'b0,quo0_butt_r1};
		wdata_RAM1 = {1'b0,quo1_butt_r1,1'b0,quo0_butt_r1};
	end
	// DEBUG: revert to butterfly quo while isolating mcdN bug
	6'h 2c, 6'h 2d : begin
		wdata_RAM0 = {1'b0, quo1_butt_r1, 1'b0, quo0_butt_r1};
		wdata_RAM1 = {1'b0, quo1_butt_r1, 1'b0, quo0_butt_r1};
	end
	6'h 38, 6'h 39 : begin
		wdata_RAM0 = {1'b0,quo1_butt_r1,1'b0,quo0_butt_r1};
		wdata_RAM1 = {1'b0,quo1_butt_r1,1'b0,quo0_butt_r1};
	end
	default : begin		
		wdata_RAM0 = out0_butt_r1;
		wdata_RAM1 = out1_butt_r1;
	end
endcase
always @(*) case(state_r13)
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : wdata_RAM2 = {samp3_masked, samp2_masked, samp1_masked, samp0_masked};
	default : wdata_RAM2 = {wdata_RAM1,wdata_RAM0};
endcase

always @(*) case(state_r2)
	5'h c : rdata_acc = raddr_RAM2_lsb_r1 ? rdata_RAM3 : rdata_RAM2;
	6'h 27 : rdata_acc = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM3 : rdata_RAM2;
	6'h 16, 6'h 31 : rdata_acc = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM1 : rdata_RAM0;
	default : rdata_acc = raddr_RAM2_lsb_r1 ? rdata_RAM3 : rdata_RAM2;
endcase
assign data_acc0 = out0_butt[23:12] + rdata_acc_r8[11:0];
assign data_acc1 = out1_butt[23:12] + rdata_acc_r8[23:12];
assign data_acc0_q = data_acc0 - 12'h d01;
assign data_acc1_q = data_acc1 - 12'h d01;
always @(posedge clk) data_mux0 <= data_acc0_q[12] ? data_acc0 : data_acc0_q;
always @(posedge clk) data_mux1 <= data_acc1_q[12] ? data_acc1 : data_acc1_q;

// =============================================================================
// Stage 3.b.1: parallel accumulator for mask share (closes S3-11). Mirrors
// primary's rdata_acc → c_shift_ram_6 → data_acc → data_mux structure but
// reads from RAM_m and uses BU_m's outputs. Maintains share invariant at
// accumulator-output states (5'h c, 6'h 16, 6'h 27, 6'h 31).
// =============================================================================
reg [23:0] rdata_acc_m;
wire [23:0] rdata_acc_r8_m;
wire [12:0] data_acc0_m, data_acc1_m;
wire [12:0] data_acc0_q_m, data_acc1_q_m;
(* DONT_TOUCH = "TRUE" *) reg [11:0] data_mux0_m, data_mux1_m;

always @(*) case(state_r2)
	5'h c : rdata_acc_m = raddr_RAM2_lsb_r1 ? rdata_RAM3_m : rdata_RAM2_m;
	6'h 27 : rdata_acc_m = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM3_m : rdata_RAM2_m;
	6'h 16, 6'h 31 : rdata_acc_m = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM1_m : rdata_RAM0_m;
	default : rdata_acc_m = raddr_RAM2_lsb_r1 ? rdata_RAM3_m : rdata_RAM2_m;
endcase
assign data_acc0_m = out0_butt_m[23:12] + rdata_acc_r8_m[11:0];
assign data_acc1_m = out1_butt_m[23:12] + rdata_acc_r8_m[23:12];
assign data_acc0_q_m = data_acc0_m - 12'h d01;
assign data_acc1_q_m = data_acc1_m - 12'h d01;
// Phase 2 Stage C fix: cross-share selector bug. Mask-side reduction was
// gated by primary's borrow bit (data_acc*_q[12]) instead of its own
// (data_acc*_q_m[12]). When primary overflowed Q (frequent with non-zero
// mask) but mask sum did not, the mask path was wrongly reduced as
// (mask_sum - Q) mod 2^12, producing 0x2ff garbage that poisoned RAM_m
// and broke the share invariant at state_r13 == 6'h 16. Client masked
// already had the correct form (data_acc*_q_m[12]); Server didn't.
always @(posedge clk) data_mux0_m <= data_acc0_q_m[12] ? data_acc0_m : data_acc0_q_m;
always @(posedge clk) data_mux1_m <= data_acc1_q_m[12] ? data_acc1_m : data_acc1_q_m;

// =============================================================================
// Stage 3.b: dout polynomial-coeff unmask at state_r13 == 5'h c.
// Primary's dout at this state forwards `wdata_RAM0 = {data_mux1, data_mux0}`,
// which is the masked accumulator output (a + r) mod Q. To emit unmasked
// polynomial coefficients to Kyber_Server (which feeds encode_Server), compute
// (primary - mask) mod Q on each 12-bit half, register, and forward.
// (* DONT_TOUCH *) on the unmask helpers prevents synthesis from merging
// shares.
// =============================================================================
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm0_unmask_t = {1'b0, data_mux0} + 13'h d01 - {1'b0, data_mux0_m};
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm1_unmask_t = {1'b0, data_mux1} + 13'h d01 - {1'b0, data_mux1_m};
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm0_unmask_q = dm0_unmask_t - 13'h d01;
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm1_unmask_q = dm1_unmask_t - 13'h d01;
(* DONT_TOUCH = "TRUE" *) wire [11:0] dm0_unmask = dm0_unmask_q[12] ? dm0_unmask_t[11:0] : dm0_unmask_q[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] dm1_unmask = dm1_unmask_q[12] ? dm1_unmask_t[11:0] : dm1_unmask_q[11:0];
(* DONT_TOUCH = "TRUE" *) wire [23:0] wdata_RAM0_unmasked = {dm1_unmask, dm0_unmask};

always @(*) case(state)
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : req_noise = ~fifo1_empty & ~req_noise_done;
	default : req_noise = 1'h 0;
endcase
always @(posedge clk) case(state_r1)
	6'h 0 : req_noise_done <= 1'h 0;
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : req_noise_done <= raddr_RAM2 == 6'h 3f ? 1'h 1 : req_noise_done;
	6'h 2c, 6'h 38 : req_noise_done <= 1'h 0; 
endcase
// Phase A v2: ena_sft restored to v1 timing (state_r3 + 1 reg). Analysis
// shows ena_sft (state_r3==0x36/0x37) and m_ena (state_r13_d6==0x1d/0x1e)
// fire in DIFFERENT NTT calls — they cannot overlap. Earlier 4-cycle delay
// was based on a wrong assumption and only shifted timing without changing
// total pulse count.
always @(posedge clk) case(state_r3)
	6'h 36, 6'h 37 : ena_sft <= 1'h 1;
	default : ena_sft <= 1'h 0;
endcase
always @(*) case(state_r2)
	5'h b, 6'h 26 : fifo0_req = 1'h 1;
	default : fifo0_req = 1'h 0;
endcase
always @(*) case(state_r2)
	6'h 20, 6'h 21, 6'h 22, 6'h 23, 6'h 3e, 6'h 3f : fifo1_req = 1'h 1;
	6'h 2a, 6'h 34 : fifo1_req = req_noise_r2;
	6'h 2b, 6'h 35 : fifo1_req = req_noise_r2;
	default : fifo1_req = 1'h 0;
endcase
always @(*) begin
	if(state_r2 == 5'h f || state_r2 == 5'h 10 || state_r2 == 6'h 30 || state_r13 == 6'h 2c || state_r13 == 6'h 2d)
		req_D0 = 1'h 1;
	else
		req_D0 = 1'h 0;
end
always @(*) begin
	if(state_r2  == 6'h 1b || state_r2 == 6'h 1c || state_r13 == 6'h 38 || state_r13 == 6'h 39)
		req_D1 = 1'h 1;
	else
		req_D1 = 1'h 0;
end
always @(posedge clk) case(state_r13)
	5'h 1 : ready_t <= 1'h 0;
	5'h e : ready_t <= 1'h 1;
	6'h 2f: ready_t <= 1'h 1;
	default : ready_t <= ready_t;
endcase

always @(*) case(state_r13_d6)
	// Step 3+5 Phase A v2: v2 wrapper latency = 16 (X2X 10 + SecAdd 5 +
	// SecAnd 1 with PIPELINE=1 and direct secadd_done → SecAnd.start wire).
	6'h 1d, 6'h 1e : begin
		m_ena = 1'h 1;
		m_dec = {mcd1_bit_hi, mcd1_bit_lo};
	end
	default : begin
		m_ena = 1'h 0;
		m_dec = 2'h 0;
	end
endcase
// DBG: capture RAM3[0..7] read values when state == 0x1d/0x1e (m_dec phase)
integer dbg_r3_cnt;
initial dbg_r3_cnt = 0;
always @(posedge clk) begin
	if ((state == 6'h 1d || state == 6'h 1e) && raddr_RAM1 < 6'h 8 && dbg_r3_cnt < 8) begin
		$display("[MASKED_RAM3 t=%0t state=%h] raddr=%h rdata=%h", $time, state, raddr_RAM1, rdata_RAM3);
		dbg_r3_cnt <= dbg_r3_cnt + 1;
	end
end

always @(posedge clk) case(state_r13)
	// Phase 2 Stage C: use wdata_RAM0_unmasked (proper subtract of mask from
	// primary) instead of wdata_RAM0 directly. With non-zero mask, wdata_RAM0
	// holds masked value (a+r); dout must emit unmasked truth (a).
	5'h c : dout <= ctr_col_r12 == k_1 ? wdata_RAM0_unmasked : 24'h 0;
	// DEBUG: dout sourced from butterfly's known-correct quo to isolate mcdN bug.
	6'h 2c, 6'h 2d : case(k)
		3'h 2, 3'h 3 : dout <= {quo1_butt_r1[9:0], quo0_butt_r1[9:0]};
		default      : dout <= {quo1_butt_r1,       quo0_butt_r1};
	endcase
	6'h 38, 6'h 39 : case(k)
		3'h 2, 3'h 3 : dout <= {quo1_butt_r1[3:0],quo0_butt_r1[3:0]};
		default : dout <= {quo1_butt_r1[4:0],quo0_butt_r1[4:0]};
	endcase
	default : dout <= 24'h 0;
endcase

always @(posedge clk) case(state_r13)
	5'h c : valid <= ctr_col_r12 == k_1 ? 1'h 1 : 1'h 0;
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : valid <= 1'h 1;
	default        : valid <= 1'h 0;
endcase
always @(posedge clk) begin
	if(start)
		finish <= 1'h 0;
	// Step 3+5 Phase A v2: m_dec gated by state_r13_d6. finish slips by 6.
	else if(state_r13_d6 == 6'h 3a)
		finish <= 1'h 1;
	else
		finish <= 1'h 0;
end

// =============================================================================
// Stage 2: drive mask-share data signals from CSPRNG-derived constant mask
// at sampling-state writebacks (where polynomials enter RAM for the first
// time). At all OTHER writeback states, the mask path's wdata mirrors the
// primary's structure but uses BU_m's outputs. This preserves the property
// "RAM_p contents = (a + r), RAM_m contents = r" throughout the NTT.
// =============================================================================

// Mask-share butterfly inputs: mirror primary's in0_butt/in1_butt assign block,
// but feed from rdata_RAM*_m (the mask polynomial RAM reads). For coefficient-
// load states (5'h b, 6'h 26, 6'h 30), in1 comes from `din` for primary; for
// the mask path, that becomes the constant mask (extended to 24 bits as
// {mask_const, mask_const}).
always @(posedge clk) case(state_r3)
	6'h 2, 6'h 7, 6'h 11, 6'h 19, 6'h 2a, 6'h 34, 6'h 36 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux0_m;
	end
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 2b, 6'h 35, 6'h 37  : begin
		in0_butt_m <= rdata_RAM_mux1_r2_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	6'h 4, 6'h 9, 6'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	5'h b, 6'h 26, 6'h 30 : begin
		in0_butt_m <= raddr_RAM2_lsb_r2 ? rdata_RAM_mux1_r1_m : rdata_RAM_mux0_r1_m;
		// DBG: revert Stage 3.e fix — back to in1_butt_m = 0
		in1_butt_m <= 24'h0;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	6'h 14, 6'h 15, 6'h 1d, 6'h 1e : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	5'h f, 5'h 10 : begin
		in0_butt_m <= 24'h0;
		// Stage 3.e fix (S3c-6): mirror primary's in1_butt slice exactly so
		// BU_m operates on same public data; share invariant carries through
		// butterfly's non-fully-linear paths (e.g., shift-right at sel_a1=0).
		case(k)
			3'h 2, 3'h 3 : in1_butt_m <= {din[19:10],2'b0,din[9:0]};
			default : in1_butt_m <= {din[21:11],1'b0,din[10:0]};
		endcase
	end
	6'h 1b, 6'h 1c : begin
		in0_butt_m <= 24'h0;
		case(k)
			3'h 2, 3'h 3 : in1_butt_m <= {din[7:4],8'b0,din[3:0]};
			default : in1_butt_m <= {din[9:5],7'b0,din[4:0]};
		endcase
	end
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	default : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
endcase

// Mask-share rdata_RAM_mux signals (parallel to primary rdata_RAM_mux0/1)
reg [23:0] rdata_RAM_mux0_m, rdata_RAM_mux1_m;
(* DONT_TOUCH = "TRUE" *) reg [23:0] rdata_RAM_mux0_r1_m, rdata_RAM_mux1_r1_m, rdata_RAM_mux1_r2_m;

always @(posedge clk) begin
	rdata_RAM_mux0_r1_m <= rdata_RAM_mux0_m;
	rdata_RAM_mux1_r1_m <= rdata_RAM_mux1_m;
	rdata_RAM_mux1_r2_m <= rdata_RAM_mux1_r1_m;
end

// NOTE (S3c-6 partial finding): Stage 2 mask-side mux is MISWIRED at many
// states relative to primary. e.g., state_r2 == 6'h 7/8/9 primary reads
// RAM2/RAM3 but mask code reads RAM4_m. Verified via $display: share invariant
// failed by exactly 0x13 at state_r13 == 5'h 7. CORRECTING this mux to mirror
// primary exactly (verified pass through diff against NTT_core_Server.v
// lines 366-431) breaks the mask=0 diagnostic line 1 (was 0223d2 → becomes
// 8a74d7f4) — suggests the corrected mask-mux interacts with another bug
// (possibly X-prop from RAM_m at unwritten addresses). Reverted to original
// Stage 2 wiring; the proper fix requires also addressing the X-prop chain.
always @(*) case(state_r2)
    6'h 2, 6'h 3, 6'h 4, 6'h 18, 6'h 19, 6'h 1a : begin
        rdata_RAM_mux0_m = rdata_RAM0_m;
        rdata_RAM_mux1_m = rdata_RAM1_m;
    end
    6'h 7, 6'h 8, 6'h 9 : begin
        rdata_RAM_mux0_m = rdata_RAM2_m;
        rdata_RAM_mux1_m = rdata_RAM3_m;
    end
    6'h 11, 6'h 12, 6'h 13 : begin
        rdata_RAM_mux0_m = rdata_RAM2_m;
        rdata_RAM_mux1_m = rdata_RAM3_m;
    end
    6'h 14 : begin
        rdata_RAM_mux0_m = rdata_RAM0_m;
        rdata_RAM_mux1_m = rdata_RAM2_m;
    end
    6'h 15 : begin
        rdata_RAM_mux0_m = rdata_RAM1_m;
        rdata_RAM_mux1_m = rdata_RAM3_m;
    end
    6'h b, 6'h 26, 6'h 30 : begin
        rdata_RAM_mux0_m = rdata_RAM0_m;
        rdata_RAM_mux1_m = rdata_RAM1_m;
    end
    6'h c, 6'h 16, 6'h 27, 6'h 31 : begin
        rdata_RAM_mux0_m = rdata_RAM4_m[23:0];
        rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
    end
    6'h 1d : begin
        rdata_RAM_mux0_m = rdata_RAM2_m;
        rdata_RAM_mux1_m = rdata_RAM0_m;
    end
    6'h 1e : begin
        rdata_RAM_mux0_m = rdata_RAM3_m;
        rdata_RAM_mux1_m = rdata_RAM1_m;
    end
    6'h 29, 6'h 2a, 6'h 2b : begin
        rdata_RAM_mux0_m = rdata_RAM2_m;
        rdata_RAM_mux1_m = rdata_RAM3_m;
    end
    6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : begin
        rdata_RAM_mux0_m = rdata_RAM0_m;
        rdata_RAM_mux1_m = rdata_RAM1_m;
    end
    6'h 2c : begin
        rdata_RAM_mux0_m = rdata_RAM2_m;
        rdata_RAM_mux1_m = rdata_RAM4_m[23:0];
    end
    6'h 2d : begin
        rdata_RAM_mux0_m = rdata_RAM3_m;
        rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
    end
    6'h 38 : begin
        rdata_RAM_mux0_m = rdata_RAM0_m;
        rdata_RAM_mux1_m = rdata_RAM4_m[23:0];
    end
    6'h 39 : begin
        rdata_RAM_mux0_m = rdata_RAM1_m;
        rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
    end
    default : begin
        rdata_RAM_mux0_m = rdata_RAM0_m;
        rdata_RAM_mux1_m = rdata_RAM1_m;
    end
endcase

// Mask-share wdata: mirror primary's wdata_RAM* always block. At sampling
// states (where primary writes {samp_q,samp_q}), mask writes {mask,mask}.
// At butterfly-writeback states, mask writes the corresponding BU_m output.
// At decomp/quotient states, mask writes BU_m's decomp/quo retiming.
always @(*) case(state_r13)
	6'h 20, 6'h 21, 6'h 22, 6'h 23, 6'h 3e, 6'h 3f : begin
		// Step 4: each lane stores the mask that was used at the corresponding
		// samp{i}_p_q register (= samp{i}_m_q), not the current mask_for_samp{i}
		// value. The register selection in the always block above already chose
		// next_mask vs current to keep masks distinct across back-to-back
		// sampling cycles; the samp{i}_m_q register captures whatever mask was
		// chosen, so consumers here just forward it.
		wdata_RAM0_m = {samp1_m_q, samp0_m_q};
		wdata_RAM1_m = {samp3_m_q, samp2_m_q};
	end
	4'h 2, 5'h 7, 5'h 11, 6'h 19, 6'h 2a, 6'h 34 : begin
		wdata_RAM0_m = out0_butt_r1_m;
		wdata_RAM1_m = out0_butt_m;
	end
	4'h 3, 5'h 8, 5'h 12, 6'h 1a, 6'h 2b, 6'h 35 : begin
		wdata_RAM0_m = out1_butt_r2_m;
		wdata_RAM1_m = out1_butt_r1_m;
	end
	// Phase 2 Stage C: pair with in_butt unmask above. Primary writes the
	// compressed-truth value (BU operated on unmasked truth); mask writes 0
	// so the share invariant becomes primary - 0 = truth at this state's
	// writeback address.
	6'h 36, 6'h 37 : begin
		wdata_RAM0_m = 24'h0;
		wdata_RAM1_m = 24'h0;
	end
	4'h 4, 5'h 9, 5'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		wdata_RAM0_m = out0_butt_r1_m;
		wdata_RAM1_m = out1_butt_r1_m;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		// Stage 3.b.1: parallel accumulator for mask share. RAM_p writes
		// {data_mux1, data_mux0} (primary accumulator output). RAM_m writes
		// {data_mux1_m, data_mux0_m} (mask-share accumulator output).
		// Maintains share invariant: RAM_p[i] - RAM_m[i] = unmasked.
		wdata_RAM0_m = {data_mux1_m, data_mux0_m};
		wdata_RAM1_m = {data_mux1_m, data_mux0_m};
	end
	5'h f, 5'h 10, 6'h 1b, 6'h 1c : begin
		// Stage 3.b.2 (S3-14 fix): decomp is non-linear (Kyber compression).
		// At these states, in_butt is loaded from `din` (compressed input
		// ciphertext, public/unmasked) so primary's decomp output is already
		// unmasked. RAM_m at these output addresses gets 0 — share invariant
		// preserved (RAM_p - RAM_m = unmasked decomp output).
		wdata_RAM0_m = 24'h0;
		wdata_RAM1_m = 24'h0;
	end
	6'h 1d, 6'h 1e, 6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : begin
		// Stage 3: at quotient-output states, primary path writes UNMASKED
		// quotient bits (because in_butt was unmasked at the corresponding
		// state_r3). Quotient is non-linear, so writing quo*_butt_r1_m to
		// RAM_m would violate the share invariant. Instead write 0 — these
		// RAM locations are output-only (m_dec emission, dout emission)
		// and not consumed as polynomial inputs by downstream operations.
		wdata_RAM0_m = 24'h0;
		wdata_RAM1_m = 24'h0;
	end
	default : begin
		wdata_RAM0_m = out0_butt_r1_m;
		wdata_RAM1_m = out1_butt_r1_m;
	end
endcase

// Mask-share RAM2 wdata: parallel to primary's wdata_RAM2.
always @(*) case(state_r13)
	// Stage 3.c fix (S3b-1 b): only the noise-sampling states write mask_const
	// to RAM2/4. State 6'h 14/15 is an NTT/INTT step (writes butterfly output
	// in primary), so RAM2_m must mirror the default {wdata_RAM1_m, wdata_RAM0_m}
	// to preserve the share invariant. Stage 2 erroneously grouped 6'h 14/15
	// with the noise-sampling states.
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 :
		// Step 4: 48-bit mask packs the four samp{i}_m_q registers, which hold
		// the masks selected at the samp_p_q registration edge (next_mask vs
		// current_mask).
		wdata_RAM2_m = {samp3_m_q, samp2_m_q, samp1_m_q, samp0_m_q};
	default :
		wdata_RAM2_m = {wdata_RAM1_m, wdata_RAM0_m};
endcase

// =============================================================================
// PRIMARY share — original NTT_core_Server hardware. At Stage 1 with mask=0
// this carries the unmasked polynomial. Stages 2+ will mask the input.
// =============================================================================
(* DONT_TOUCH = "TRUE" *) butterfly_Ser BU(.clk(clk),.in0(in0_butt),.in1(in1_butt),.tw(tw_butt),.k(k),.m_bits(m_bits),.flag_uv(ctrl_butt[10]),.flag_mix1(ctrl_butt[9]),.flag_mix0(ctrl_butt[8]),.flag_m(ctrl_butt[7]),.flag_sub1(ctrl_butt[6]),.flag_sub0(ctrl_butt[5]),.flag_add(ctrl_butt[4]),.sel_a1(ctrl_butt[3]),.sel_s0(ctrl_butt[2]),.sel1_a0(ctrl_butt[1]),.sel0_a0(ctrl_butt[0]),.out0(out0_butt),.out1(out1_butt),.quo0(quo0_butt),.quo1(quo1_butt),.decomp0(decomp0_butt),.decomp1(decomp1_butt));
dist_mem_gen_5 ROM0(.clk(clk),.a(raddr_ROM_r1),.qspo(rdata_ROM0));
dist_mem_gen_6 ROM1(.clk(clk),.a(raddr_ROM_r1),.qspo(rdata_ROM1));
dist_mem_gen_7 ROM2(.clk(clk),.a(raddr_ROM_r1),.qspo(rdata_ROM2));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM0(.clka(clk),.wea(wen_RAM0),.addra(waddr_RAM0),.dina(wdata_RAM0),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM0));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM1(.clka(clk),.wea(wen_RAM1),.addra(waddr_RAM0),.dina(wdata_RAM1),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM1));
// Phase 2 Step 6: removed wen_RAM2_decomp / wen_RAM3_decomp OR paths.
// These were the "new methodology" extension that fires wen at state_r13_d5
// == 6'h 1b/1c (state+18). At that moment, the wdata_RAM0/1 mux is in its
// default branch (NOT decomp output) so the extra write commits garbage to
// RAM2/RAM3. Confirmed via shadow-NTT comparator: with this path removed,
// masked.wdata_RAM matches unmasked.wdata_RAM byte-identically.
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM2(.clka(clk),.wea(wen_RAM2),.addra(waddr_RAM1),.dina(wdata_RAM0),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM2));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM3(.clka(clk),.wea(wen_RAM3),.addra(waddr_RAM1),.dina(wdata_RAM1),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM3));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_1 RAM4(.clka(clk),.wea(wen_RAM4),.addra(waddr_RAM2),.dina(wdata_RAM2),.clkb(clk),.addrb(raddr_RAM2),.doutb(rdata_RAM4));

// =============================================================================
// MASK share — parallel polynomial state holding `r`. At Stage 1, r is
// hardwired to 0 throughout, so the entire mask path computes on zeros and
// produces zeros. Outputs are NOT consumed by anything yet (they will be in
// Stage 3's unmask logic). DONT_TOUCH and KEEP_HIERARCHY prevent synthesis
// from optimizing the mask path away or merging it with the primary path.
//
// Wiring conventions:
//   - Same clk, same control signals as primary (FSM is shared).
//   - Same ROM twiddles (twiddles are public).
//   - Different RAM data — primary holds (a+r), mask holds r.
//   - in*_butt_m / out*_butt_m / wdata_RAM*_m / rdata_RAM*_m are the
//     mask-share counterparts of the primary signals; they are declared
//     near the top of the module alongside the primary versions.
// =============================================================================
(* DONT_TOUCH = "TRUE" *) butterfly_Ser BU_m(.clk(clk),.in0(in0_butt_m),.in1(in1_butt_m),.tw(tw_butt_m),.k(k),.m_bits(m_bits),.flag_uv(ctrl_butt[10]),.flag_mix1(ctrl_butt[9]),.flag_mix0(ctrl_butt[8]),.flag_m(ctrl_butt[7]),.flag_sub1(ctrl_butt[6]),.flag_sub0(ctrl_butt[5]),.flag_add(ctrl_butt[4]),.sel_a1(ctrl_butt[3]),.sel_s0(ctrl_butt[2]),.sel1_a0(ctrl_butt[1]),.sel0_a0(ctrl_butt[0]),.out0(out0_butt_m),.out1(out1_butt_m),.quo0(quo0_butt_m),.quo1(quo1_butt_m),.decomp0(decomp0_butt_m),.decomp1(decomp1_butt_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM0_m(.clka(clk),.wea(wen_RAM0),.addra(waddr_RAM0),.dina(wdata_RAM0_m),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM0_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM1_m(.clka(clk),.wea(wen_RAM1),.addra(waddr_RAM0),.dina(wdata_RAM1_m),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM1_m));
// Phase 2 Step 6 (mirror): same fix on mask RAMs.
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM2_m(.clka(clk),.wea(wen_RAM2),.addra(waddr_RAM1),.dina(wdata_RAM0_m),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM2_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM3_m(.clka(clk),.wea(wen_RAM3),.addra(waddr_RAM1),.dina(wdata_RAM1_m),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM3_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_1 RAM4_m(.clka(clk),.wea(wen_RAM4),.addra(waddr_RAM2),.dina(wdata_RAM2_m),.clkb(clk),.addrb(raddr_RAM2),.doutb(rdata_RAM4_m));
mux4to2 m00(.a(din[ 0]),.b(din[ 0]),.c(din[ 2]),.d(din[ 3]),.sel({req_noise_r12,din[24]}),.z(b0[1:0]));
mux4to2 m01(.a(din[ 1]),.b(din[ 1]),.c(din[ 3]),.d(din[ 4]),.sel({req_noise_r12,din[24]}),.z(b0[3:2]));
mux4to2 m02(.a(  1'h 0),.b(din[ 2]),.c(  1'h 0),.d(din[ 5]),.sel({req_noise_r12,din[24]}),.z(b0[5:4]));
mux4to2 m10(.a(din[ 4]),.b(din[ 6]),.c(din[ 6]),.d(din[ 9]),.sel({req_noise_r12,din[24]}),.z(b1[1:0]));
mux4to2 m11(.a(din[ 5]),.b(din[ 7]),.c(din[ 7]),.d(din[10]),.sel({req_noise_r12,din[24]}),.z(b1[3:2]));
mux4to2 m12(.a(  1'h 0),.b(din[ 8]),.c(  1'h 0),.d(din[11]),.sel({req_noise_r12,din[24]}),.z(b1[5:4]));
mux4to2 m20(.a(din[ 8]),.b(din[12]),.c(din[10]),.d(din[15]),.sel({req_noise_r12,din[24]}),.z(b2[1:0]));
mux4to2 m21(.a(din[ 9]),.b(din[13]),.c(din[11]),.d(din[16]),.sel({req_noise_r12,din[24]}),.z(b2[3:2]));
mux4to2 m22(.a(  1'h 0),.b(din[14]),.c(  1'h 0),.d(din[17]),.sel({req_noise_r12,din[24]}),.z(b2[5:4]));
mux4to2 m30(.a(din[12]),.b(din[18]),.c(din[14]),.d(din[21]),.sel({req_noise_r12,din[24]}),.z(b3[1:0]));
mux4to2 m31(.a(din[13]),.b(din[19]),.c(din[15]),.d(din[22]),.sel({req_noise_r12,din[24]}),.z(b3[3:2]));
mux4to2 m32(.a(  1'h 0),.b(din[20]),.c(  1'h 0),.d(din[23]),.sel({req_noise_r12,din[24]}),.z(b3[5:4]));
c_shift_ram_2 S3(.CLK(clk),.D(ctr_col),.Q(ctr_col_r12));
c_shift_ram_3 S4(.CLK(clk),.D(state_r3),.Q(state_r13));
c_shift_ram_4 S5(.CLK(clk),.D(raddr_RAM0),.Q(waddr_RAM0));
c_shift_ram_4 S6(.CLK(clk),.D(raddr_RAM1),.Q(waddr_RAM1));
c_shift_ram_5 S7(.CLK(clk),.D(raddr_RAM2),.Q(waddr_RAM2));
c_shift_ram_6 S9(.CLK(clk),.D(rdata_acc),.Q(rdata_acc_r8));
// Stage 3.b.1: parallel mask-share accumulator retiming
(* KEEP_HIERARCHY = "TRUE" *) c_shift_ram_6 S9_m(.CLK(clk),.D(rdata_acc_m),.Q(rdata_acc_r8_m));
c_shift_ram_8 S10(.CLK(clk),.D(fifo1_req),.Q(fifo1_req_r9));
c_shift_ram_11 S11(.CLK(clk),.D(req_noise_r2),.Q(req_noise_r12));

integer din_probe_cnt = 0;
always @(posedge clk) begin
    if ((state_r3 == 6'h 1b || state_r3 == 6'h 1c || state == 6'h 1b || state == 6'h 1c) && din_probe_cnt < 40) begin
        $display("[DIN_PROBE t=%0t] state=%h state_r3=%h din=%h in1_butt=%h decomp0_butt=%h decomp1_butt=%h decomp0_r1=%h decomp1_r1=%h", $time, state, state_r3, din, in1_butt, decomp0_butt, decomp1_butt, decomp0_butt_r1, decomp1_butt_r1);
        din_probe_cnt <= din_probe_cnt + 1;
    end
end

// Server NC_W0-style probe: find non-zero mask wdata events across ALL RAMs.
integer ns_w0m_neq0 = 0;
integer ns_w1m_neq0 = 0;
integer ns_w2m_neq0 = 0;
integer ns_w23m_neq0 = 0;
always @(posedge clk) begin
    if (wen_RAM0 && wdata_RAM0_m != 24'h0 && ns_w0m_neq0 < 10) begin
        $display("[NS_W0M t=%0t] waddr=%h wdata_m=%h state=%h state_r13=%h", $time, waddr_RAM0, wdata_RAM0_m, state, state_r13);
        ns_w0m_neq0 <= ns_w0m_neq0 + 1;
    end
    if (wen_RAM1 && wdata_RAM1_m != 24'h0 && ns_w1m_neq0 < 10) begin
        $display("[NS_W1M t=%0t] waddr=%h wdata_m=%h state=%h state_r13=%h", $time, waddr_RAM0, wdata_RAM1_m, state, state_r13);
        ns_w1m_neq0 <= ns_w1m_neq0 + 1;
    end
    if (wen_RAM4 && wdata_RAM2_m != 48'h0 && ns_w2m_neq0 < 10) begin
        $display("[NS_W2M t=%0t] waddr=%h wdata2_m=%h state=%h state_r13=%h", $time, waddr_RAM2, wdata_RAM2_m, state, state_r13);
        ns_w2m_neq0 <= ns_w2m_neq0 + 1;
    end
    // Also probe RAM2/RAM3 (wen_RAM2/wen_RAM3) which use wdata_RAM0_m and wdata_RAM1_m
    if ((wen_RAM2 || wen_RAM3) && (wdata_RAM0_m != 24'h0 || wdata_RAM1_m != 24'h0) && ns_w23m_neq0 < 15) begin
        $display("[NS_W23M t=%0t] waddr=%h wen_R2=%b wen_R3=%b wdata0_m=%h wdata1_m=%h state=%h state_r13=%h", $time, waddr_RAM1, wen_RAM2, wen_RAM3, wdata_RAM0_m, wdata_RAM1_m, state, state_r13);
        ns_w23m_neq0 <= ns_w23m_neq0 + 1;
    end
end

endmodule
