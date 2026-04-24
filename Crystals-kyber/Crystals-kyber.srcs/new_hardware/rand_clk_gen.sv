`timescale 1ps/1ps
// Randomized clock generator for side-channel countermeasure.
//
// Architecture (per paper Section 4.1):
//   MMCME2_ADV generates 5 frequencies from a 100 MHz base clock:
//     f1=125 MHz (CLKOUT0), f2=200 MHz (CLKOUT1)  -> Core 1 candidates
//     f3=167 MHz (CLKOUT2), f4=83 MHz  (CLKOUT3)  -> Core 2 candidates
//     f5=50  MHz (CLKOUT4)                         -> clocks SEL2 register
//   Two BUFGCTRL primitives select between candidate pairs on the global
//   clock network. Each BUFGCTRL is fed by a two-FF synchronizer chain
//   (one per clock domain) to guarantee glitch-free switching.
//   SEL1 is registered on fBASE; SEL2 is registered on f5.
//   Both select signals are driven by the same 1-bit RNG output but sampled
//   at different frequencies, so they switch asynchronously relative to each other.
//   CE0/CE1 on each BUFGCTRL are tied to mmcm_locked, suppressing output
//   until the MMCM has stabilised. PRESELECT_I0=TRUE holds the output on
//   the slower clock (I0) before lock.
//
// Parameters:
//   USE_TRNG        - 0: XORShift PRNG (default), 1: Cryptech TRNG
//   PRNG_SEED       - Initial seed for PRNG mode (ignored when USE_TRNG=1)
//
// Ports:
//   clk_base_i      - 100 MHz board/system clock input
//   reset_i         - active-low reset
//   avalanche_noise_i - physical entropy input for TRNG (tie to 1'b0 for PRNG)
//   locked_o        - MMCM LOCKED output
//   frand1_o        - randomized clock for Kyber Core 1
//   frand2_o        - randomized clock for Kyber Core 2

module rand_clk_gen #(
    parameter USE_TRNG  = 0,
    parameter PRNG_SEED = 32'hDEADBEEF
)(
     input  logic clk_base_i
    ,input  logic reset_i           // active-low
    ,input  logic avalanche_noise_i // TRNG only; tie to 1'b0 for PRNG
    ,output logic locked_o
    ,output logic frand1_o
    ,output logic frand2_o
);

    // -------------------------------------------------------------------------
    // MMCME2_ADV: 100 MHz -> VCO 1000 MHz (MULT=10, DIVCLK=1)
    //   CLKOUT0: 1000/8   = 125   MHz  (f1, Core1 candidate A)
    //   CLKOUT1: 1000/5   = 200   MHz  (f2, Core1 candidate B)
    //   CLKOUT2: 1000/6   = 166.7 MHz  (f3, Core2 candidate A)
    //   CLKOUT3: 1000/12  = 83.3  MHz  (f4, Core2 candidate B)
    //   CLKOUT4: 1000/20  = 50    MHz  (f5, SEL2 clock)
    // -------------------------------------------------------------------------
    logic f1, f2, f3, f4, f5;
    logic clkfb;
    logic mmcm_locked;

    MMCME2_ADV #(
        .BANDWIDTH          ("OPTIMIZED"),
        .CLKFBOUT_MULT_F    (10.0),
        .CLKFBOUT_PHASE     (0.0),
        .CLKIN1_PERIOD      (10.0),   // 100 MHz
        .CLKIN2_PERIOD      (10.0),
        .DIVCLK_DIVIDE      (1),
        .REF_JITTER1        (0.010),
        .REF_JITTER2        (0.010),
        .STARTUP_WAIT       ("FALSE"),
        .COMPENSATION       ("ZHOLD"),
        // f1 = 125 MHz
        .CLKOUT0_DIVIDE_F   (8.0),
        .CLKOUT0_PHASE      (0.0),
        .CLKOUT0_DUTY_CYCLE (0.5),
        .CLKOUT0_USE_FINE_PS("FALSE"),
        // f2 = 200 MHz
        .CLKOUT1_DIVIDE     (5),
        .CLKOUT1_PHASE      (0.0),
        .CLKOUT1_DUTY_CYCLE (0.5),
        .CLKOUT1_USE_FINE_PS("FALSE"),
        // f3 = 166.7 MHz
        .CLKOUT2_DIVIDE     (6),
        .CLKOUT2_PHASE      (0.0),
        .CLKOUT2_DUTY_CYCLE (0.5),
        .CLKOUT2_USE_FINE_PS("FALSE"),
        // f4 = 83.3 MHz
        .CLKOUT3_DIVIDE     (12),
        .CLKOUT3_PHASE      (0.0),
        .CLKOUT3_DUTY_CYCLE (0.5),
        .CLKOUT3_USE_FINE_PS("FALSE"),
        // f5 = 50 MHz (SEL2 register clock)
        .CLKOUT4_DIVIDE     (20),
        .CLKOUT4_PHASE      (0.0),
        .CLKOUT4_DUTY_CYCLE (0.5),
        .CLKOUT4_CASCADE    ("FALSE"),
        .CLKOUT4_USE_FINE_PS("FALSE"),
        // unused outputs
        .CLKOUT5_DIVIDE     (1),
        .CLKOUT5_PHASE      (0.0),
        .CLKOUT5_DUTY_CYCLE (0.5),
        .CLKOUT5_USE_FINE_PS("FALSE"),
        .CLKOUT6_DIVIDE     (1),
        .CLKOUT6_PHASE      (0.0),
        .CLKOUT6_DUTY_CYCLE (0.5),
        .CLKOUT6_USE_FINE_PS("FALSE"),
        .CLKFBOUT_USE_FINE_PS("FALSE"),
        .SS_EN              ("FALSE"),
        .SS_MODE            ("CENTER_HIGH"),
        .SS_MOD_PERIOD      (10000)
    ) mmcm_inst (
        .CLKOUT0    (f1),
        .CLKOUT0B   (),
        .CLKOUT1    (f2),
        .CLKOUT1B   (),
        .CLKOUT2    (f3),
        .CLKOUT2B   (),
        .CLKOUT3    (f4),
        .CLKOUT3B   (),
        .CLKOUT4    (f5),
        .CLKOUT5    (),
        .CLKOUT6    (),
        .CLKFBOUT   (clkfb),
        .CLKFBOUTB  (),
        .LOCKED     (mmcm_locked),
        .CLKIN1     (clk_base_i),
        .CLKIN2     (1'b0),
        .CLKINSEL   (1'b1),        // always use CLKIN1
        .CLKFBIN    (clkfb),
        .RST        (~reset_i),    // MMCM reset is active-high
        .PWRDWN     (1'b0),
        // DRP - unused, tie off
        .DADDR      (7'h0),
        .DCLK       (1'b0),
        .DEN        (1'b0),
        .DI         (16'h0),
        .DWE        (1'b0),
        .DO         (),
        .DRDY       (),
        // Phase shift - unused
        .PSCLK      (1'b0),
        .PSEN       (1'b0),
        .PSINCDEC   (1'b0),
        .PSDONE     (),
        .CLKFBSTOPPED (),
        .CLKINSTOPPED ()
    );

    assign locked_o = mmcm_locked;

    // BUFG on each MMCM output so clock signals reach fabric / synchronizers
    logic f1_buf, f2_buf, f3_buf, f4_buf, f5_buf;
    BUFG bufg_f1 (.I(f1), .O(f1_buf));
    BUFG bufg_f2 (.I(f2), .O(f2_buf));
    BUFG bufg_f3 (.I(f3), .O(f3_buf));
    BUFG bufg_f4 (.I(f4), .O(f4_buf));
    BUFG bufg_f5 (.I(f5), .O(f5_buf));

    // -------------------------------------------------------------------------
    // RNG: produces one random bit per cycle on rng_bit.
    // Both SEL chains sample the same rng_bit source but at different clock
    // rates, so they switch asynchronously relative to each other.
    // -------------------------------------------------------------------------
    logic rng_bit, rng_valid;

    rng #(
        .USE_TRNG (USE_TRNG),
        .SEED_VAL (PRNG_SEED)
    ) rng_inst (
        .clk_i            (clk_base_i),
        .reset_i          (reset_i),
        .avalanche_noise_i(avalanche_noise_i),
        .rng_bit_o        (rng_bit),
        .rng_valid_o      (rng_valid)
    );

    // -------------------------------------------------------------------------
    // SEL registers: both sample rng_bit but at different clock rates.
    // Two-FF synchronizer per domain is required by BUFGCTRL for glitch-free
    // switching — S0/S1 must only transition when the corresponding clock is low.
    //
    // Core1 synchronizer: clocked by f1 (125 MHz), drives S0 of bufgctrl1
    // Core1 synchronizer: clocked by f2 (200 MHz), drives S1 of bufgctrl1
    // Core2 synchronizer: clocked by f3 (167 MHz), drives S0 of bufgctrl2
    // Core2 synchronizer: clocked by f4 (83 MHz),  drives S1 of bufgctrl2
    //
    // The RNG bit is pre-registered on clk_base_i (SEL1) and f5 (SEL2)
    // before feeding the per-clock synchronizer chains, so the two BUFGCTRL
    // select signals switch at unrelated times.
    // -------------------------------------------------------------------------

    // Pre-registration on base and f5
    logic sel1_pre, sel2_pre;

    D_FF sel1_pre_ff (.d(rng_bit), .q(sel1_pre), .clk(clk_base_i), .reset(reset_i));
    D_FF sel2_pre_ff (.d(rng_bit), .q(sel2_pre), .clk(f5_buf),     .reset(reset_i));

    // Core1: synchronizer chains into f1 and f2 domains
    logic s0_1_mid, s0_1, s1_1_mid, s1_1;

    D_FF s0_1_ff0 (.d(sel1_pre),  .q(s0_1_mid), .clk(f1_buf), .reset(reset_i));
    D_FF s0_1_ff1 (.d(s0_1_mid),  .q(s0_1),     .clk(f1_buf), .reset(reset_i));
    D_FF s1_1_ff0 (.d(~sel1_pre), .q(s1_1_mid), .clk(f2_buf), .reset(reset_i));
    D_FF s1_1_ff1 (.d(s1_1_mid),  .q(s1_1),     .clk(f2_buf), .reset(reset_i));

    // Core2: synchronizer chains into f3 and f4 domains
    logic s0_2_mid, s0_2, s1_2_mid, s1_2;

    D_FF s0_2_ff0 (.d(sel2_pre),  .q(s0_2_mid), .clk(f3_buf), .reset(reset_i));
    D_FF s0_2_ff1 (.d(s0_2_mid),  .q(s0_2),     .clk(f3_buf), .reset(reset_i));
    D_FF s1_2_ff0 (.d(~sel2_pre), .q(s1_2_mid), .clk(f4_buf), .reset(reset_i));
    D_FF s1_2_ff1 (.d(s1_2_mid),  .q(s1_2),     .clk(f4_buf), .reset(reset_i));

    // -------------------------------------------------------------------------
    // BUFGCTRL: glitch-free 2:1 clock mux on the global clock network.
    //   I0 = slower candidate (PRESELECT_I0=TRUE: default before lock)
    //   I1 = faster candidate
    //   CE0/CE1 gated by mmcm_locked: no output until MMCM is stable
    //   S0 selects I0 (active high); S1 selects I1 (active high)
    //   S0 and S1 must be mutually exclusive (guaranteed by ~sel logic above)
    // -------------------------------------------------------------------------
    BUFGCTRL #(
        .INIT_OUT      (0),
        .PRESELECT_I0  ("TRUE"),
        .PRESELECT_I1  ("FALSE")
    ) bufgctrl1 (
        .O       (frand1_o),
        .I0      (f1_buf),       // 125 MHz
        .I1      (f2_buf),       // 200 MHz
        .S0      (s0_1),         // select I0 when sel1_pre=1
        .S1      (s1_1),         // select I1 when sel1_pre=0
        .CE0     (mmcm_locked),
        .CE1     (mmcm_locked),
        .IGNORE0 (1'b0),
        .IGNORE1 (1'b0)
    );

    BUFGCTRL #(
        .INIT_OUT      (0),
        .PRESELECT_I0  ("TRUE"),
        .PRESELECT_I1  ("FALSE")
    ) bufgctrl2 (
        .O       (frand2_o),
        .I0      (f3_buf),       // 167 MHz
        .I1      (f4_buf),       // 83 MHz
        .S0      (s0_2),         // select I0 when sel2_pre=1
        .S1      (s1_2),         // select I1 when sel2_pre=0
        .CE0     (mmcm_locked),
        .CE1     (mmcm_locked),
        .IGNORE0 (1'b0),
        .IGNORE1 (1'b0)
    );

endmodule
