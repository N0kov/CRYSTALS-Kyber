`timescale 1ns/1ps
// =============================================================================
// tb_masked_compress_dN_full.sv
//
// Standalone testbench for the masked_compress_dN_full wrapper. Verifies
// X2X A2B + Y prep + masked_compress_dN integration end-to-end.
// =============================================================================

module tb_masked_compress_dN_full;

    localparam int D            = 11;
    localparam int PARAM_WIDTH  = 13;
    localparam int N_SHARES     = 2;
    localparam int N_STAGES     = 4;
    localparam [12:0] Q         = 13'd3329;

    localparam int X2X_RND_SHARES      = 2 * (N_SHARES - 1) + 2 * N_SHARES
                                         + 4 * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int X2X_RND_SHARES_8bit = 2 * N_STAGES * 3
                                         * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int LD_RND_TRI = 2 * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int LD_RND_BOX = (N_STAGES - 1) * 3 * (N_SHARES * (N_SHARES - 1) / 2)
                                + 2 * (N_SHARES * (N_SHARES - 1) / 2);

    localparam int NUM_RANDOM = 100;

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
    logic        start;
    logic        done;
    logic [11:0] c_p, c_m;
    logic [D-1:0] q_p, q_m;

    // Randomness — fresh each cycle
    logic [PARAM_WIDTH-1:0] x2x_rnd_shares      [X2X_RND_SHARES-1:0];
    logic [7:0]             x2x_rnd_shares_8bit [X2X_RND_SHARES_8bit-1:0];
    logic [PARAM_WIDTH-1:0] ld_rnd_tri [LD_RND_TRI-1:0];
    logic [7:0]             ld_rnd_box [LD_RND_BOX-1:0];
    logic [11:0]            ld_rnd_and12;

    always_ff @(posedge clk) begin
        for (int i = 0; i < X2X_RND_SHARES;      i++) x2x_rnd_shares[i]      <= $urandom();
        for (int i = 0; i < X2X_RND_SHARES_8bit; i++) x2x_rnd_shares_8bit[i] <= $urandom();
        for (int i = 0; i < LD_RND_TRI; i++) ld_rnd_tri[i] <= $urandom();
        for (int i = 0; i < LD_RND_BOX; i++) ld_rnd_box[i] <= $urandom();
        ld_rnd_and12 <= $urandom();
    end

    masked_compress_dN_full #(
        .D                   (D),
        .Q                   (Q),
        .PARAM_WIDTH         (PARAM_WIDTH),
        .N_SHARES            (N_SHARES),
        .N_STAGES            (N_STAGES),
        .X2X_RND_SHARES      (X2X_RND_SHARES),
        .X2X_RND_SHARES_8bit (X2X_RND_SHARES_8bit),
        .LD_RND_TRI          (LD_RND_TRI),
        .LD_RND_BOX          (LD_RND_BOX)
    ) dut (
        .clk                  (clk),
        .rst_n                (rst_n),
        .start                (start),
        .done                 (done),
        .c_p                  (c_p),
        .c_m                  (c_m),
        .fresh_rnd_shares     (x2x_rnd_shares),
        .fresh_rnd_shares_8bit(x2x_rnd_shares_8bit),
        .ld_rnd_tri           (ld_rnd_tri),
        .ld_rnd_box           (ld_rnd_box),
        .ld_rnd_and12         (ld_rnd_and12),
        .q_p                  (q_p),
        .q_m                  (q_m)
    );

    function automatic int compress_ref(input int c, input int d_param);
        int y, t;
        begin
            y = c * (1 << d_param) + 1664;
            t = y / Q;
            compress_ref = t & ((1 << d_param) - 1);
        end
    endfunction

    int fail_cnt = 0;
    int pass_cnt = 0;
    int total    = 0;

    task automatic apply_one(input int c_truth, input int r_truth);
        int cp_int, cm_int;
        int expected, got;
        begin
            // Build shares: c_p - c_m mod Q = c
            cp_int = (c_truth + r_truth) % Q;
            cm_int = r_truth % Q;

            @(posedge clk); #0.1;
            c_p   = cp_int[11:0];
            c_m   = cm_int[11:0];
            start = 1'b1;
            @(posedge clk); #0.1;
            start = 1'b0;

            wait (done);
            @(posedge clk); #0.1;

            expected = compress_ref(c_truth, D);
            got      = q_p ^ q_m;

            total++;
            if (got === expected) begin
                pass_cnt++;
            end else begin
                fail_cnt++;
                if (fail_cnt <= 10) begin
                    $display("FAIL c=%0d r=%0d cp=%0d cm=%0d expected=%0d got=%0d",
                             c_truth, r_truth, cp_int, cm_int, expected, got);
                end
            end

            @(posedge clk); #0.1;
        end
    endtask

    initial begin
        c_p = 0; c_m = 0;
        start = 0;
        wait (rst_n);
        @(posedge clk); #0.1;
        @(posedge clk); #0.1;
        @(posedge clk); #0.1;

        $display("=== EDGE CASES (D=%0d) ===", D);
        apply_one(0,     0);
        apply_one(1,     0);
        apply_one(1664,  0);
        apply_one(1665,  0);
        apply_one(Q-1,   0);
        apply_one(0,     500);
        apply_one(1664,  1000);
        apply_one(Q-1,   3000);
        apply_one(1000,  1000);    // c_m != 0 path
        apply_one(2000,  500);

        $display("=== c_m=0 BOUNDARY ===");
        apply_one(0,    0);
        apply_one(5,    0);
        apply_one(800,  0);
        apply_one(2500, 0);

        $display("=== INTEGRATION REPRO (Phase B event #0) ===");
        apply_one(3138, 0);  // c_p=0xc42, c_m=0 — expected compress=0x78a=1930

        $display("=== RANDOM SWEEP (%0d) ===", NUM_RANDOM);
        for (int i = 0; i < NUM_RANDOM; i++) begin
            apply_one($urandom() % Q, $urandom() % Q);
            if (((i+1) % 25) == 0)
                $display("INFO: %0d/%0d pass=%0d fail=%0d", i+1, NUM_RANDOM, pass_cnt, fail_cnt);
        end

        $display("=== RESULT ===");
        $display("Total: %0d Pass: %0d Fail: %0d", total, pass_cnt, fail_cnt);
        if (fail_cnt == 0)
            $display("PASS: masked_compress_dN_full D=%0d functionally correct", D);
        else
            $display("FAIL: %0d mismatches", fail_cnt);

        $finish;
    end

    initial begin
        #100_000_000;
        $display("FAIL: timeout");
        $finish;
    end

endmodule
