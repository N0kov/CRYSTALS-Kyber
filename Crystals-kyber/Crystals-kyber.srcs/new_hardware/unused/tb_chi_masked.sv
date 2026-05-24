`timescale 1ns/1ps
// =============================================================================
// tb_chi_masked.sv
//
// Standalone testbench for chi_masked (Step 7, Phase 1).
//
// Verifies:
//   1. Functional correctness: (Y_p XOR Y_m) at the output == chi(X_p XOR X_m)
//      at the input, where chi is the unmasked Keccak chi step.
//   2. Latency: result is available 1 clock cycle after inputs are presented
//      (matches the DOM register stage).
//   3. Independence of mask: many random share splits of the same X produce
//      the same recombined Y. (Sanity check that masking doesn't change the
//      function.)
//
// chi semantics (per lane row of 5 lanes x 64 bits):
//   Y[L] = X[L] XOR (NOT X[L+1] AND X[L+2])   (indices mod 5 within row)
//
// =============================================================================

module tb_chi_masked;

    // -------------------------------------------------------------------------
    // Clock
    // -------------------------------------------------------------------------
    logic clk = 0;
    always #5 clk = ~clk;   // 100 MHz

    // -------------------------------------------------------------------------
    // DUT signals
    // -------------------------------------------------------------------------
    logic [1599:0] X_p, X_m, R, Y_p, Y_m;

    chi_masked dut (
        .CLK (clk),
        .X_p (X_p),
        .X_m (X_m),
        .R   (R),
        .Y_p (Y_p),
        .Y_m (Y_m)
    );

    // -------------------------------------------------------------------------
    // Golden chi model (mirrors chi.vhd exactly)
    // -------------------------------------------------------------------------
    function automatic logic [1599:0] chi_golden(input logic [1599:0] x);
        logic [1599:0] y;
        int row, lane;
        logic [63:0] xl0, xl1, xl2, xl3, xl4;
        logic [63:0] yl0, yl1, yl2, yl3, yl4;
        begin
            for (row = 0; row < 5; row++) begin
                xl0 = x[row*320 +  63 -:  64];
                xl1 = x[row*320 + 127 -:  64];
                xl2 = x[row*320 + 191 -:  64];
                xl3 = x[row*320 + 255 -:  64];
                xl4 = x[row*320 + 319 -:  64];
                yl0 = xl0 ^ ((~xl1) & xl2);
                yl1 = xl1 ^ ((~xl2) & xl3);
                yl2 = xl2 ^ ((~xl3) & xl4);
                yl3 = xl3 ^ ((~xl4) & xl0);
                yl4 = xl4 ^ ((~xl0) & xl1);
                y[row*320 +  63 -:  64] = yl0;
                y[row*320 + 127 -:  64] = yl1;
                y[row*320 + 191 -:  64] = yl2;
                y[row*320 + 255 -:  64] = yl3;
                y[row*320 + 319 -:  64] = yl4;
            end
            chi_golden = y;
        end
    endfunction

    // -------------------------------------------------------------------------
    // Random 1600-bit generator (built from 64-bit $urandom chunks)
    // -------------------------------------------------------------------------
    function automatic logic [1599:0] rand_1600();
        logic [1599:0] r;
        int i;
        begin
            r = '0;
            for (i = 0; i < 25; i++) begin
                r[i*64 +: 64] = {$urandom(), $urandom()};
            end
            rand_1600 = r;
        end
    endfunction

    // -------------------------------------------------------------------------
    // Stimulus + checking
    // -------------------------------------------------------------------------
    integer          n_ok = 0;
    integer          n_bad = 0;
    integer          n_total = 0;
    logic [1599:0]   X_true_q [$];      // queue of inputs presented, for pipeline alignment

    // Special-case patterns to exercise edge conditions.
    logic [1599:0]   special [0:5];
    initial begin
        special[0] = '0;
        special[1] = '1;
        special[2] = {25{64'hAAAAAAAAAAAAAAAA}};
        special[3] = {25{64'h5555555555555555}};
        special[4] = {25{64'hFEDCBA9876543210}};
        special[5] = {25{64'h0F0F0F0F0F0F0F0F}};
    end

    task automatic apply_and_check(input logic [1599:0] X_in);
        logic [1599:0] mask;
        logic [1599:0] X_p_lcl, X_m_lcl, R_lcl;
        logic [1599:0] X_held;
        logic [1599:0] Y_expected;
        logic [1599:0] Y_recomb;
        begin
            mask    = rand_1600();
            R_lcl   = rand_1600();
            X_p_lcl = X_in ^ mask;
            X_m_lcl = mask;

            // Drive inputs at active edge, sample output one cycle later.
            @(negedge clk);
            X_p <= X_p_lcl;
            X_m <= X_m_lcl;
            R   <= R_lcl;
            X_held = X_in;

            // Wait for the DOM register output: one rising edge of CLK.
            @(posedge clk);
            #1;  // settle Y_p, Y_m combinational fanout

            Y_expected = chi_golden(X_held);
            Y_recomb   = Y_p ^ Y_m;
            n_total++;
            if (Y_recomb === Y_expected) begin
                n_ok++;
            end else begin
                n_bad++;
                $display("[%0t] MISMATCH #%0d", $time, n_total);
                $display("    X        = %h", X_held);
                $display("    Y_recomb = %h", Y_recomb);
                $display("    Y_expect = %h", Y_expected);
                $display("    XOR-diff = %h", Y_recomb ^ Y_expected);
            end
        end
    endtask

    initial begin
        X_p = '0; X_m = '0; R = '0;
        @(posedge clk);
        @(posedge clk);

        $display("---- chi_masked standalone test ----");

        // Edge cases
        foreach (special[i]) begin
            apply_and_check(special[i]);
        end

        // Same input, many random share splits — confirms mask independence
        repeat (32) begin
            apply_and_check(special[4]);
        end

        // Random sweep
        repeat (200) begin
            apply_and_check(rand_1600());
        end

        // Done
        $display("---- chi_masked test summary ----");
        $display("  total = %0d", n_total);
        $display("  ok    = %0d", n_ok);
        $display("  bad   = %0d", n_bad);
        if (n_bad == 0)
            $display("  RESULT: PASS");
        else
            $display("  RESULT: FAIL");
        $finish;
    end

endmodule
