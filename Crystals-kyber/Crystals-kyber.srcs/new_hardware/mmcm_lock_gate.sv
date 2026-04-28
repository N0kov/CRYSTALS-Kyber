module mmcm_lock_gate #(
    parameter  int                SYNC_STAGES      = 2,        // range 2-4
    parameter  real               G_CLKIN_PERIOD   = 10.0,
    parameter  real               G_MULT_F         = 10.0,
    parameter  int                G_DIVCLK         = 1,
    parameter  real               G_CLKOUT0_DIVIDE = 5.0,
    parameter  int                G_CLKOUT1_DIVIDE = 7,
    parameter  int                G_CLKOUT2_DIVIDE = 6,
    parameter  int                G_CLKOUT3_DIVIDE = 8,
    parameter  int                G_CLKOUT4_DIVIDE = 20
) (
    input  logic  clk_in,
    input  logic  sys_rst,

    input  logic  rng_sel1,
    input  logic  rng_sel2,

    output logic  fRAND1_gated,
    output logic  fRAND2_gated,
    output logic  mmcm_locked,
    output logic  clk_valid
);
    wire clkfbout_w;
    wire clkfbin_w;
    wire clkfb_buf;
    wire clkout0_w;
    wire clkout1_w;
    wire clkout2_w;
    wire clkout3_w;
    wire clkout4_w;
    wire locked_int;
    wire fbase_buf;
    wire f1_buf;
    wire f2_buf;
    wire f3_buf;
    wire f4_buf;
    wire f5_buf;
    logic sel1_ff = 1'b0;
    logic sel2_ff = 1'b0;
    (* DONT_TOUCH = "TRUE" *) wire frand1_raw;
    (* DONT_TOUCH = "TRUE" *) wire frand2_raw;
    (* ASYNC_REG = "TRUE", DONT_TOUCH = "TRUE" *)
    logic [SYNC_STAGES-1:0] locked_sync1 = '0;

    (* ASYNC_REG = "TRUE", DONT_TOUCH = "TRUE" *)
    logic [SYNC_STAGES-1:0] locked_sync2 = '0;

    logic locked_clean1 = 1'b0;
    logic locked_clean2 = 1'b0;
    logic gate_en1;
    logic gate_en2;
    MMCME2_ADV #(
        .BANDWIDTH            ("OPTIMIZED"),
        .CLKFBOUT_MULT_F      (G_MULT_F),
        .CLKFBOUT_PHASE       (0.0),
        .CLKIN1_PERIOD        (G_CLKIN_PERIOD),
        .CLKIN2_PERIOD        (0.0),
        .CLKOUT0_DIVIDE_F     (G_CLKOUT0_DIVIDE),
        .CLKOUT1_DIVIDE       (G_CLKOUT1_DIVIDE),
        .CLKOUT2_DIVIDE       (G_CLKOUT2_DIVIDE),
        .CLKOUT3_DIVIDE       (G_CLKOUT3_DIVIDE),
        .CLKOUT4_DIVIDE       (G_CLKOUT4_DIVIDE),
        .CLKOUT0_DUTY_CYCLE   (0.5),
        .CLKOUT1_DUTY_CYCLE   (0.5),
        .CLKOUT2_DUTY_CYCLE   (0.5),
        .CLKOUT3_DUTY_CYCLE   (0.5),
        .CLKOUT4_DUTY_CYCLE   (0.5),
        .CLKOUT5_DUTY_CYCLE   (0.5),
        .CLKOUT6_DUTY_CYCLE   (0.5),
        .CLKOUT0_PHASE        (0.0),
        .CLKOUT1_PHASE        (0.0),
        .CLKOUT2_PHASE        (0.0),
        .CLKOUT3_PHASE        (0.0),
        .CLKOUT4_PHASE        (0.0),
        .CLKOUT5_PHASE        (0.0),
        .CLKOUT6_PHASE        (0.0),
        .CLKOUT4_CASCADE      ("FALSE"),
        .COMPENSATION         ("ZHOLD"),
        .DIVCLK_DIVIDE        (G_DIVCLK),
        .REF_JITTER1          (0.0),
        .REF_JITTER2          (0.0),
        .STARTUP_WAIT         ("FALSE"),
        .SS_EN                ("FALSE"),
        .SS_MODE              ("CENTER_HIGH"),
        .SS_MOD_PERIOD        (10000),
        .CLKFBOUT_USE_FINE_PS ("FALSE"),
        .CLKOUT0_USE_FINE_PS  ("FALSE"),
        .CLKOUT1_USE_FINE_PS  ("FALSE"),
        .CLKOUT2_USE_FINE_PS  ("FALSE"),
        .CLKOUT3_USE_FINE_PS  ("FALSE"),
        .CLKOUT4_USE_FINE_PS  ("FALSE"),
        .CLKOUT5_USE_FINE_PS  ("FALSE"),
        .CLKOUT6_USE_FINE_PS  ("FALSE")
    ) MMCME2_ADV_inst (
        // Clock outputs
        .CLKOUT0        (clkout0_w),
        .CLKOUT0B       (),
        .CLKOUT1        (clkout1_w),
        .CLKOUT1B       (),
        .CLKOUT2        (clkout2_w),
        .CLKOUT2B       (),
        .CLKOUT3        (clkout3_w),
        .CLKOUT3B       (),
        .CLKOUT4        (clkout4_w),
        .CLKOUT5        (),
        .CLKOUT6        (),
        // Feedback
        .CLKFBOUT       (clkfbout_w),
        .CLKFBOUTB      (),
        .CLKFBIN        (clkfbin_w),
        // Status
        .LOCKED         (locked_int),
        .CLKFBSTOPPED   (),
        .CLKINSTOPPED   (),
        // DRP — unused; tie per UG953
        .DO             (),
        .DRDY           (),
        .DADDR          (7'b0),
        .DCLK           (1'b0),
        .DEN            (1'b0),
        .DI             (16'b0),
        .DWE            (1'b0),
        // Dynamic phase shift — unused
        .PSDONE         (),
        .PSCLK          (1'b0),
        .PSEN           (1'b0),
        .PSINCDEC       (1'b0),
        // Clock inputs
        .CLKIN1         (clk_in),
        .CLKIN2         (1'b0),
        .CLKINSEL       (1'b1),     // always use CLKIN1
        // Control
        .PWRDWN         (1'b0),
        .RST            (sys_rst)
    );
    BUFG BUFG_FB   (.I(clkfbout_w), .O(clkfb_buf));
    assign clkfbin_w = clkfb_buf;
    BUFG BUFG_BASE (.I(clk_in),    .O(fbase_buf));

    BUFG BUFG_F1   (.I(clkout0_w), .O(f1_buf));
    BUFG BUFG_F2   (.I(clkout1_w), .O(f2_buf));
    BUFG BUFG_F3   (.I(clkout2_w), .O(f3_buf));
    BUFG BUFG_F4   (.I(clkout3_w), .O(f4_buf));
    BUFG BUFG_F5   (.I(clkout4_w), .O(f5_buf));

    always_ff @(posedge fbase_buf or posedge sys_rst) begin
        if (sys_rst)
            sel1_ff <= 1'b0;
        else
            sel1_ff <= rng_sel1;
    end

    always_ff @(posedge f5_buf or posedge sys_rst) begin
        if (sys_rst)
            sel2_ff <= 1'b0;
        else
            sel2_ff <= rng_sel2;
    end
    BUFGCTRL #(
        .INIT_OUT     (0),
        .PRESELECT_I0 ("TRUE"),
        .PRESELECT_I1 ("FALSE")
    ) BUFGCTRL_MUX1 (
        .O      (frand1_raw),
        .I0     (f1_buf),
        .I1     (f2_buf),
        .CE0    (1'b1),
        .CE1    (1'b1),
        .S0     (~sel1_ff),    
        .S1     ( sel1_ff),     
        .IGNORE0(1'b0),
        .IGNORE1(1'b0)
    );

    BUFGCTRL #(
        .INIT_OUT     (0),
        .PRESELECT_I0 ("TRUE"),
        .PRESELECT_I1 ("FALSE")
    ) BUFGCTRL_MUX2 (
        .O      (frand2_raw),
        .I0     (f3_buf),
        .I1     (f4_buf),
        .CE0    (1'b1),
        .CE1    (1'b1),
        .S0     (~sel2_ff),     
        .S1     ( sel2_ff),    
        .IGNORE0(1'b0),
        .IGNORE1(1'b0)
    );
    always_ff @(posedge frand1_raw or posedge sys_rst) begin
        if (sys_rst) begin
            locked_sync1 <= '0;
        end else begin
            locked_sync1 <= {locked_sync1[SYNC_STAGES-2:0], locked_int};
        end
    end
    assign locked_clean1 = locked_sync1[SYNC_STAGES-1];

    always_ff @(posedge frand2_raw or posedge sys_rst) begin
        if (sys_rst) begin
            locked_sync2 <= '0;
        end else begin
            locked_sync2 <= {locked_sync2[SYNC_STAGES-2:0], locked_int};
        end
    end
    assign locked_clean2 = locked_sync2[SYNC_STAGES-1];

    assign gate_en1 = locked_clean1 & ~sys_rst;
    assign gate_en2 = locked_clean2 & ~sys_rst;

    BUFGCE #(
        .CE_TYPE        ("SYNC"),
        .IS_CE_INVERTED (1'b0),
        .IS_I_INVERTED  (1'b0)
    ) BUFGCE_RAND1 (
        .I  (frand1_raw),
        .CE (gate_en1),
        .O  (fRAND1_gated)
    );

    BUFGCE #(
        .CE_TYPE        ("SYNC"),
        .IS_CE_INVERTED (1'b0),
        .IS_I_INVERTED  (1'b0)
    ) BUFGCE_RAND2 (
        .I  (frand2_raw),
        .CE (gate_en2),
        .O  (fRAND2_gated)
    );
    assign mmcm_locked = locked_int;
    assign clk_valid   = locked_clean1 & locked_clean2 & ~sys_rst;

endmodule
