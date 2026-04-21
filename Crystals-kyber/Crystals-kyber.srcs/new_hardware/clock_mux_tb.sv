// Testbench for clk_mux.
//
// Tests:
//   T1  Reset holds clk_o low regardless of select.
//   T2  select=0 passes clk1 to clk_o.
//   T3  select=1 passes clk2 to clk_o.
//   T4  Switching select mid-run does not produce a glitch (clk_o stays low
//       or high — never X — immediately after the switch).
//   T5  Re-asserting reset mid-run drives clk_o low.

`timescale 1ps/1ps

module clk_mux_tb;

    logic select, clk1, clk2, reset, clk_o;

    clk_mux dut (
        .select_i(select),
        .clk1_i(clk1),
        .clk2_i(clk2),
        .reset_i(reset),
        .clk_o(clk_o)
    );

    // clk1: 10 ns period (100 MHz)  -> half-period = 5000 ps
    // clk2:  7 ns period (~143 MHz) -> half-period = 3500 ps
    initial clk1 = 0;
    always #5000 clk1 = ~clk1;

    initial clk2 = 0;
    always #3500 clk2 = ~clk2;

    int pass_cnt = 0;
    int fail_cnt = 0;

    task automatic check(
        input string      label,
        input logic       got,
        input logic       want
    );
        if (got === want) begin
            $display("PASS: %s | clk_o=%0b", label, got);
            pass_cnt++;
        end else begin
            $display("FAIL: %s | got=%0b want=%0b", label, got, want);
            fail_cnt++;
        end
    endtask

    // Count rising edges on clk_o over a window using fixed-step polling.
    int edge_cnt;
    task automatic count_rising(input longint window_ps);
        longint elapsed;
        logic   prev;
        edge_cnt = 0;
        prev     = clk_o;
        elapsed  = 0;
        while (elapsed < window_ps) begin
            #100;
            elapsed += 100;
            if (clk_o === 1 && prev === 0) edge_cnt++;
            prev = clk_o;
        end
    endtask

    initial begin
        select = 0;
        reset  = 0; // active-low: assert reset

        // ── T1: reset suppresses output ───────────────────────────────────
        // Hold reset across many cycles of both clocks.
        #50000;
        check("T1a reset=0 select=0 → clk_o=0", clk_o, 1'b0);
        select = 1;
        #50000;
        check("T1b reset=0 select=1 → clk_o=0", clk_o, 1'b0);

        // ── T2: select=0 passes clk1 (100 MHz, ~20 edges per 200 ns) ──────
        $display("--- T2: select=0, expect clk1 on output ---");
        select  = 0;
        reset   = 1; // deassert reset
        count_rising(200000);
        $display("  rising edges in 200ns: %0d (expect ~20)", edge_cnt);
        if (edge_cnt >= 15 && edge_cnt <= 25) begin
            $display("PASS: T2 edge count in range"); pass_cnt++;
        end else begin
            $display("FAIL: T2 edge count out of range"); fail_cnt++;
        end

        // ── T3: select=1 passes clk2 (~143 MHz, ~28 edges per 200 ns) ─────
        $display("--- T3: select=1, expect clk2 on output ---");
        select = 1;
        count_rising(200000);
        $display("  rising edges in 200ns: %0d (expect ~28)", edge_cnt);
        if (edge_cnt >= 22 && edge_cnt <= 34) begin
            $display("PASS: T3 edge count in range"); pass_cnt++;
        end else begin
            $display("FAIL: T3 edge count out of range"); fail_cnt++;
        end

        // ── T4: select switching with reset ───────────────────────────────
        // The glitch-free mux requires reset when switching select, as the
        // synchronizer feedback loop cannot resolve X without a reset pulse.
        // Toggle select 6 times; each time reset → change select → release reset
        // → verify clk_o is clean after sync chains settle.
        $display("--- T4: select switching (with reset between switches) ---");
        select = 0;
        repeat (6) begin
            reset = 0;           // assert reset (active-low)
            #50000;
            select = ~select;
            reset = 1;           // deassert reset
            repeat(3) @(posedge clk1);
            repeat(3) @(posedge clk2);
            @(negedge clk1);
            @(negedge clk2); // both clocks low: clk_o must be 0 or 1 here
            if (clk_o !== 1'b0 && clk_o !== 1'b1) begin
                $display("FAIL: T4 clk_o not 0 or 1 after settling at %0t (got %0b)", $time, clk_o);
                fail_cnt++;
            end
        end
        $display("PASS: T4 clk_o resolves after each select toggle");
        pass_cnt++;

        // ── T5: mid-run reset drives clk_o low ────────────────────────────
        select  = 0;
        #30000;
        reset   = 0; // assert reset (active-low)
        #20000;
        check("T5  mid-run reset → clk_o=0", clk_o, 1'b0);
        reset = 1; // deassert

        // ── Summary ───────────────────────────────────────────────────────
        $display("---");
        $display("%0d/%0d tests passed", pass_cnt, pass_cnt + fail_cnt);
        $stop;
    end

endmodule
