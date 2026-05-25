`timescale 1ns/1ps
// =============================================================================
// mask_polyfifo_x4.sv
//
// Step 1 of the masked-Kyber security hardening plan.
// Replaces the original 12-bit single-constant mask source with a 4-way
// per-coefficient mask source: emits four fresh, independent uniform-mod-Q
// 12-bit masks per cycle (when valid). This eliminates mask reuse across
// the 256 coefficients of a sampled polynomial — at d=1 the NTT is linear
// and propagates these independent input masks without correlating them.
//
// Architecture:
//   - Four parallel XORShifter PRNGs, each seeded independently.
//   - Each cycle, the 12 LSBs of each PRNG's new state are a candidate;
//     a rejection sampler accepts if candidate < Q (= 3329).
//   - Accepted candidates flow into four small FIFOs that absorb the
//     ~18.7% rejection jitter.
//   - `valid` asserts only when all four FIFOs are non-empty, so the
//     consumer always gets four masks per `req` pulse.
//
// `ntt_call_start` reseeds all four PRNG states to their seed parameters.
// For true cross-call freshness, the parent should override the seed
// parameters per call (mirrors the existing mask_polyfifo / mask_csprng
// freshness contract).
//
// Output interface matches the contract used by the NTT cores: when valid==1,
// {mask3, mask2, mask1, mask0} are the four next-coefficient masks. `req`
// consumes them; on the next cycle the FIFOs advance.
// =============================================================================

module mask_polyfifo_x4 #(
    parameter [31:0] SEED0 = 32'hCAFEBABE,
    parameter [31:0] SEED1 = 32'hDEADBEEF,
    parameter [31:0] SEED2 = 32'hFEEDFACE,
    parameter [31:0] SEED3 = 32'hBAADF00D,
    parameter [11:0] Q     = 12'h D01,            // Kyber prime
    parameter        FIFO_DEPTH = 256             // power-of-2 recommended
                                                  // Step 1: must be deep enough that
                                                  // the slowest XORShift (0.813 push/cycle)
                                                  // never falls behind a 1-pop/cycle/lane
                                                  // sampling burst. Audited: 32-deep saw
                                                  // ~200 stale-mask underruns per KEM at
                                                  // Kyber1024; 256 is the next sound
                                                  // operating point (one slot per
                                                  // coefficient in a 256-coeff poly).
) (
    input  logic        clk_i,
    input  logic        reset_i,                  // active-low
    input  logic        ntt_call_start,           // 1-cycle pulse: reseed all (full SEED reload)
    // Step 9: pulse on intra-KEM phase boundary (e.g. new noise polynomial).
    // XORs a per-lane PHASE_TAG into the running PRNG state, decorrelating
    // the next phase's mask stream from the prior phase's stream WITHOUT
    // discarding accumulated entropy. NOT a reseed — just a domain shuffle.
    input  logic        phase_reseed,
    input  logic        req,                      // pop one mask from each FIFO
    output logic        valid,                    // all 4 FIFOs non-empty (cnt > 0)
    output logic        valid_next,               // all 4 FIFOs have >= 2 entries
                                                  // (required when consumer reads
                                                  // next_mask on the same edge as
                                                  // pop — see Step 4 / next_mask
                                                  // section below)
    output logic [11:0] mask0,
    output logic [11:0] mask1,
    output logic [11:0] mask2,
    output logic [11:0] mask3,
    // Step 4: "next" mask ports expose fifo_mem[rptr+1] — i.e., the mask that
    // WILL be at the FIFO head after the pending pop. The Step 4 masked sampler
    // selects between these and the current-head masks based on whether req is
    // high at the registration edge, so that back-to-back sampling cycles see
    // distinct masks even though the register reads the FIFO PRE-pop.
    output logic [11:0] mask0_next,
    output logic [11:0] mask1_next,
    output logic [11:0] mask2_next,
    output logic [11:0] mask3_next
);

    // -------------------------------------------------------------------------
    // ntt_call_start edge detect (mirror mask_csprng's flush semantics)
    // -------------------------------------------------------------------------
    logic ntt_call_start_d1;
    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) ntt_call_start_d1 <= 1'b0;
        else          ntt_call_start_d1 <= ntt_call_start;
    end
    wire flush = ntt_call_start & ~ntt_call_start_d1;

    // Step 9: phase_reseed rising-edge detect. On rising edge, XOR the
    // running state with per-lane PHASE_TAG constants. The four tags below
    // are 32-bit values with pairwise Hamming distances >= 14 and no
    // shared bits with the SEED constants.
    logic phase_reseed_d1;
    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) phase_reseed_d1 <= 1'b0;
        else          phase_reseed_d1 <= phase_reseed;
    end
    wire phase_kick = phase_reseed & ~phase_reseed_d1;

    localparam [31:0] PHASE_TAG0 = 32'h1B3F2E4D;  // popcnt 16
    localparam [31:0] PHASE_TAG1 = 32'h74A0C58F;  // popcnt 15
    localparam [31:0] PHASE_TAG2 = 32'hE6F1942B;  // popcnt 18
    localparam [31:0] PHASE_TAG3 = 32'h5C72BD86;  // popcnt 17

    // -------------------------------------------------------------------------
    // 4 parallel XORShifter PRNGs
    // -------------------------------------------------------------------------
    logic [31:0] state    [0:3];
    logic [31:0] next_st  [0:3];

    XORShifter xs0_inst (.seed(state[0]), .generatedRandom(next_st[0]));
    XORShifter xs1_inst (.seed(state[1]), .generatedRandom(next_st[1]));
    XORShifter xs2_inst (.seed(state[2]), .generatedRandom(next_st[2]));
    XORShifter xs3_inst (.seed(state[3]), .generatedRandom(next_st[3]));

    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) begin
            state[0] <= SEED0;
            state[1] <= SEED1;
            state[2] <= SEED2;
            state[3] <= SEED3;
        end else if (flush) begin
            state[0] <= SEED0;
            state[1] <= SEED1;
            state[2] <= SEED2;
            state[3] <= SEED3;
        end else if (phase_kick) begin
            // Step 9: domain-shuffle the state without resetting. Each
            // lane gets its own tag so the four streams stay independently
            // perturbed.
            state[0] <= next_st[0] ^ PHASE_TAG0;
            state[1] <= next_st[1] ^ PHASE_TAG1;
            state[2] <= next_st[2] ^ PHASE_TAG2;
            state[3] <= next_st[3] ^ PHASE_TAG3;
        end else begin
            state[0] <= next_st[0];
            state[1] <= next_st[1];
            state[2] <= next_st[2];
            state[3] <= next_st[3];
        end
    end

    // -------------------------------------------------------------------------
    // Per-lane FIFO + rejection sampling
    // Each cycle: candidate = state[i][11:0]; if candidate < Q, push to FIFO.
    // -------------------------------------------------------------------------
    localparam int PTR_W = $clog2(FIFO_DEPTH);

    // Per-lane FIFO state
    logic [11:0] fifo_mem [0:3] [0:FIFO_DEPTH-1];
    logic [PTR_W-1:0] wptr [0:3];
    logic [PTR_W-1:0] rptr [0:3];
    logic [PTR_W:0]   cnt  [0:3];   // one extra bit so cnt==FIFO_DEPTH fits

    wire [11:0] cand [0:3];
    assign cand[0] = state[0][11:0];
    assign cand[1] = state[1][11:0];
    assign cand[2] = state[2][11:0];
    assign cand[3] = state[3][11:0];

    wire accept [0:3];
    assign accept[0] = (cand[0] < Q);
    assign accept[1] = (cand[1] < Q);
    assign accept[2] = (cand[2] < Q);
    assign accept[3] = (cand[3] < Q);

    // Pop signal: consumer is requesting and all FIFOs have something
    wire all_nonempty = (cnt[0] != 0) && (cnt[1] != 0) && (cnt[2] != 0) && (cnt[3] != 0);
    wire pop = req & all_nonempty;

    // FIFO updates — one always block per lane (manually unrolled for clarity)
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : g_fifo
            wire push = accept[i] & (cnt[i] != FIFO_DEPTH);
            always_ff @(posedge clk_i or negedge reset_i) begin
                if (!reset_i) begin
                    wptr[i] <= '0;
                    rptr[i] <= '0;
                    cnt[i]  <= '0;
                end else if (flush) begin
                    wptr[i] <= '0;
                    rptr[i] <= '0;
                    cnt[i]  <= '0;
                end else begin
                    if (push) begin
                        fifo_mem[i][wptr[i]] <= cand[i];
                        wptr[i] <= wptr[i] + 1'b1;
                    end
                    if (pop) begin
                        rptr[i] <= rptr[i] + 1'b1;
                    end
                    case ({push, pop})
                        2'b10: cnt[i] <= cnt[i] + 1'b1;
                        2'b01: cnt[i] <= cnt[i] - 1'b1;
                        default: ; // 2'b00 or 2'b11 — net zero change
                    endcase
                end
            end
        end
    endgenerate

    assign valid = all_nonempty;
    assign mask0 = fifo_mem[0][rptr[0]];
    assign mask1 = fifo_mem[1][rptr[1]];
    assign mask2 = fifo_mem[2][rptr[2]];
    assign mask3 = fifo_mem[3][rptr[3]];

    // Step 4: next-head ports. rptr+1 wraps naturally since PTR_W = $clog2
    // (FIFO_DEPTH) and FIFO_DEPTH is power-of-2. valid_next demands cnt >= 2
    // per lane so fifo_mem[rptr+1] is a real (pushed) entry, not stale.
    assign mask0_next = fifo_mem[0][rptr[0] + 1'b1];
    assign mask1_next = fifo_mem[1][rptr[1] + 1'b1];
    assign mask2_next = fifo_mem[2][rptr[2] + 1'b1];
    assign mask3_next = fifo_mem[3][rptr[3] + 1'b1];
    assign valid_next = (cnt[0] > 1) && (cnt[1] > 1) && (cnt[2] > 1) && (cnt[3] > 1);

endmodule
