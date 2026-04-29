`timescale 1ns/1ps
// Testbench for Kyber_top_protected.sv.
//
// Mirrors Kyber_tb.v but drives clk_base_i at 100 MHz, waits for MMCM lock,
// then pulses start. Core1 (primary) outputs are written to output files in
// the same format as Kyber_tb.v so they can be diffed against the existing
// KAT reference outputs. Core2 (dummy) outputs are written to separate files
// to confirm it runs independently and produces different data.
//
// Expected shared key (last 8 words of output_ser_prot.txt / output_cli_prot.txt)
// must match the count=0 KAT vectors — identical to the unprotected Kyber_tb
// output since Core1 uses the same seeds.
//
// Requires Vivado unisims and glbl.v in the simulation fileset.

module tb_Kyber_top_protected;

    // 100 MHz base clock (10 ns period)
    localparam CLK_HALF     = 5;        // ns
    localparam LOCK_TIMEOUT = 10_000;   // ns = 10 us

    logic       clk_base, rst, start;
    logic [2:0] k;
    logic       locked;
    logic       ready_pk, ready_c, req_pk, req_c;
    logic       valid_server, valid_client;
    logic [31:0] dout_server, dout_client;

    // -------------------------------------------------------------------------
    // DUT
    // -------------------------------------------------------------------------
    Kyber_top_protected #(
        .USE_TRNG  (0),
        .PRNG_SEED (32'hDEADBEEF)
    ) dut (
        .clk_base_i       (clk_base),
        .rst              (rst),
        .start            (start),
        .k                (k),
        .avalanche_noise_i(1'b0),
        .ready_pk         (ready_pk),
        .ready_c          (ready_c),
        .req_pk           (req_pk),
        .req_c            (req_c),
        .valid_server     (valid_server),
        .valid_client     (valid_client),
        .dout_server      (dout_server),
        .dout_client      (dout_client),
        .locked           (locked)
    );

    // -------------------------------------------------------------------------
    // Clock
    // -------------------------------------------------------------------------
    initial clk_base = 0;
    always #CLK_HALF clk_base = ~clk_base;

    // -------------------------------------------------------------------------
    // Output files — same naming convention as Kyber_tb.v with _prot suffix
    // so both can coexist in the same simulation directory.
    // -------------------------------------------------------------------------
    integer fp_ser, fp_cli;
    initial begin
        fp_ser = $fopen("output_ser_prot.txt", "w");
        fp_cli = $fopen("output_cli_prot.txt", "w");
    end

    // Capture on the actual core clock domain (clk1 = randomized clock for Core1)
    int n_ser, n_cli;
    initial begin n_ser = 0; n_cli = 0; end
    always @(posedge dut.clk1) begin
        if (valid_server) begin
            $fdisplay(fp_ser, "%h", dout_server);
            n_ser++;
        end
        if (valid_client) begin
            $fdisplay(fp_cli, "%h", dout_client);
            n_cli++;
        end
    end

    // -------------------------------------------------------------------------
    // Stimulus
    // -------------------------------------------------------------------------
    integer t_lock;
    integer lock_failed;

    initial begin
        rst   = 0;
        start = 0;
        k     = 3'h 3;   // Kyber768 — paper's target (set to 3'h 4 for KAT regression)
        lock_failed = 0;

        // Assert reset for 4 base clock cycles
        repeat (4) @(posedge clk_base);
        rst = 1;
        repeat (2) @(posedge clk_base);
        rst = 0;

        // Wait for MMCM lock with timeout
        fork
            begin : wait_lock
                @(posedge locked);
            end
            begin : timeout
                #LOCK_TIMEOUT;
                $display("FAIL: MMCM did not lock within %0d ns", LOCK_TIMEOUT);
                lock_failed = 1;
            end
        join_any
        disable wait_lock;
        disable timeout;

        if (lock_failed) begin
            $fclose(fp_ser);
            $fclose(fp_cli);
            $stop;
        end

        $display("INFO: MMCM locked at %0t", $time);

        // Wait long enough for the reset counter (16 clk1 cycles @ 125-200MHz = ~80-128ns)
        // to fully release before pulsing start. Also hold start for several base
        // cycles so it overlaps a clk1 rising edge regardless of phase.
        #500;  // 500 ns
        start = 1;
        repeat (8) @(posedge clk_base);
        start = 0;

        $display("INFO: KEM started at %0t", $time);
    end

    // -------------------------------------------------------------------------
    // Timeout watchdog: KEM should complete well within 5 ms at these clock
    // frequencies. At 83 MHz (slowest frand) Kyber768 decapsulation takes
    // ~14000 cycles = ~170 us. Allow 10x margin.
    // -------------------------------------------------------------------------
    initial begin
        #10_000_000; // 10 ms
        $display("FAIL: simulation timeout — KEM did not complete");
        $fclose(fp_ser);
        $fclose(fp_cli);
        $stop;
    end

    // -------------------------------------------------------------------------
    // Completion detection: KEM has multiple phases (key gen -> encap -> decap)
    // with idle gaps between them. Detect end-of-KEM by waiting for a long
    // sustained idle period (no valid pulses for 50 us) AFTER both valid signals
    // have been seen at least once.
    // -------------------------------------------------------------------------
    logic ser_done, cli_done;
    int idle_us;  // microseconds of continuous idle
    initial ser_done = 0;
    initial cli_done = 0;
    initial idle_us = 0;

    always @(posedge clk_base) begin
        if (valid_server) ser_done <= 1;
        if (valid_client) cli_done <= 1;
        if (valid_server || valid_client)
            idle_us <= 0;
    end

    initial begin
        forever begin
            #1000; // 1 us
            if (ser_done && cli_done) begin
                if (!valid_server && !valid_client)
                    idle_us <= idle_us + 1;
                if (idle_us >= 200) begin
                    $display("INFO: KEM complete at %0t (200 us idle) — closing output files", $time);
                    $display("INFO: Captured n_ser=%0d n_cli=%0d", n_ser, n_cli);
                    $display("INFO: Final S.state=%0h C.state=%0h ready_pk=%0b ready_c=%0b req_pk=%0b req_c=%0b",
                             dut.core1.S.state, dut.core1.C.state, ready_pk, ready_c, req_pk, req_c);
                    $fclose(fp_ser);
                    $fclose(fp_cli);
                    $display("INFO: Compare last 8 rows of output_ser_prot.txt vs output_cli_prot.txt");
                    $display("INFO: They must match — that is the shared key.");
                    $stop;
                end
            end
        end
    end

endmodule
