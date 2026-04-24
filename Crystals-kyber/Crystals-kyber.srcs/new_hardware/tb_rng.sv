`timescale 1ps/1ps
// Testbench for rng.sv (PRNG mode only).
//
// Checks:
//   T1  rng_valid_o is asserted immediately after reset deassert.
//   T2  rng_bit_o is not stuck at 0 over 256 cycles.
//   T3  rng_bit_o is not stuck at 1 over 256 cycles.
//   T4  The 32-bit XORShift state does not repeat within 1024 cycles
//       (samples reconstructed by collecting 32 consecutive bits).

module tb_rng;

    localparam CLK_HALF = 5000; // 5000 ps = 100 MHz

    logic clk, reset;
    logic rng_bit, rng_valid;

    rng #(
        .USE_TRNG (0),
        .SEED_VAL (32'hA5A5A5A5)
    ) dut (
        .clk_i            (clk),
        .reset_i          (reset),
        .avalanche_noise_i(1'b0),
        .rng_bit_o        (rng_bit),
        .rng_valid_o      (rng_valid)
    );

    initial clk = 0;
    always #CLK_HALF clk = ~clk;

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

    // Collect 32 bits into a word (LSB first) — must be a task (has @)
    task automatic collect_word(output logic [31:0] w);
        w = 0;
        for (int i = 0; i < 32; i++) begin
            @(posedge clk);
            w[i] = rng_bit;
        end
    endtask

    int ones_cnt;
    logic [31:0] words[32];

    initial begin
        reset = 0;
        @(posedge clk); #1;
        @(posedge clk); #1;
        reset = 1;  // deassert active-low reset
        @(posedge clk); #1;

        // T1: valid immediately
        check("T1 rng_valid_o high after reset", rng_valid, 1'b1);

        // T2 / T3: not stuck
        ones_cnt = 0;
        repeat (256) begin
            @(posedge clk);
            if (rng_bit) ones_cnt++;
        end
        if (ones_cnt > 0)
            begin $display("PASS: T2 rng_bit not stuck at 0 (%0d ones)", ones_cnt); pass_cnt++; end
        else
            begin $display("FAIL: T2 rng_bit stuck at 0"); fail_cnt++; end
        if (ones_cnt < 256)
            begin $display("PASS: T3 rng_bit not stuck at 1 (%0d zeros)", 256-ones_cnt); pass_cnt++; end
        else
            begin $display("FAIL: T3 rng_bit stuck at 1"); fail_cnt++; end

        // T4: no repeated 32-bit words across 1024 cycles (32 words)
        for (int i = 0; i < 32; i++)
            collect_word(words[i]);

        begin
            int dup = 0;
            for (int i = 0; i < 32; i++)
                for (int j = i+1; j < 32; j++)
                    if (words[i] === words[j]) dup++;
            if (dup == 0)
                begin $display("PASS: T4 no repeated 32-bit words in 1024 cycles"); pass_cnt++; end
            else
                begin $display("FAIL: T4 %0d duplicate word(s) detected", dup); fail_cnt++; end
        end

        $display("---");
        $display("%0d/%0d tests passed", pass_cnt, pass_cnt + fail_cnt);
        $stop;
    end

endmodule
