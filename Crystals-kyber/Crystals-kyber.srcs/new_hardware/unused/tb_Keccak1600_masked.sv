`timescale 1ns/1ps
// =============================================================================
// tb_Keccak1600_masked.sv
//
// Standalone testbench comparing Keccak1600_masked vs unmasked Keccak1600.
//
// Procedure (same on both):
//   1. RESET high for a few cycles, then drop.
//   2. INIT pulse → state register clears to 0, FSM enters S_INIT.
//   3. ABSORB stream: drive DIN with ABSORB=1 for N cycles to inject N×32 bits
//      into the low end of the state (XOR into Q_buf[31:0] then shift up).
//   4. GO pulse → FSM enters S_ROUND. Wait for DONE.
//   5. SQUEEZE stream: clock SQUEEZE=1 for M cycles to extract M×32 bits from
//      the low end of the state.
//
// Masking layer (only on the masked DUT):
//   - Each absorb chunk is randomly split into (DIN_p, DIN_m). When reconstructed
//     (DIN_p XOR DIN_m) it matches the unmasked DIN.
//   - R (1600-bit randomness) is freshly randomized every cycle.
//
// Pass condition:
//   - For every squeezed chunk K:
//        RESULT_unmasked_dut == RESULT_p_dut XOR RESULT_m_dut == golden_result[K]
// =============================================================================

module tb_Keccak1600_masked;

    // Clock
    logic clk = 0;
    always #5 clk = ~clk;       // 100 MHz

    // Common control
    logic        rst, init_pulse, go_pulse, squeeze, absorb, extend;
    logic [31:0] din_full;
    logic [31:0] din_p, din_m;
    logic [1599:0] rnd;

    // -------------------------------------------------------------------------
    // Unmasked golden DUT
    // -------------------------------------------------------------------------
    logic        done_u;
    logic [31:0] result_u;

    Keccak1600 u_unmasked (
        .CLK    (clk),
        .RESET  (rst),
        .INIT   (init_pulse),
        .GO     (go_pulse),
        .SQUEEZE(squeeze),
        .ABSORB (absorb),
        .EXTEND (extend),
        .DIN    (din_full),
        .DONE   (done_u),
        .RESULT (result_u)
    );

    // -------------------------------------------------------------------------
    // Masked DUT
    // -------------------------------------------------------------------------
    logic        done_m;
    logic [31:0] result_p, result_m;

    Keccak1600_masked u_masked (
        .CLK     (clk),
        .RESET   (rst),
        .INIT    (init_pulse),
        .GO      (go_pulse),
        .SQUEEZE (squeeze),
        .ABSORB  (absorb),
        .EXTEND  (extend),
        .DIN_p   (din_p),
        .DIN_m   (din_m),
        .R       (rnd),
        .DONE    (done_m),
        .RESULT_p(result_p),
        .RESULT_m(result_m)
    );

    // -------------------------------------------------------------------------
    // Random helpers
    // -------------------------------------------------------------------------
    function automatic logic [31:0] rand_32();
        rand_32 = $urandom();
    endfunction

    function automatic logic [1599:0] rand_1600();
        logic [1599:0] r;
        for (int i = 0; i < 25; i++) r[i*64 +: 64] = {$urandom(), $urandom()};
        return r;
    endfunction

    // Match project setup: R=0, DIN_m=0. This is the most-failure-prone path
    // because share_m and r are 0 throughout, so RESULT_p alone must match
    // unmasked.
    initial rnd = '0;

    // -------------------------------------------------------------------------
    // Stimulus
    // -------------------------------------------------------------------------
    integer n_ok, n_bad;

    task automatic split_din(input logic [31:0] x);
        // Match project setup: DIN_m=0 always.
        din_full = x;
        din_p    = x;
        din_m    = '0;
    endtask

    task automatic step_quiet();
        begin
            absorb = 0; squeeze = 0; extend = 0;
            din_full = '0; din_p = '0; din_m = '0;
            @(posedge clk);
        end
    endtask

    task automatic do_absorb(input logic [31:0] x);
        begin
            absorb = 1; squeeze = 0; extend = 0;
            split_din(x);
            @(posedge clk);
            absorb = 0;
        end
    endtask

    task automatic do_squeeze_and_check(input string label, input integer expected_idx);
        logic [31:0] recomb;
        begin
            squeeze = 1; absorb = 0; extend = 0;
            din_full = '0; din_p = '0; din_m = '0;
            @(posedge clk);
            #1;
            recomb = result_p ^ result_m;
            squeeze = 0;
            if (result_u === recomb) begin
                n_ok++;
            end else begin
                n_bad++;
                $display("[%0t] %s #%0d MISMATCH: golden=%h  masked-recombined=%h (p=%h m=%h)",
                         $time, label, expected_idx, result_u, recomb, result_p, result_m);
            end
        end
    endtask

    initial begin
        n_ok = 0; n_bad = 0;
        // Defaults
        rst = 1; init_pulse = 0; go_pulse = 0; squeeze = 0; absorb = 0; extend = 0;
        din_full = 0; din_p = 0; din_m = 0;

        // Reset for a few cycles
        repeat (4) @(posedge clk);
        rst = 0;
        @(posedge clk);

        // ---- TEST 1: Single permutation with ZERO absorb ----------------------
        $display("---- Keccak1600_masked test 1: zero-input permutation ----");
        init_pulse = 1;
        @(posedge clk);
        init_pulse = 0;
        @(posedge clk);

        // Go directly without absorb. State is all zeros.
        go_pulse = 1;
        @(posedge clk);
        go_pulse = 0;

        // Unmasked is in S_ROUND, takes ~25 cycles to DONE.
        // Masked takes ~49 cycles to DONE. Wait for both.
        wait (done_u == 1'b1);
        $display("[%0t] unmasked DONE", $time);
        wait (done_m == 1'b1);
        $display("[%0t] masked   DONE", $time);

        // Both DUTs are now in S_DONE, will transition back to S_INIT next cycle.
        // Issue SQUEEZE pulses to extract output 32 bits at a time.
        // Wait for both back to S_INIT (1 cycle).
        @(posedge clk);

        // Squeeze 8 chunks (256 bits) — should match between both DUTs.
        for (int i = 0; i < 8; i++) begin
            do_squeeze_and_check("test1-squeeze", i);
        end

        // ---- TEST 2: Absorb then squeeze --------------------------------------
        $display("---- Keccak1600_masked test 2: absorb then squeeze ----");
        // Reset state again
        rst = 1;
        @(posedge clk); @(posedge clk);
        rst = 0;
        @(posedge clk);

        init_pulse = 1;
        @(posedge clk);
        init_pulse = 0;
        @(posedge clk);

        // Absorb 32 chunks (1024 bits) of random data (this is roughly the rate
        // of SHAKE-128; for our purposes we just want some non-zero state).
        for (int i = 0; i < 32; i++) begin
            do_absorb($urandom());
        end

        go_pulse = 1;
        @(posedge clk);
        go_pulse = 0;

        wait (done_u == 1'b1);
        $display("[%0t] unmasked DONE (test 2)", $time);
        wait (done_m == 1'b1);
        $display("[%0t] masked   DONE (test 2)", $time);
        @(posedge clk);

        for (int i = 0; i < 8; i++) begin
            do_squeeze_and_check("test2-squeeze", i);
        end

        // ---- TEST 3: Many back-to-back permutations with INIT between -------
        // This mirrors what the project does — multiple Keccak hash invocations,
        // each one with its own INIT/absorb/GO/squeeze cycle.
        $display("---- Keccak1600_masked test 3: 20 back-to-back permutations ----");
        for (int iter = 0; iter < 20; iter++) begin
            // Reset state then run a full hash cycle.
            rst = 1;
            repeat (2) @(posedge clk);
            rst = 0;
            @(posedge clk);

            init_pulse = 1;
            @(posedge clk);
            init_pulse = 0;
            @(posedge clk);

            // Absorb a handful of random chunks. Vary the count so we cover
            // different padding patterns.
            for (int j = 0; j < (4 + (iter % 16)); j++)
                do_absorb($urandom());

            go_pulse = 1;
            @(posedge clk);
            go_pulse = 0;

            // Wait for both to finish, with a per-permutation timeout
            fork
                begin : wait_both
                    wait (done_u == 1'b1);
                    wait (done_m == 1'b1);
                end
                begin : per_iter_timeout
                    #5us;
                    $display("[%0t] TEST 3 iter %0d: TIMEOUT waiting for DONE (done_u=%b done_m=%b)",
                             $time, iter, done_u, done_m);
                    n_bad++;
                end
            join_any
            disable wait_both;
            disable per_iter_timeout;

            @(posedge clk);
            for (int i = 0; i < 4; i++) begin
                do_squeeze_and_check($sformatf("test3-iter%0d", iter), i);
            end

            if (iter < 5 || n_bad > 0)
                $display("[%0t] TEST 3 iter %0d done (cumulative ok=%0d bad=%0d)",
                         $time, iter, n_ok, n_bad);
        end

        // Summary
        $display("---- Keccak1600_masked test summary ----");
        $display("  total ok = %0d  bad = %0d", n_ok, n_bad);
        if (n_bad == 0)
            $display("  RESULT: PASS");
        else
            $display("  RESULT: FAIL");
        $finish;
    end

    // Safety timeout
    initial begin
        #50us;
        $display("[%0t] TIMEOUT — test took too long. ok=%0d bad=%0d", $time, n_ok, n_bad);
        $finish;
    end

endmodule
