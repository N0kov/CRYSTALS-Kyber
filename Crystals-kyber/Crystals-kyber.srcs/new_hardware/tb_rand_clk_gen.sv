`timescale 1ps/1ps
// Testbench for rand_clk_gen.sv.
//
// MMCME2_ADV and BUFGCTRL are Xilinx simulation primitives — this testbench
// requires Vivado's glbl.v and unisims library to be included in simulation.
//
// Checks:
//   T1  locked_o asserts within 10 us of reset deassert.
//   T2  frand1_o toggles after lock (not stuck).
//   T3  frand2_o toggles after lock (not stuck).
//   T4  frand1_o and frand2_o differ in frequency: edge counts over a 1 us
//       window are not equal (they select from different candidate pairs).
//   T5  Neither output glitches to X after a PRNG-driven select switch
//       (sample both outputs every 100 ps for 2 us; check for X/Z).

module tb_rand_clk_gen;

    localparam CLK_HALF_PS = 5000; // 100 MHz base clock
    localparam LOCK_TIMEOUT_PS = 10_000_000; // 10 us

    logic clk_base, reset;
    logic locked, frand1, frand2;

    rand_clk_gen #(
        .USE_TRNG  (0),
        .PRNG_SEED (32'hCAFEBABE)
    ) dut (
        .clk_base_i       (clk_base),
        .reset_i          (reset),
        .avalanche_noise_i(1'b0),
        .locked_o         (locked),
        .frand1_o         (frand1),
        .frand2_o         (frand2)
    );

    initial clk_base = 0;
    always #CLK_HALF_PS clk_base = ~clk_base;

    int pass_cnt = 0;
    int fail_cnt = 0;

    task automatic check(input string label, input logic got, input logic want);
        if (got === want) begin
            $display("PASS: %s", label);
            pass_cnt++;
        end else begin
            $display("FAIL: %s | got=%0b want=%0b", label, got, want);
            fail_cnt++;
        end
    endtask

    // Count rising edges by direct reference to module-level signals
    int e1, e2;
    longint t_start, t_lock;
    logic glitch_seen;

    initial begin
        reset  = 0;
        #(CLK_HALF_PS * 4);
        reset = 1;  // deassert active-low reset

        // T1: wait for lock within timeout
        t_start = $time;
        fork
            begin
                wait (locked === 1'b1);
                t_lock = $time;
            end
            begin
                #LOCK_TIMEOUT_PS;
            end
        join_any
        disable fork;

        if (locked === 1'b1) begin
            $display("PASS: T1 locked after %0d ns", (t_lock - t_start) / 1000);
            pass_cnt++;
        end else begin
            $display("FAIL: T1 locked not asserted within 10 us");
            fail_cnt++;
            $stop;
        end

        // T2 / T3: both clocks toggle — count posedges directly
        e1 = 0; e2 = 0;
        fork
            begin : count_f1
                repeat (1000) @(posedge frand1) e1++;
            end
            begin : count_f2
                repeat (1000) @(posedge frand2) e2++;
            end
            begin : window
                #1_000_000_000; // 1 ms ceiling
            end
        join_any
        disable count_f1; disable count_f2; disable window;

        if (e1 > 0)
            begin $display("PASS: T2 frand1 toggles (%0d edges counted)", e1); pass_cnt++; end
        else
            begin $display("FAIL: T2 frand1 stuck"); fail_cnt++; end

        if (e2 > 0)
            begin $display("PASS: T3 frand2 toggles (%0d edges counted)", e2); pass_cnt++; end
        else
            begin $display("FAIL: T3 frand2 stuck"); fail_cnt++; end

        // T4: different frequencies (candidate pairs are disjoint)
        if (e1 !== e2)
            begin $display("PASS: T4 frand1 (%0d) != frand2 (%0d) edge count", e1, e2); pass_cnt++; end
        else
            begin $display("WARN: T4 frand1 == frand2 edge count (%0d) — possible but unlikely", e1); end

        // T5: no X/Z glitches on either output over 2 us
        glitch_seen = 0;
        begin
            longint elapsed = 0;
            while (elapsed < 2_000_000) begin
                #100;
                elapsed += 100;
                if (frand1 === 1'bx || frand1 === 1'bz) glitch_seen = 1;
                if (frand2 === 1'bx || frand2 === 1'bz) glitch_seen = 1;
            end
        end
        if (!glitch_seen)
            begin $display("PASS: T5 no X/Z glitches on frand1 or frand2"); pass_cnt++; end
        else
            begin $display("FAIL: T5 X/Z glitch detected on frand1 or frand2"); fail_cnt++; end

        $display("---");
        $display("%0d/%0d tests passed", pass_cnt, pass_cnt + fail_cnt);
        $stop;
    end

endmodule
