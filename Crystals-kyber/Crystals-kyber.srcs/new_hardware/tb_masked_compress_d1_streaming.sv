`timescale 1ns/1ps
// =============================================================================
// tb_masked_compress_d1_streaming.sv
//
// Pipeline-characterization testbench for masked_compress_d1 v1.
// Goal: measure X2X's pipeline depth empirically in our config
// (q=3329, N_SHARES=2, HALFCYCLE=1, prime mode, A2B), and determine whether
// the wrapper can be driven in streaming mode (input every cycle).
//
// Strategy:
//   1. After PRNG seed + warmup, hold valid_data HIGH continuously.
//   2. Pulse request_rnd once at the start (X2X tb pattern).
//   3. Drive new (c_p, c_m) every cycle with c_p chosen so that c = c_p mod Q
//      is a simple known value (c_m = 0 forces c = c_p).
//   4. Record cycles where m_p/m_m are observed to change, and verify the
//      latency from input change to corresponding output.
//
// What we want to learn:
//   - First-output latency (depth from valid_data to first valid_result)
//   - Per-output rate (is it 1/cycle, 1/2cycle, etc.)
//   - Whether request_rnd needs re-pulsing during streaming
//
// =============================================================================

module tb_masked_compress_d1_streaming;

    localparam int PARAM_WIDTH = 13;
    localparam int N_SHARES    = 2;
    localparam int N_STAGES    = 4;
    localparam int RND_SHARES  = 2 * (N_SHARES - 1) + 2 * N_SHARES
                                 + 4 * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int RND_SHARES_8bit = 2 * N_STAGES * 3 *(N_SHARES * (N_SHARES - 1) / 2);
    localparam int NB_SEEDS    = 6;
    localparam int LSFR_WIDTH  = 32;

    localparam [12:0] Q  = 13'd3329;
    localparam [12:0] LO = 13'd833;
    localparam [12:0] HI = 13'd2497;

    localparam int NUM_CYCLES_STREAMING = 50;

    logic clk = 0;
    always #0.5ns clk = ~clk;

    logic rst_n;
    initial begin
        rst_n = 0;
        #5;
        @(posedge clk); #0.1;
        rst_n = 1;
    end

    // DUT signals
    logic [11:0] c_p, c_m;
    logic        valid_data, ready_data;
    logic        valid_result, ready_result;
    logic        m_p_o, m_m_o;

    // PRNG signals
    logic                       load_seed;
    logic                       update_rnd;
    logic                       prng_done;
    logic [NB_SEEDS*128 - 1 :0] seed;

    logic [PARAM_WIDTH - 1 : 0] rnd_shares_comb      [RND_SHARES - 1 : 0];
    logic [7:0]                 rnd_shares_8bit_comb [RND_SHARES_8bit - 1 : 0];
    logic [PARAM_WIDTH - 1 : 0] rnd_shares           [RND_SHARES - 1 : 0];
    logic [7:0]                 rnd_shares_8bit      [RND_SHARES_8bit - 1 : 0];
    always_ff @(posedge clk) begin
        rnd_shares      <= rnd_shares_comb;
        rnd_shares_8bit <= rnd_shares_8bit_comb;
    end

    masked_compress_d1 #(
        .HALFCYCLE        (1),
        .PARAM_WIDTH      (PARAM_WIDTH),
        .Q                (Q),
        .LO               (LO),
        .HI               (HI),
        .N_SHARES         (N_SHARES),
        .N_STAGES         (N_STAGES),
        .X2X_RND_SHARES   (RND_SHARES),
        .X2X_RND_SHARES_8bit(RND_SHARES_8bit)
    ) dut (
        .clk                  (clk),
        .rst_n                (rst_n),
        .c_p                  (c_p),
        .c_m                  (c_m),
        .valid_data           (valid_data),
        .ready_data           (ready_data),
        .ready_result         (ready_result),
        .valid_result         (valid_result),
        .m_p_o                (m_p_o),
        .m_m_o                (m_m_o),
        .fresh_rnd_shares     (rnd_shares),
        .fresh_rnd_shares_8bit(rnd_shares_8bit)
    );

    PRNG_engine_STREAM #(
        .PARAM_WIDTH    (PARAM_WIDTH),
        .LSFR_WIDTH     (LSFR_WIDTH),
        .SEED_WIDTH     (NB_SEEDS*128),
        .N_SHARES       (N_SHARES),
        .RND_SHARES     (RND_SHARES),
        .RND_SHARES_8bit(RND_SHARES_8bit)
    ) u_prng (
        .clk           (clk),
        .rst_n         (rst_n),
        .mod_type      (1'b1),
        .conversion_type(1'b0),
        .dual_mode     (1'b0),
        .load_seed     (load_seed),
        .update_rnd    (update_rnd),
        .prng_done     (prng_done),
        .seed_in       (seed),
        .rnd_out_8bit  (rnd_shares_8bit_comb),
        .rnd_out       (rnd_shares_comb)
    );

    // Streaming-mode driver: hold valid_data HIGH, change c_p each cycle.
    // Track when valid_result first asserts and how each input maps to outputs.
    int input_cycle;
    int first_valid_result_cycle = -1;
    int latency;
    int outputs_seen = 0;
    logic [11:0] inputs_in_flight [0:127];   // ring buffer of inputs

    initial begin
        valid_data   = 0;
        ready_result = 0;
        c_p = 0; c_m = 0;
        load_seed = 0;
        update_rnd = 0;
        seed = {NB_SEEDS{128'hCAFEBABE_DEADBEEF_FEEDFACE_BAADF00D}};

        wait (rst_n); @(posedge clk);

        // Seed PRNG once
        load_seed = 1; @(posedge clk); #0.1; load_seed = 0;
        @(posedge clk); #0.1;

        // Pulse request_rnd once for initial fill
        update_rnd = 1; @(posedge clk); #0.1; update_rnd = 0;
        @(posedge clk iff prng_done); #0.1;
        $display("INFO: PRNG done at time %0t", $time);

        // Begin streaming
        valid_data   = 1;
        ready_result = 1;
        update_rnd   = 1;     // HOLD high to continuously refill randomness
        input_cycle  = 0;

        // Drive c values starting near the LO boundary to exercise threshold
        // transitions in streaming mode. c = 825 + i for i = 0..49 spans
        // 825..874, crossing LO=833 (where compress_d1 transitions 0->1).
        for (int i = 0; i < NUM_CYCLES_STREAMING; i++) begin
            c_p = (825 + i) % Q;
            c_m = 12'd0;
            inputs_in_flight[i] = c_p;
            input_cycle = i;
            @(posedge clk); #0.1;
        end

        // Drain: hold one more cycle and let any pending outputs drain
        c_p = 0; c_m = 0;
        for (int i = 0; i < 40; i++) begin
            @(posedge clk); #0.1;
        end
        update_rnd = 0;

        $display("INFO: streaming done; outputs_seen=%0d first_valid_result_cycle=%0d latency=%0d",
                 outputs_seen, first_valid_result_cycle, first_valid_result_cycle);
        $finish;
    end

    // Output sniffer: capture valid_result transitions
    int valid_cycles = 0;
    int t_now;
    always @(posedge clk) begin
        if (rst_n && valid_result) begin
            valid_cycles++;
            t_now = $time / 1;     // psec
            if (first_valid_result_cycle == -1) begin
                first_valid_result_cycle = $time;
                $display("INFO: first valid_result at time %0t (input_cycle was %0d)",
                         $time, input_cycle);
            end
            if (outputs_seen < 12) begin
                $display("OUT[%0d] t=%0t  m_p=%0b m_m=%0b xor=%0b  x2x_out=[%0d,%0d] xor=%0d",
                         outputs_seen, $time, m_p_o, m_m_o, m_p_o ^ m_m_o,
                         dut.x2x_out[0][0], dut.x2x_out[0][1],
                         dut.x2x_out[0][0] ^ dut.x2x_out[0][1]);
            end
            outputs_seen++;
        end
    end

    initial begin
        #2_000_000;
        $display("FAIL: timeout");
        $finish;
    end

endmodule
