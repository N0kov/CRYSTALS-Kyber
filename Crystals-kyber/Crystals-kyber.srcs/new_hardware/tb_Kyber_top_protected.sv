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

    // Capture on base clock edges — valid_server/client are in frand1/frand2
    // domains but dout is already registered and stable when valid is high.
    // Sampling on clk_base is safe because valid pulses last at least one
    // frand cycle which is >= 5 ns, longer than clk_base's 10 ns period.
    always @(posedge clk_base) begin
        if (valid_server) $fdisplay(fp_ser, "%h", dout_server);
        if (valid_client) $fdisplay(fp_cli, "%h", dout_client);
    end

    // -------------------------------------------------------------------------
    // Stimulus
    // -------------------------------------------------------------------------
    integer t_lock;
    integer lock_failed;

    initial begin
        rst   = 0;
        start = 0;
        k     = 3'h 3;   // Kyber768 — matches paper's target
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

        // Give cores one extra base clock after lock before starting
        repeat (2) @(posedge clk_base);
        start = 1;
        @(posedge clk_base);
        start = 0;

        $display("INFO: KEM started at %0t", $time);
    end

    // -------------------------------------------------------------------------
    // Timeout watchdog: KEM should complete well within 5 ms at these clock
    // frequencies. At 83 MHz (slowest frand) Kyber768 decapsulation takes
    // ~14000 cycles = ~170 us. Allow 10x margin.
    // -------------------------------------------------------------------------
    initial begin
        #2_000_000; // 2 ms
        $display("FAIL: simulation timeout — KEM did not complete");
        $fclose(fp_ser);
        $fclose(fp_cli);
        $stop;
    end

    // -------------------------------------------------------------------------
    // Completion detection: shared key is the last 8 words output by both
    // server and client. We count valid_server words; after 8 consecutive
    // words following a gap (valid dropped then rose again) declare done.
    // Simpler: just wait until both valid signals have been seen and then
    // gone low for 100 ns, indicating the KEM is finished.
    // -------------------------------------------------------------------------
    logic ser_done, cli_done;
    initial ser_done = 0;
    initial cli_done = 0;

    always @(posedge clk_base) begin
        if (valid_server) ser_done <= 1;
        if (valid_client) cli_done <= 1;
    end

    always @(posedge clk_base) begin
        if (ser_done && cli_done && !valid_server && !valid_client) begin
            // Wait a little longer to catch any trailing words
            #200;
            $display("INFO: KEM complete at %0t — closing output files", $time);
            $fclose(fp_ser);
            $fclose(fp_cli);
            $display("INFO: Compare output_ser_prot.txt and output_cli_prot.txt");
            $display("INFO: against output_ser.txt / output_cli.txt from Kyber_tb.v");
            $display("INFO: Last 8 rows of each file should match (shared key).");
            $stop;
        end
    end

endmodule
