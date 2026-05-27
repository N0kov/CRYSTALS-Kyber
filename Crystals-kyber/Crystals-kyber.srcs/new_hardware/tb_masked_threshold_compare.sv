`timescale 1ns/1ps
// =============================================================================
// tb_masked_threshold_compare.sv
//
// Standalone testbench for masked_threshold_compare (Phase A v2 building
// block). Verifies the gadget computes the Boolean shares of
//     (LO <= c < HI)
// correctly given Boolean-shared input c.
//
// Reference:
//     plan_masked_ntt_phase3a_design.md §12.b
//     plan_masked_ntt_phase3a_status.md
// =============================================================================

module tb_masked_threshold_compare;

    localparam int PARAM_WIDTH = 13;
    localparam int N_SHARES    = 2;
    localparam int N_STAGES    = 4;
    localparam int RND_TRI     = 2 * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int RND_BOX     = (N_STAGES - 1) * 3 * (N_SHARES * (N_SHARES - 1) / 2)
                                 + 2 * (N_SHARES * (N_SHARES - 1) / 2);
    localparam int RND_AND     = N_SHARES * (N_SHARES - 1) / 2;

    localparam [12:0] Q  = 13'd3329;
    localparam [12:0] LO = 13'd833;
    localparam [12:0] HI = 13'd2497;

    localparam int NUM_RANDOM = 500;

    logic clk = 0;
    always #0.5ns clk = ~clk;

    logic rst_n;
    initial begin rst_n = 0; #5; @(posedge clk); #0.1; rst_n = 1; end

    // DUT signals
    logic [12:0] c_share_p, c_share_m;
    logic        start;
    logic        done;
    logic        m_p_o, m_m_o;

    logic [PARAM_WIDTH-1:0] rnd_lo_tri  [RND_TRI-1:0];
    logic [7:0]             rnd_lo_box  [RND_BOX-1:0];
    logic [PARAM_WIDTH-1:0] rnd_hi_tri  [RND_TRI-1:0];
    logic [7:0]             rnd_hi_box  [RND_BOX-1:0];
    logic                   rnd_and     [RND_AND-1:0];

    masked_threshold_compare #(
        .HALFCYCLE  (1),
        .PARAM_WIDTH(PARAM_WIDTH),
        .N_SHARES   (N_SHARES),
        .N_STAGES   (N_STAGES),
        .LO         (LO),
        .HI         (HI)
    ) dut (
        .clk                   (clk),
        .rst_n                 (rst_n),
        .start                 (start),
        .done                  (done),
        .c_share_p             (c_share_p),
        .c_share_m             (c_share_m),
        .rnd_secadd_lo_triangle(rnd_lo_tri),
        .rnd_secadd_lo_box     (rnd_lo_box),
        .rnd_secadd_hi_triangle(rnd_hi_tri),
        .rnd_secadd_hi_box     (rnd_hi_box),
        .rnd_secand            (rnd_and),
        .m_p_o                 (m_p_o),
        .m_m_o                 (m_m_o)
    );

    // -------------------------------------------------------------------------
    // Randomness: simple per-cycle pseudo-random.
    // -------------------------------------------------------------------------
    int rnd_seed;
    initial rnd_seed = 32'hCAFEBABE;
    always_ff @(posedge clk) begin
        for (int i = 0; i < RND_TRI; i++) rnd_lo_tri[i] <= $random(rnd_seed);
        for (int i = 0; i < RND_BOX; i++) rnd_lo_box[i] <= $random(rnd_seed);
        for (int i = 0; i < RND_TRI; i++) rnd_hi_tri[i] <= $random(rnd_seed);
        for (int i = 0; i < RND_BOX; i++) rnd_hi_box[i] <= $random(rnd_seed);
        for (int i = 0; i < RND_AND; i++) rnd_and[i]    <= $random(rnd_seed);
    end

    // -------------------------------------------------------------------------
    // Reference (cleartext compute on testbench-only XOR)
    // -------------------------------------------------------------------------
    function automatic logic ref_in_range(input int c);
        ref_in_range = (c >= LO) && (c < HI);
    endfunction

    int fail_cnt = 0;
    int pass_cnt = 0;

    task automatic apply_one(input int c_truth);
        int r;
        int truth;
        begin
            r = $urandom() & 13'h1FFF;
            c_share_p = (c_truth ^ r);
            c_share_m = r[12:0];

            @(posedge clk); #0.1;
            start = 1'b1;
            @(posedge clk); #0.1;
            start = 1'b0;

            wait (done);
            @(posedge clk); #0.1;

            truth = ref_in_range(c_truth);
            if ((m_p_o ^ m_m_o) === truth[0]) begin
                pass_cnt++;
            end else begin
                fail_cnt++;
                if (fail_cnt <= 10)
                    $display("FAIL c=%0d r=%0d expected=%0b got=%0b (m_p=%0b m_m=%0b)",
                             c_truth, r, truth[0], m_p_o ^ m_m_o, m_p_o, m_m_o);
            end

            // Settle
            @(posedge clk); #0.1;
            @(posedge clk); #0.1;
        end
    endtask

    initial begin
        start = 0;
        c_share_p = 0; c_share_m = 0;
        wait (rst_n);
        @(posedge clk); #0.1;

        $display("=== Edge cases ===");
        begin : edge_block
            int e [10] = '{0, 1, LO-1, LO, LO+1, Q/2, HI-1, HI, HI+1, Q-1};
            for (int i = 0; i < 10; i++) apply_one(e[i]);
        end

        $display("=== Random sweep (%0d) ===", NUM_RANDOM);
        for (int i = 0; i < NUM_RANDOM; i++) apply_one($urandom() % Q);

        $display("=== RESULT === pass=%0d fail=%0d", pass_cnt, fail_cnt);
        if (fail_cnt == 0)
            $display("PASS: masked_threshold_compare correct");
        else
            $display("FAIL: %0d mismatches", fail_cnt);
        $finish;
    end

    initial begin
        #10_000_000;
        $display("FAIL: tb timeout");
        $finish;
    end

endmodule
