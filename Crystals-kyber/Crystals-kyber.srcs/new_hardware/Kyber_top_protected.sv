`timescale 1ns/1ps
// Kyber_top_protected
// -----------------------------------------------------------------------------
// Top-level wrapper offering a synthesis-time choice of SCA countermeasure.
// Set the COUNTERMEASURE parameter to one of:
//
//   "DUPLICATION" — Two Kyber cores driven by independent randomized clocks
//                   (the original Section-4 paper countermeasure: duplication
//                   plus clock randomization). Status: working, validated by
//                   regression_check.sh against k=4 KAT.
//                   Cost: ~2x Kyber area + MMCM + BUFGCTRLs.
//                   SCA strength: ~10x-100x NTD vs unprotected; defeated by
//                   modern aligned-trace + template attacks.
//
//   "MASKING"     — Single Kyber core, mask-protected NTT (first-order
//                   arithmetic masking). PROVABLY first-order secure if a
//                   strong CSPRNG feeds fresh masks per NTT call.
//                   Status: top-level structure in place; the masked NTT
//                   itself is a TODO — see the gen_mask block below.
//                   Cost: ~2x NTT area, no clock infrastructure.
//                   SCA strength: ~10^4-10^6x NTD vs unprotected when
//                   correctly implemented.
//
//   "NONE"        — Single Kyber core, no protection. For baseline TVLA /
//                   power-trace collection only. Do not synthesize for
//                   production.
//
// All three modes expose the same external port set so the same testbench
// can drive any configuration.
//
// Parameters:
//   COUNTERMEASURE - one of "DUPLICATION" / "MASKING" / "NONE" (string)
//   USE_TRNG       - DUPLICATION mode only: 0=PRNG, 1=Cryptech TRNG
//   PRNG_SEED      - DUPLICATION mode only: PRNG initial seed
//
// Ports mirror the original Kyber_top_protected; clk_base_i is the system
// clock for all modes. In DUPLICATION mode it feeds the MMCM; in
// MASKING/NONE modes it drives the single Kyber core directly.

module Kyber_top_protected #(
    parameter COUNTERMEASURE = "DUPLICATION",
    parameter USE_TRNG       = 0,
    parameter PRNG_SEED      = 32'hDEADBEEF
)(
    input  logic       clk_base_i,
    input  logic       rst,
    input  logic       start,
    input  logic [2:0] k,
    input  logic       avalanche_noise_i,
    output logic       ready_pk,
    output logic       ready_c,
    output logic       req_pk,
    output logic       req_c,
    output logic       valid_server,
    output logic       valid_client,
    output logic [31:0] dout_server,
    output logic [31:0] dout_client,
    output logic       locked
);

generate

// =============================================================================
//  DUPLICATION mode  (paper Section 4: duplication + clock randomization)
// =============================================================================
if (COUNTERMEASURE == "DUPLICATION") begin: gen_duplication

    logic frand1, frand2;

    rand_clk_gen #(
        .USE_TRNG  (USE_TRNG),
        .PRNG_SEED (PRNG_SEED)
    ) clk_gen (
        .clk_base_i       (clk_base_i),
        .reset_i          (~rst),
        .avalanche_noise_i(avalanche_noise_i),
        .locked_o         (locked),
        .frand1_o         (frand1),
        .frand2_o         (frand2)
    );

    logic clk1, clk2;
    BUFG bufg_core1 (.I(frand1), .O(clk1));
    BUFG bufg_core2 (.I(frand2), .O(clk2));

    // Per-clock-domain reset hold (counter initialized all-1s; counts down once
    // its clock starts running, so the FSM sees a clean reset on its real clock).
    logic rst_core1, rst_core2;
    logic [3:0] rst1_cnt = 4'hF;
    logic [3:0] rst2_cnt = 4'hF;

    always_ff @(posedge clk1) begin
        if (rst || ~locked)        rst1_cnt <= 4'hF;
        else if (rst1_cnt != 0)    rst1_cnt <= rst1_cnt - 1;
    end
    always_ff @(posedge clk2) begin
        if (rst || ~locked)        rst2_cnt <= 4'hF;
        else if (rst2_cnt != 0)    rst2_cnt <= rst2_cnt - 1;
    end
    assign rst_core1 = (rst1_cnt != 0);
    assign rst_core2 = (rst2_cnt != 0);

    // Primary core (count=0 KAT seeds) — outputs go external
    Kyber_top #(
        .D_SEED(256'h 2D7F73369973CD2D0348B1CC251AD82FDD1A6BDBE4106D0CAA9476B0A035997C),
        .M_SEED(256'h 157699F676FE09CC74A8A9A379FE0EC8137F4D87E1FAC806A4BBBEA5F7037C14)
    ) core1 (
        .clk        (clk1),
        .rst        (rst_core1),
        .start      (start),
        .k          (k),
        .ready_pk   (ready_pk),
        .ready_c    (ready_c),
        .req_pk     (req_pk),
        .req_c      (req_c),
        .valid_server(valid_server),
        .valid_client(valid_client),
        .dout_server(dout_server),
        .dout_client(dout_client)
    );

    // Dummy core (count=1 KAT seeds) — provides algorithmic noise on the
    // independent clk2 randomized clock; outputs discarded.
    logic dummy_ready_pk, dummy_ready_c;
    logic dummy_req_pk,   dummy_req_c;
    logic dummy_valid_server, dummy_valid_client;
    logic [31:0] dummy_dout_server, dummy_dout_client;

    Kyber_top #(
        .D_SEED(256'h D926F38A65787A0E173FA91081EE6C40F33731730BFCA67B1C8C1D2A49930BD6),
        .M_SEED(256'h 4620D7DDDB2A8240129390744CB82AEB013E841158D1C5F63172E68CDF97E7CD)
    ) core2 (
        .clk        (clk2),
        .rst        (rst_core2),
        .start      (start),
        .k          (k),
        .ready_pk   (dummy_ready_pk),
        .ready_c    (dummy_ready_c),
        .req_pk     (dummy_req_pk),
        .req_c      (dummy_req_c),
        .valid_server(dummy_valid_server),
        .valid_client(dummy_valid_client),
        .dout_server(dummy_dout_server),
        .dout_client(dummy_dout_client)
    );

end

// =============================================================================
//  MASKING mode  (first-order arithmetic masking on the NTT)
// =============================================================================
//
// What's here today:
//   - Single Kyber core driven directly by clk_base_i (no MMCM, no duplicate)
//   - Default seeds match DUPLICATION's primary core for KAT compatibility
//   - locked = 1'b1 (no MMCM lock to wait for)
//
// What's TODO before this mode actually provides SCA protection:
//
//   1. Replace the Kyber_top instantiation below with a Kyber_top_masked
//      variant in which Kyber_Server.v / Kyber_Client.v instantiate a masked
//      NTT_core. Specifically: write NTT_core_Server_masked.v that wraps
//      NTT_core_Server.v at the streaming-protocol level, computing
//
//          masked_din  = (din  + r_mask) mod Q   on every wen
//          masked_dout = (dout - r_ntt)  mod Q   on every valid
//
//      where r_mask is a fresh CSPRNG sample per polynomial and r_ntt is
//      its NTT (computed in parallel by a second NTT_core instance).
//
//   2. Provision a CSPRNG with at least N*log2(Q) = ~3 kbits of fresh entropy
//      per masked NTT call. The Cryptech TRNG already in the project
//      (rng.sv with USE_TRNG=1) is suitable; wire it through a small FSM
//      that batches mask material into 256-coefficient blocks.
//
//   3. Verify with maskVerif (Barthe et al.) that the resulting netlist
//      satisfies the first-order probing model. Then run TVLA on a
//      ChipWhisperer/CW305 to confirm |t| < 4.5 across >= 1M traces.
//
// The existing ntt_mask_wrapper.sv in this directory is an algorithmic
// SKETCH (batch poly_in[N] / ntt_out[N] interface) that does NOT match
// NTT_core's streaming protocol. It documents the math but is not a
// drop-in module.
//
// Until the masked-NTT integration lands, this branch behaves identically
// to NONE — present only so the synthesis-time switch and the testbench
// scaffold are already in place.
// =============================================================================
else if (COUNTERMEASURE == "MASKING") begin: gen_masking

    // Hold-in-reset for first ~16 cycles after rst falls (mirrors DUPLICATION
    // mode's reset behavior so the same testbench timing works).
    logic [3:0] rst_cnt = 4'hF;
    always_ff @(posedge clk_base_i) begin
        if (rst)                  rst_cnt <= 4'hF;
        else if (rst_cnt != 0)    rst_cnt <= rst_cnt - 1;
    end
    // NOTE: must be `assign` (continuous), not `logic x = ...` which is a
    // one-time initialization at time 0 and never updates afterwards. The
    // earlier form left rst_core stuck at 1 forever and the core never left
    // reset — caught during Phase 0 verification.
    logic rst_core;
    assign rst_core = (rst_cnt != 0);

    // Phase 0 of plan_masked_ntt_option1.md: Kyber_top_masked is currently a
    // verbatim copy of Kyber_top.v with renamed module. Phase 2-3 introduce
    // the actual masking by wiring NTT_core_*_masked variants underneath.
    // Functionally identical to Kyber_top until that integration lands —
    // sole purpose at this checkpoint is to validate the scaffold compiles
    // and KAT-regresses cleanly.
    Kyber_top_masked #(
        .D_SEED(256'h 2D7F73369973CD2D0348B1CC251AD82FDD1A6BDBE4106D0CAA9476B0A035997C),
        .M_SEED(256'h 157699F676FE09CC74A8A9A379FE0EC8137F4D87E1FAC806A4BBBEA5F7037C14)
    ) core (
        .clk        (clk_base_i),
        .rst        (rst_core),
        .start      (start),
        .k          (k),
        .ready_pk   (ready_pk),
        .ready_c    (ready_c),
        .req_pk     (req_pk),
        .req_c      (req_c),
        .valid_server(valid_server),
        .valid_client(valid_client),
        .dout_server(dout_server),
        .dout_client(dout_client)
    );

    assign locked = 1'b1;  // no MMCM in this mode

end

// =============================================================================
//  NONE mode  (no countermeasure — baseline for SCA measurement)
// =============================================================================
else begin: gen_none

    logic [3:0] rst_cnt = 4'hF;
    always_ff @(posedge clk_base_i) begin
        if (rst)                  rst_cnt <= 4'hF;
        else if (rst_cnt != 0)    rst_cnt <= rst_cnt - 1;
    end
    // Continuous assignment, not one-time initializer (see gen_masking note).
    logic rst_core;
    assign rst_core = (rst_cnt != 0);

    Kyber_top #(
        .D_SEED(256'h 2D7F73369973CD2D0348B1CC251AD82FDD1A6BDBE4106D0CAA9476B0A035997C),
        .M_SEED(256'h 157699F676FE09CC74A8A9A379FE0EC8137F4D87E1FAC806A4BBBEA5F7037C14)
    ) core (
        .clk        (clk_base_i),
        .rst        (rst_core),
        .start      (start),
        .k          (k),
        .ready_pk   (ready_pk),
        .ready_c    (ready_c),
        .req_pk     (req_pk),
        .req_c      (req_c),
        .valid_server(valid_server),
        .valid_client(valid_client),
        .dout_server(dout_server),
        .dout_client(dout_client)
    );

    assign locked = 1'b1;

end

endgenerate

endmodule
