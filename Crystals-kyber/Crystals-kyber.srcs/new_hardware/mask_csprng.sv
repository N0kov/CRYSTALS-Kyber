`timescale 1ns/1ps
// =============================================================================
// mask_csprng.sv
// -----------------------------------------------------------------------------
// Phase 1 of plan_masked_ntt_option1.md.
//
// Per-coefficient mask source for the masked NTT. Wraps the existing rng.sv
// (Cryptech TRNG or XORShift PRNG, parameterizable) and produces uniform
// 12-bit samples in the range [0, Q) where Q = 3329 is the Kyber prime.
//
// Strategy: rejection sampling.
//   - Collect 12 bits from rng.sv into a candidate register.
//   - If candidate < Q, latch it as the next mask sample and assert `valid`.
//   - If candidate >= Q, discard and start collecting the next 12 bits.
//
// Rejection rate is (4096 - 3329) / 4096 ≈ 18.7%. Average cycles per sample
// is therefore 12 / (1 - 0.187) ≈ 14.76 in PRNG mode (one bit per clock).
// In TRNG mode the underlying rng.sv emits bits sparsely; expect proportional
// slowdown, dominated by the TRNG read latency.
//
// Per-NTT-call freshness: pulse `ntt_call_start` at the beginning of each NTT
// invocation. This flushes any partial accumulator and any pending candidate,
// guaranteeing that the mask sequence for one NTT call cannot extend into the
// next. The consumer (masked NTT wrapper) is responsible for issuing this
// pulse exactly once per NTT call. Mask SECURITY DOES NOT depend on this
// pulse alone — the underlying rng.sv must also be reseeded with fresh
// entropy per call. In PRNG mode that means re-asserting the rng's reset
// (and providing a fresh SEED_VAL via parameter override). In TRNG mode the
// Cryptech CSPRNG handles its own reseeding from avalanche_noise_i.
//
// Output handshake (req / valid / r):
//   - When valid==1, r holds a fresh, uniform-mod-Q sample.
//   - Consumer asserts `req` for one cycle to consume r. valid drops on the
//     next cycle and accumulation resumes for the next sample.
//   - If consumer doesn't request, r holds steady — accumulation pauses to
//     avoid clobbering the latched sample.
//
// Caveats / known limitations:
//   1. NOT side-channel hardened. The accumulator and rejection compare
//      themselves leak information about r — but only AFTER r has been
//      committed, and the mask r is uncorrelated with the secret it is about
//      to be added to. This is acceptable for the wrapper-mask use case.
//   2. Rejection sampling has a (cryptographically negligible) tail latency:
//      worst-case cycle count for one sample is unbounded. For the masked
//      NTT this is fine because the NTT itself takes thousands of cycles, so
//      the CSPRNG can buffer several samples ahead. If a future caller
//      needs guaranteed low-latency mask delivery, a small FIFO (e.g. 4-deep)
//      between this module and the consumer is recommended.
//   3. Glitch behavior on r is NOT proven. maskVerif Tier 1 (Phase 4) will
//      evaluate the wrapper's overall security including this signal.
// =============================================================================

module mask_csprng #(
    parameter USE_TRNG  = 0,
    parameter SEED_VAL  = 32'hCAFEBABE,
    parameter [11:0] Q  = 12'h D01    // Kyber prime: 3329
) (
    input  logic        clk_i,
    input  logic        reset_i,           // active-low (matches rng.sv convention)
    input  logic        avalanche_noise_i, // TRNG only; tie 1'b0 in PRNG mode
    input  logic        ntt_call_start,    // active-high pulse: flush state
    input  logic        req,               // consumer pulse: take current sample
    output logic        valid,             // r is ready
    output logic [11:0] r                  // uniform sample in [0, Q)
);

    // -------------------------------------------------------------------------
    // Underlying 1-bit RNG
    // -------------------------------------------------------------------------
    logic rng_bit;
    logic rng_valid;

    rng #(
        .USE_TRNG (USE_TRNG),
        .SEED_VAL (SEED_VAL)
    ) rng_inst (
        .clk_i             (clk_i),
        .reset_i           (reset_i),
        .avalanche_noise_i (avalanche_noise_i),
        .rng_bit_o         (rng_bit),
        .rng_valid_o       (rng_valid)
    );

    // -------------------------------------------------------------------------
    // ntt_call_start rising-edge detector: forces a flush even if the caller
    // holds the signal high for multiple cycles.
    // -------------------------------------------------------------------------
    logic ntt_call_start_d1;
    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i)
            ntt_call_start_d1 <= 1'b0;
        else
            ntt_call_start_d1 <= ntt_call_start;
    end
    wire flush = ntt_call_start & ~ntt_call_start_d1;

    // -------------------------------------------------------------------------
    // Bit accumulator + candidate latch
    // -------------------------------------------------------------------------
    logic [11:0] sr;          // shift register: collects 12 bits
    logic [3:0]  count;       // bits collected so far (0..12)
    logic [11:0] r_latched;
    logic        valid_latched;

    // Candidate is purely combinational — the 12 bits already in `sr` plus
    // the incoming `rng_bit`. Declared at module scope so the synth tool
    // doesn't mis-infer a register from the inline `logic` declaration.
    wire [11:0] cand_comb = {sr[10:0], rng_bit};

    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) begin
            sr            <= 12'h0;
            count         <= 4'h0;
            r_latched     <= 12'h0;
            valid_latched <= 1'b0;
        end else begin
            // Consumer takes current sample first (clears latch for new candidate)
            if (req && valid_latched) begin
                valid_latched <= 1'b0;
            end

            if (flush) begin
                // ntt_call_start pulse: discard partial accum and any pending
                // candidate. Mask sequence restarts fresh. Note: the underlying
                // rng's state is NOT reset here — that is the caller's
                // responsibility (provide fresh SEED_VAL or rely on TRNG
                // reseeding). This module only guarantees that mask SAMPLES
                // do not bleed across the flush boundary.
                sr            <= 12'h0;
                count         <= 4'h0;
                valid_latched <= 1'b0;
            end else if (rng_valid && !valid_latched) begin
                // Accumulate bits as long as no sample is pending consumption.
                if (count == 4'd11) begin
                    // 12th bit completes the candidate (cand_comb).
                    if (cand_comb < Q) begin
                        r_latched     <= cand_comb;
                        valid_latched <= 1'b1;
                    end
                    // Whether accepted or rejected, restart accumulation
                    count <= 4'h0;
                    sr    <= 12'h0;
                end else begin
                    sr    <= {sr[10:0], rng_bit};
                    count <= count + 1'b1;
                end
            end
        end
    end

    assign valid = valid_latched;
    assign r     = r_latched;

endmodule
