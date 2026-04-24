`timescale 1ns/1ps
// Protected top-level: two Kyber cores each driven by an independent
// randomized clock, implementing the duplication + clock randomization
// countermeasure from Section 4 of the paper.
//
// Only Core1 (primary) output is used externally. Core2 (dummy) runs
// concurrently on a different randomized clock with a different key pair
// to produce algorithmic noise that masks Core1's power trace.
//
// Parameters:
//   USE_TRNG    - passed to rand_clk_gen/rng: 0=PRNG, 1=TRNG
//   PRNG_SEED   - initial seed when USE_TRNG=0
//
// Ports mirror Kyber_top, plus:
//   clk_base_i      - 100 MHz reference clock for MMCM and PRNG
//   avalanche_noise_i - physical entropy for TRNG (tie low for PRNG)

module Kyber_top_protected #(
    parameter USE_TRNG  = 0,
    parameter PRNG_SEED = 32'hDEADBEEF
)(
    input  logic       clk_base_i,
    input  logic       rst,
    input  logic       start,
    input  logic [2:0] k,
    // TRNG only; tie to 1'b0 when USE_TRNG=0
    input  logic       avalanche_noise_i,
    // Primary core outputs only
    output logic       ready_pk,
    output logic       ready_c,
    output logic       req_pk,
    output logic       req_c,
    output logic       valid_server,
    output logic       valid_client,
    output logic [31:0] dout_server,
    output logic [31:0] dout_client,
    // MMCM lock status
    output logic       locked
);

    // -------------------------------------------------------------------------
    // Randomized clock generator
    // -------------------------------------------------------------------------
    logic frand1, frand2;

    rand_clk_gen #(
        .USE_TRNG  (USE_TRNG),
        .PRNG_SEED (PRNG_SEED)
    ) clk_gen (
        .clk_base_i       (clk_base_i),
        .reset_i          (~rst),          // rand_clk_gen uses active-low reset
        .avalanche_noise_i(avalanche_noise_i),
        .locked_o         (locked),
        .frand1_o         (frand1),
        .frand2_o         (frand2)
    );

    // -------------------------------------------------------------------------
    // BUFG on each randomized clock before reaching the Kyber cores (Fig. 3)
    // -------------------------------------------------------------------------
    logic clk1, clk2;

    BUFG bufg_core1 (.I(frand1), .O(clk1));
    BUFG bufg_core2 (.I(frand2), .O(clk2));

    // -------------------------------------------------------------------------
    // Reset: assert whenever locked=0 (MMCM not ready) or rst is asserted.
    // Kyber_Server/Client use active-high synchronous reset.
    // We generate a 4-cycle synchronous reset pulse on clk1/clk2 after lock
    // so the FSMs see a clean reset on their actual clock domain.
    // -------------------------------------------------------------------------
    logic rst_core1, rst_core2;
    logic [2:0] rst1_sr, rst2_sr;

    always_ff @(posedge clk1)
        rst1_sr <= {rst1_sr[1:0], (~locked | rst)};
    always_ff @(posedge clk2)
        rst2_sr <= {rst2_sr[1:0], (~locked | rst)};

    assign rst_core1 = |rst1_sr;
    assign rst_core2 = |rst2_sr;

    // -------------------------------------------------------------------------
    // Primary Kyber core (Core1) — real key pair (count=0 KAT seeds)
    // -------------------------------------------------------------------------
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

    // -------------------------------------------------------------------------
    // Dummy Kyber core (Core2) — different key pair (count=1 KAT seeds).
    // Must differ from Core1 and remain fixed across executions so the noise
    // it produces is algorithmic rather than random (per paper Section 4.2).
    // -------------------------------------------------------------------------
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

endmodule
