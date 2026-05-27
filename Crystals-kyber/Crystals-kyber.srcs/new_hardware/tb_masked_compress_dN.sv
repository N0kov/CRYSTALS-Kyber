`timescale 1ns/1ps
// =============================================================================
// tb_masked_compress_dN.sv
//
// Standalone testbench for masked_compress_dN (Step 3+5 Phase B v1).
//
// The DUT takes Boolean shares (y_p, y_m) of a (12+D)-bit dividend
// y = c * 2^D + Q/2, and outputs Boolean shares (q_p, q_m) of the
// d-bit Kyber compression of c. This tb builds y directly from c +
// fresh random mask, bypassing the A2B prep (which is the caller's
// job in the wider integration).
//
// Reference model: compress_q(c, d) = floor((c * 2^d + Q/2) / Q).
//   Q = 3329, Q/2 = 1664.
//
// Tests:
//   1. Edge cases: 0, 1, Q-1, Q/2, mid-range
//   2. Targeted bit-boundary cases (powers of 2 near compression bin edges)
//   3. Random sweep
// =============================================================================

module tb_masked_compress_dN;

    // -------------------------------------------------------------------------
    // Parameters
    // -------------------------------------------------------------------------
    localparam int D            = 5;              // target compression bits
    localparam int PARAM_WIDTH  = 13;
    localparam int N_SHARES     = 2;
    localparam int N_STAGES     = 4;
    localparam int Y_WIDTH      = 12 + D;         // 23 for D=11
    localparam [12:0] Q         = 13'd3329;
    localparam int Q_HALF       = 1664;            // floor(Q/2)

    localparam int RND_TRI = 2 * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int RND_BOX = (N_STAGES - 1) * 3 * (N_SHARES * (N_SHARES - 1) / 2)
                             + 2 * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int RND_AND = N_SHARES * (N_SHARES - 1) / 2;

    localparam int NUM_RANDOM   = 200;             // random-sweep samples

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
    logic                start;
    logic                done;
    logic [Y_WIDTH-1:0]  y_p, y_m;
    logic [D-1:0]        q_p, q_m;

    // Randomness arrays (driven from $urandom each cycle).
    logic [PARAM_WIDTH-1:0] rnd_tri [RND_TRI-1:0];
    logic [7:0]             rnd_box [RND_BOX-1:0];
    logic [11:0]            rnd_and12;

    // Refresh randomness each cycle (best-case for security, simplest for tb)
    always_ff @(posedge clk) begin
        for (int i = 0; i < RND_TRI; i++) rnd_tri[i] <= $urandom();
        for (int i = 0; i < RND_BOX; i++) rnd_box[i] <= $urandom();
        rnd_and12 <= $urandom();
    end

    masked_compress_dN #(
        .D           (D),
        .PARAM_WIDTH (PARAM_WIDTH),
        .Q           (Q),
        .N_SHARES    (N_SHARES),
        .N_STAGES    (N_STAGES)
    ) dut (
        .clk            (clk),
        .rst_n          (rst_n),
        .start          (start),
        .done           (done),
        .y_p            (y_p),
        .y_m            (y_m),
        .rnd_secadd_tri (rnd_tri),
        .rnd_secadd_box (rnd_box),
        .rnd_secand_12  (rnd_and12),
        .q_p            (q_p),
        .q_m            (q_m)
    );

    // -------------------------------------------------------------------------
    // Reference model
    // -------------------------------------------------------------------------
    function automatic int compress_ref(input int c, input int d_param);
        int y, t;
        begin
            y = c * (1 << d_param) + Q_HALF;
            t = y / Q;
            compress_ref = t & ((1 << d_param) - 1);
        end
    endfunction

    // -------------------------------------------------------------------------
    // Test infrastructure
    // -------------------------------------------------------------------------
    int fail_cnt = 0;
    int pass_cnt = 0;
    int total    = 0;

    task automatic apply_one(input int c_truth);
        int             y_truth;
        logic [Y_WIDTH-1:0] r_mask;
        int             expected;
        int             got;
        begin
            // Build Boolean shares of y = c * 2^D + Q/2
            y_truth = c_truth * (1 << D) + Q_HALF;

            // Random mask, constrained to Y_WIDTH bits
            r_mask = {$urandom(), $urandom()} & ((64'd1 << Y_WIDTH) - 64'd1);

            @(posedge clk); #0.1;
            y_p   = y_truth ^ r_mask;
            y_m   = r_mask;
            start = 1'b1;
            @(posedge clk); #0.1;
            start = 1'b0;

            // Wait for done
            wait (done);
            @(posedge clk); #0.1;

            expected = compress_ref(c_truth, D);
            got      = q_p ^ q_m;

            total++;
            if (got === expected) begin
                pass_cnt++;
            end else begin
                fail_cnt++;
                if (fail_cnt <= 12) begin
                    $display("FAIL c=%0d y_truth=%0d expected=%0d got=%0d (q_p=%h q_m=%h)",
                             c_truth, y_truth, expected, got, q_p, q_m);
                end
            end

            // Settle a cycle before next request
            @(posedge clk); #0.1;
        end
    endtask

    // -------------------------------------------------------------------------
    // Main test sequence
    // -------------------------------------------------------------------------
    initial begin
        // Init
        start = 0;
        y_p   = 0;
        y_m   = 0;

        // Wait for reset to release
        wait (rst_n);
        @(posedge clk); #0.1;
        @(posedge clk); #0.1;

        // --- Edge cases ---
        $display("=== EDGE CASES (D=%0d) ===", D);
        apply_one(0);
        apply_one(1);
        apply_one(Q_HALF - 1);
        apply_one(Q_HALF);
        apply_one(Q_HALF + 1);
        apply_one(Q - 1);
        apply_one(2);
        apply_one(Q / 4);
        apply_one(3 * Q / 4);
        apply_one(1024);

        // --- Boundary cases (around compression bin edges for D=11) ---
        // Each bin width = Q/2^D = 3329/2048 ≈ 1.626. So compress(c, 11) increments
        // every ~1.6 c values. Spot-check a few transitions.
        $display("=== BIN BOUNDARY CASES ===");
        apply_one(1);
        apply_one(2);
        apply_one(3);
        apply_one(100);
        apply_one(200);
        apply_one(500);
        apply_one(1500);
        apply_one(2500);
        apply_one(3200);
        apply_one(3328);

        // --- Random sweep ---
        $display("=== RANDOM SWEEP (%0d samples) ===", NUM_RANDOM);
        for (int i = 0; i < NUM_RANDOM; i++) begin
            apply_one($urandom() % Q);
            if (((i + 1) % 50) == 0)
                $display("INFO: %0d/%0d samples; pass=%0d fail=%0d",
                         i + 1, NUM_RANDOM, pass_cnt, fail_cnt);
        end

        $display("=== RESULT ===");
        $display("Total: %0d   Pass: %0d   Fail: %0d", total, pass_cnt, fail_cnt);
        if (fail_cnt == 0)
            $display("PASS: masked_compress_dN D=%0d functionally correct", D);
        else
            $display("FAIL: %0d mismatches", fail_cnt);

        $finish;
    end

    // -------------------------------------------------------------------------
    // Watchdog
    // -------------------------------------------------------------------------
    initial begin
        #50_000_000;
        $display("FAIL: testbench timeout");
        $finish;
    end

endmodule
