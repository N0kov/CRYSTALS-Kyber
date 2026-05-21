`timescale 1ns/1ps
// =============================================================================
// mask_polyfifo.sv
// -----------------------------------------------------------------------------
// Phase A Stage 2 of plan_masked_ntt_phaseA.md.
//
// SCOPE: Stage 2 minimum viable — latches a SINGLE mask value at
// `ntt_call_start` and presents it as a constant polynomial mask for the
// duration of the NTT call. This is sufficient to validate the mask flow
// through both NTT_cores and produce a deterministic, mask-correlated
// KAT failure (the stage's documented exit condition).
//
// Stage 3 will replace this with either a 256-deep polynomial FIFO (one
// fresh value per coefficient) OR full inline mask propagation through
// the unmask-before-quotient logic.
//
// Why a constant mask works mathematically for KAT-failure validation:
//   NTT(a + r_const_poly) = NTT(a) + NTT(r_const_poly)
// where r_const_poly = (r,r,r,...,r) is the constant polynomial. NTT of a
// constant polynomial puts all the mass in the DC coefficient and zeros
// elsewhere. The corruption is therefore concentrated at one specific
// coefficient position, making the failure mode trivially diagnosable.
//
// Protocol:
//   1. Caller pulses `ntt_call_start` once at the beginning of an NTT call.
//   2. Module flushes mask_csprng's pending state and waits for next valid sample.
//   3. When a fresh sample arrives, latch it as `mask_out` and assert `ready`.
//   4. `mask_out` holds steady for the rest of the call.
//   5. Next `ntt_call_start` re-flushes and captures a new mask.
// =============================================================================

module mask_polyfifo #(
    parameter USE_TRNG  = 0,
    parameter SEED_VAL  = 32'hCAFEBABE,
    parameter [11:0] Q  = 12'h D01
) (
    input  logic        clk_i,
    input  logic        reset_i,           // active-low
    input  logic        avalanche_noise_i, // TRNG only
    input  logic        ntt_call_start,    // 1-cycle pulse: capture new mask
    output logic        ready,             // mask_out is valid for the call
    output logic [11:0] mask_out
);

    // -------------------------------------------------------------------------
    // Underlying CSPRNG (Phase 1 module)
    // -------------------------------------------------------------------------
    logic        csprng_req;
    logic        csprng_valid;
    logic [11:0] csprng_r;

    mask_csprng #(
        .USE_TRNG (USE_TRNG),
        .SEED_VAL (SEED_VAL),
        .Q        (Q)
    ) u_csprng (
        .clk_i             (clk_i),
        .reset_i           (reset_i),
        .avalanche_noise_i (avalanche_noise_i),
        .ntt_call_start    (ntt_call_start),
        .req               (csprng_req),
        .valid             (csprng_valid),
        .r                 (csprng_r)
    );

    // -------------------------------------------------------------------------
    // FSM: WAITING (after ntt_call_start, awaiting fresh sample) → READY (mask
    // latched, holds steady).
    // -------------------------------------------------------------------------
    typedef enum logic [0:0] {
        S_WAITING,
        S_READY
    } pf_state_t;

    pf_state_t state;
    (* DONT_TOUCH = "TRUE" *) reg [11:0] mask_latched;

    // Request a sample from CSPRNG only when waiting for one
    assign csprng_req = csprng_valid && (state == S_WAITING);

    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) begin
            state        <= S_WAITING;
            mask_latched <= 12'h0;
        end else begin
            if (ntt_call_start) begin
                // Restart capture
                state        <= S_WAITING;
                // mask_latched preserved until new sample arrives
            end else begin
                unique case (state)
                    S_WAITING: begin
                        if (csprng_valid) begin
                            mask_latched <= csprng_r;
                            state        <= S_READY;
                        end
                    end
                    S_READY: begin
                        // Hold steady
                    end
                    default: state <= S_WAITING;
                endcase
            end
        end
    end

    assign ready    = (state == S_READY);
    assign mask_out = mask_latched;

endmodule
