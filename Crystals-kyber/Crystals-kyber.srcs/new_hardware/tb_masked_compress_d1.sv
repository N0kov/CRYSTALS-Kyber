`timescale 1ns/1ps
// =============================================================================
// tb_masked_compress_d1.sv
//
// Standalone testbench for masked_compress_d1 (Step 3+5 Phase A v1).
// Verifies: given arithmetic shares (c_p, c_m) with c = (c_p - c_m) mod Q,
//           the wrapper outputs m_p_o XOR m_m_o == compress_q(c, 1)
//           where compress_q(c, 1) = ((2c + Q/2) / Q) & 1.
//
// Tests:
//   1. Targeted edge cases: c near 0, near LO-1/LO/LO+1, near HI-1/HI/HI+1,
//      near Q-1, and Q/2.
//   2. Random sweep: pick random (c, r), set c_p = (c + r) mod Q,
//      c_m = r, drive into the gadget, check output. NUM_RANDOM samples.
//
// Reference: software compress_d1 inlined as a function.
//
// Driver: X2X's PRNG_engine_STREAM supplies the fresh randomness arrays.
//
// Usage (Vivado batch):
//   source /data/home/lincoln/2025.2/Vivado/settings64.sh
//   cd Crystals-kyber/Crystals-kyber.srcs/new_hardware
//   vivado -mode batch -source run_tb_masked_compress_d1.tcl
// =============================================================================

module tb_masked_compress_d1;

    // -------------------------------------------------------------------------
    // Parameters
    // -------------------------------------------------------------------------
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

    localparam int NUM_RANDOM = 2000;   // random-sweep samples

    // -------------------------------------------------------------------------
    // Clock / reset
    // -------------------------------------------------------------------------
    logic clk = 0;
    always #0.5ns clk = ~clk;

    logic rst_n;
    initial begin
        rst_n = 0;
        #5;
        @(posedge clk); #0.1;
        rst_n = 1;
    end

    // -------------------------------------------------------------------------
    // DUT signals
    // -------------------------------------------------------------------------
    logic [11:0] c_p, c_m;
    logic        valid_data, ready_data;
    logic        valid_result, ready_result;
    logic        m_p_o, m_m_o;

    // PRNG output → DUT randomness (registered, mirroring X2X's own tb)
    logic [PARAM_WIDTH - 1 : 0] rnd_shares_comb       [RND_SHARES - 1 : 0];
    logic [7:0]                 rnd_shares_8bit_comb  [RND_SHARES_8bit - 1 : 0];
    logic [PARAM_WIDTH - 1 : 0] rnd_shares            [RND_SHARES - 1 : 0];
    logic [7:0]                 rnd_shares_8bit       [RND_SHARES_8bit - 1 : 0];
    // X2X testbench registers PRNG output before feeding to DUT
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

    // -------------------------------------------------------------------------
    // PRNG driver — uses X2X's reference PRNG_engine_STREAM
    // -------------------------------------------------------------------------
    logic                        load_seed;
    logic                        update_rnd;
    logic                        prng_done;
    logic [NB_SEEDS*128 - 1 : 0] seed;

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
        .mod_type      (1'b1),                  // prime
        .conversion_type(1'b0),                 // A2B
        .dual_mode     (1'b0),
        .load_seed     (load_seed),
        .update_rnd    (update_rnd),
        .prng_done     (prng_done),
        .seed_in       (seed),
        .rnd_out_8bit  (rnd_shares_8bit_comb),
        .rnd_out       (rnd_shares_comb)
    );

    // -------------------------------------------------------------------------
    // Reference software model: compress_q(x, 1) = ((2x + Q/2) / Q) & 1
    // -------------------------------------------------------------------------
    function automatic logic compress_d1_ref(input int x);
        int t;
        begin
            t = (2 * x + (Q / 2)) / Q;
            compress_d1_ref = t[0];
        end
    endfunction

    // -------------------------------------------------------------------------
    // Test infrastructure
    // -------------------------------------------------------------------------
    int fail_cnt = 0;
    int pass_cnt = 0;
    int total    = 0;

    task automatic apply_one(input int c_truth, input int r);
        int cp_int, cm_int;
        logic expected;
        begin
            // Project share convention: c_p - c_m mod Q = c
            //   c_p = (c + r) mod Q, c_m = r, with r in [0, Q-1].
            cp_int = (c_truth + r) % Q;
            cm_int = r % Q;

            // X2X's tb pulses request_rnd for ONE cycle per conversion, then
            // waits for prng_done. We mirror that here.
            @(posedge clk); #0.1;
            update_rnd = 1'b1;
            @(posedge clk); #0.1;
            update_rnd = 1'b0;
            @(posedge clk iff prng_done); #0.1;

            c_p          = cp_int[11:0];
            c_m          = cm_int[11:0];
            valid_data   = 1'b1;
            ready_result = 1'b1;

            // X2X protocol: keep valid_data HIGH until valid_result fires.
            // X2X's own testbench (line 688/705 of MaskConv_HALF_STREAM_tb.sv)
            // waits for valid_result THEN advances one more clock edge before
            // sampling converted_data — converted_data is registered.
            wait (valid_result);
            @(posedge clk); #0.1;

            expected = compress_d1_ref(c_truth);
            total++;
            if ((m_p_o ^ m_m_o) === expected) begin
                pass_cnt++;
            end else begin
                fail_cnt++;
                if (fail_cnt <= 12) begin
                    $display("FAIL c=%0d cp=%0d cm=%0d expected=%0b got=%0b (m_p=%0b m_m=%0b)",
                             c_truth, cp_int, cm_int, expected, m_p_o ^ m_m_o, m_p_o, m_m_o);
                    $display("     x2x_out[0][0]=%0d x2x_out[0][1]=%0d xor=%0d (expected c=%0d)",
                             dut.x2x_out[0][0], dut.x2x_out[0][1],
                             dut.x2x_out[0][0] ^ dut.x2x_out[0][1], c_truth);
                end
            end

            // Deassert and advance one cycle before the next request.
            @(posedge clk); #0.1;
            valid_data   = 1'b0;
            ready_result = 1'b0;
            @(posedge clk); #0.1;
        end
    endtask

    // -------------------------------------------------------------------------
    // Main test sequence
    // -------------------------------------------------------------------------
    initial begin
        // Init
        valid_data = 0;
        ready_result = 0;
        c_p = 0; c_m = 0;
        load_seed = 0;
        update_rnd = 0;
        seed = {NB_SEEDS{128'hCAFEBABE_DEADBEEF_FEEDFACE_BAADF00D}};

        // Wait for reset to release
        wait (rst_n);
        @(posedge clk);

        // Seed the PRNG (one-time)
        load_seed = 1'b1;
        @(posedge clk); #0.1;
        load_seed = 1'b0;
        @(posedge clk); #0.1;
        $display("INFO: PRNG seeded; request_rnd pulsed per conversion below");

        // -----------------------------------------------------------------
        // PART 1 — Edge cases
        // -----------------------------------------------------------------
        $display("=== EDGE CASES ===");
        begin : edge_block
            int edge_inputs [10];
            edge_inputs[0] = 0;
            edge_inputs[1] = 1;
            edge_inputs[2] = LO - 1;
            edge_inputs[3] = LO;
            edge_inputs[4] = LO + 1;
            edge_inputs[5] = Q / 2;
            edge_inputs[6] = HI - 1;
            edge_inputs[7] = HI;
            edge_inputs[8] = HI + 1;
            edge_inputs[9] = Q - 1;
            for (int i = 0; i < 10; i++) begin
                apply_one(edge_inputs[i], $urandom() % Q);
            end
        end

        // -----------------------------------------------------------------
        // PART 2 — Random sweep
        // -----------------------------------------------------------------
        $display("=== RANDOM SWEEP (%0d samples) ===", NUM_RANDOM);
        for (int i = 0; i < NUM_RANDOM; i++) begin
            apply_one($urandom() % Q, $urandom() % Q);
            if (((i + 1) % 200) == 0)
                $display("INFO: %0d/%0d samples checked, %0d pass, %0d fail",
                         i + 1, NUM_RANDOM, pass_cnt, fail_cnt);
        end

        $display("=== RESULT ===");
        $display("Total: %0d   Pass: %0d   Fail: %0d", total, pass_cnt, fail_cnt);
        if (fail_cnt == 0)
            $display("PASS: masked_compress_d1 v1 functionally correct");
        else
            $display("FAIL: %0d mismatches", fail_cnt);

        $finish;
    end

    // -------------------------------------------------------------------------
    // Watchdog
    // -------------------------------------------------------------------------
    initial begin
        #10_000_000;  // 10 ms
        $display("FAIL: testbench timeout");
        $finish;
    end

endmodule
