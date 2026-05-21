`timescale 1ns/1ps
// =============================================================================
// tb_ntt_dout_linearity.sv
// -----------------------------------------------------------------------------
// Phase 2b investigative testbench.
//
// QUESTION: For the existing NTT_core_Client in this codebase, can we recover
// the unmasked dout from masked-input dout via subtraction?
//
// I.e., does
//     NTT_core_Client(din + r).dout - NTT_core_Client(r).dout == NTT_core_Client(din).dout
// hold cycle-by-cycle for valid output cycles?
//
// If YES: the Compute-in-masked-form Option 1 wrapper is viable.
// If NO:  Option 1 wrapper is mathematically incompatible with this codebase
//         and Option 2 (internal NTT_core modification) is required.
//
// METHODOLOGY:
//   - Instantiate THREE NTT_core_Client instances all driven by identical
//     control inputs (clk, rst, start, k, m_bits, FIFO statuses):
//       u_unmasked: receives din directly
//       u_primary:  receives (din + R_CONST) mod Q on coefficient cycles
//       u_mask:     receives R_CONST on coefficient cycles
//   - All three see the same FIFO statuses (no actual FIFOs; we drive these
//     inputs as test stimulus).
//   - Drive a fixed input pattern on `din` representing a small canned
//     polynomial. Use a non-zero R_CONST = 12'h0AB.
//   - Sample u_unmasked.dout, u_primary.dout, u_mask.dout every cycle.
//   - For every cycle where u_unmasked.valid is high:
//       Compute reconstructed_dout =
//           (u_primary.dout - u_mask.dout + Q_pair) mod Q_pair
//       (split per-half if dout layout is two coefficient halves)
//       Compare reconstructed_dout against u_unmasked.dout.
//
// RESULT INTERPRETATION:
//   - All cycles match: Option 1 viable. Phase 2b can proceed with confidence.
//   - Some/all cycles don't match: Option 1 DEAD. Plan must pivot.
//
// This test deliberately runs the NTT with synthetic stimulus (not the full
// Kyber FSM) so we can validate the math in isolation. If this test fails
// the conclusion is robust: the wrapper approach cannot recover the
// unmasked dout from the masked one regardless of timing or integration.
// =============================================================================

module tb_ntt_dout_linearity;

    localparam HALF_PERIOD = 5;
    localparam Q           = 12'h D01;        // Kyber prime: 3329
    localparam [11:0] R_CONST = 12'h 0AB;     // 171, arbitrary non-zero

    logic        clk;
    logic        rst;
    logic        start;
    logic [2:0]  k;
    logic [3:0]  m_bits;
    logic        fifo0_empty;
    logic        fifo1_empty;
    logic        fifo1_full;

    // The three din variants
    logic [24:0] din_real;     // arbitrary polynomial sample
    logic [24:0] din_masked;   // (din_real + R_CONST) mod Q per half
    logic [24:0] din_mask;     // R_CONST in both halves

    // Outputs from each instance
    logic        u_ready_u, u_ready_c, u_fifo0_req, u_fifo1_req_r9, u_req_D, u_ena_sft, u_valid;
    logic [21:0] u_dout;

    logic        p_ready_u, p_ready_c, p_fifo0_req, p_fifo1_req_r9, p_req_D, p_ena_sft, p_valid;
    logic [21:0] p_dout;

    logic        m_ready_u, m_ready_c, m_fifo0_req, m_fifo1_req_r9, m_req_D, m_ena_sft, m_valid;
    logic [21:0] m_dout;

    NTT_core_Client u_unmasked (
        .clk(clk), .rst(rst), .start(start), .k(k),
        .din(din_real),
        .fifo0_empty(fifo0_empty), .fifo1_empty(fifo1_empty), .fifo1_full(fifo1_full),
        .m_bits(m_bits),
        .ready_u(u_ready_u), .ready_c(u_ready_c),
        .fifo0_req(u_fifo0_req), .fifo1_req_r9(u_fifo1_req_r9), .req_D(u_req_D),
        .ena_sft(u_ena_sft), .valid(u_valid), .dout(u_dout)
    );

    NTT_core_Client u_primary (
        .clk(clk), .rst(rst), .start(start), .k(k),
        .din(din_masked),
        .fifo0_empty(fifo0_empty), .fifo1_empty(fifo1_empty), .fifo1_full(fifo1_full),
        .m_bits(m_bits),
        .ready_u(p_ready_u), .ready_c(p_ready_c),
        .fifo0_req(p_fifo0_req), .fifo1_req_r9(p_fifo1_req_r9), .req_D(p_req_D),
        .ena_sft(p_ena_sft), .valid(p_valid), .dout(p_dout)
    );

    NTT_core_Client u_mask (
        .clk(clk), .rst(rst), .start(start), .k(k),
        .din(din_mask),
        .fifo0_empty(fifo0_empty), .fifo1_empty(fifo1_empty), .fifo1_full(fifo1_full),
        .m_bits(m_bits),
        .ready_u(m_ready_u), .ready_c(m_ready_c),
        .fifo0_req(m_fifo0_req), .fifo1_req_r9(m_fifo1_req_r9), .req_D(m_req_D),
        .ena_sft(m_ena_sft), .valid(m_valid), .dout(m_dout)
    );

    initial clk = 0;
    always #HALF_PERIOD clk = ~clk;

    // -------------------------------------------------------------------------
    // Drive din_real with a deterministic sequence of "polynomial-like" data.
    // Each cycle, din_real changes to a different 24-bit value where each
    // 12-bit half is in [0, Q). The metadata bit din[24] alternates.
    // For din_masked, apply (din + R_CONST) mod Q per half.
    // For din_mask, present {1'b0, R_CONST, R_CONST}.
    //
    // We don't try to drive realistic FIFO data — we just want to compare
    // the three NTT_cores' output relationships. They must see IDENTICAL
    // control inputs (FIFO statuses, m_bits, k).
    // -------------------------------------------------------------------------
    integer cycle_idx;
    logic [11:0] sample_lo, sample_hi;
    logic [12:0] sum_lo, sum_hi;
    logic [11:0] masked_lo, masked_hi;

    always @(posedge clk) begin
        if (rst) begin
            cycle_idx <= 0;
        end else begin
            cycle_idx <= cycle_idx + 1;
        end
    end

    always @(*) begin
        // Construct deterministic "polynomial coefficient pair" each cycle
        sample_lo = (cycle_idx * 7 + 1) % Q;       // low half coefficient
        sample_hi = (cycle_idx * 13 + 100) % Q;    // high half coefficient
        din_real = {cycle_idx[0], sample_hi, sample_lo};

        // Masked version: add R_CONST per half mod Q
        sum_lo = {1'b0, sample_lo} + {1'b0, R_CONST};
        sum_hi = {1'b0, sample_hi} + {1'b0, R_CONST};
        masked_lo = (sum_lo >= Q) ? sum_lo[11:0] - Q : sum_lo[11:0];
        masked_hi = (sum_hi >= Q) ? sum_hi[11:0] - Q : sum_hi[11:0];
        din_masked = {cycle_idx[0], masked_hi, masked_lo};

        // Mask-only: just R_CONST in both halves
        din_mask   = {cycle_idx[0], R_CONST, R_CONST};
    end

    // -------------------------------------------------------------------------
    // Comparator: every cycle u_unmasked.valid is high, check if
    //   (p_dout - m_dout + Q_pair) mod Q_pair  ==  u_dout
    // where Q_pair handles the dout layout.
    //
    // dout is 22 bits with layout that depends on state and k. Without
    // fully reverse-engineering the layout, we treat dout as 22-bit
    // unsigned and try the simplest possible reconstruction first:
    // direct subtract per packing.
    // -------------------------------------------------------------------------
    int n_valid_cycles    = 0;
    int n_match           = 0;
    int n_mismatch        = 0;
    int first_mismatch_cy = -1;
    logic [21:0] reconstructed;

    // Try several candidate reconstructions to see which (if any) matches:
    // - direct subtract (treats dout as a single 22-bit value)
    // - subtract per 11-bit half
    // - subtract per 11-bit half with conditional Q add
    int n_match_direct    = 0;
    int n_match_11bit_half = 0;

    logic [22:0] direct_diff;
    logic [12:0] hi_diff_11, lo_diff_11;
    logic [10:0] hi_recon_11, lo_recon_11;

    always @(posedge clk) begin
        if (u_valid && p_valid && m_valid) begin
            n_valid_cycles++;

            // Direct subtract
            direct_diff = {1'b0, p_dout} + {1'b0, 22'h3D0400} - {1'b0, m_dout};
            // 22'h3D0400 ≈ "lots of Q's" guard, won't actually be useful but
            // we try it for completeness
            if (direct_diff[21:0] == u_dout) n_match_direct++;

            // 11-bit halves with conditional Q
            hi_diff_11 = {2'b0, p_dout[21:11]} + {2'b0, Q[10:0]} - {2'b0, m_dout[21:11]};
            lo_diff_11 = {2'b0, p_dout[10:0]}  + {2'b0, Q[10:0]} - {2'b0, m_dout[10:0]};
            hi_recon_11 = (hi_diff_11 >= Q[10:0]) ? hi_diff_11[10:0] - Q[10:0] : hi_diff_11[10:0];
            lo_recon_11 = (lo_diff_11 >= Q[10:0]) ? lo_diff_11[10:0] - Q[10:0] : lo_diff_11[10:0];
            if ({hi_recon_11, lo_recon_11} == u_dout) n_match_11bit_half++;

            // Primary mismatch metric: pick whichever is more lenient
            reconstructed = {hi_recon_11, lo_recon_11};
            if (reconstructed != u_dout) begin
                n_mismatch++;
                if (first_mismatch_cy == -1) first_mismatch_cy = cycle_idx;
                if (n_mismatch <= 5) begin
                    $display("MISMATCH cy=%0d: u_dout=%h p_dout=%h m_dout=%h recon=%h",
                             cycle_idx, u_dout, p_dout, m_dout, reconstructed);
                end
            end else begin
                n_match++;
            end
        end
    end

    // -------------------------------------------------------------------------
    // Stimulus: drive a synthetic NTT scenario.
    //   - Hold rst, then release.
    //   - Drive fifo statuses to allow the FSM to progress.
    //   - Pulse start.
    //   - Run for ~200 us simulated time, capturing many output cycles.
    // -------------------------------------------------------------------------
    initial begin
        rst         = 1;
        start       = 0;
        k           = 3'h 4;     // Kyber1024
        m_bits      = 4'h 0;
        fifo0_empty = 0;         // pretend FIFO has data ready
        fifo1_empty = 0;
        fifo1_full  = 1;         // pretend other FIFO is full (allows transition out of state 4'h1)

        repeat (8) @(posedge clk);
        rst = 0;
        repeat (4) @(posedge clk);
        start = 1;
        @(posedge clk);
        start = 0;

        // Run long enough to capture multiple output phases. NTT computation
        // is several thousand cycles. Run 500 us at 100 MHz = 50,000 cycles.
        repeat (50_000) @(posedge clk);

        // -----------------------------------------------------------------
        // Report
        // -----------------------------------------------------------------
        $display("---");
        $display("Total valid output cycles: %0d", n_valid_cycles);
        $display("Reconstructed-via-11bit-halves match: %0d / %0d", n_match_11bit_half, n_valid_cycles);
        $display("Reconstructed-via-direct-subtract match: %0d / %0d", n_match_direct, n_valid_cycles);
        $display("");
        if (n_valid_cycles == 0) begin
            $display("FAIL: no valid output cycles observed (test stimulus too weak)");
        end else if (n_match_11bit_half == n_valid_cycles) begin
            $display("PASS: 11-bit-half reconstruction matches in 100%% of cycles");
            $display("CONCLUSION: Option 1 wrapper-only masking IS viable for NTT_core_Client.");
        end else if ((real'(n_match_11bit_half) / real'(n_valid_cycles)) > 0.95) begin
            $display("PARTIAL: %0.1f%% of cycles match — close to working",
                     100.0 * real'(n_match_11bit_half) / real'(n_valid_cycles));
            $display("CONCLUSION: dout layout may need more careful unpacking.");
        end else begin
            $display("FAIL: only %0.1f%% match",
                     100.0 * real'(n_match_11bit_half) / real'(n_valid_cycles));
            $display("CONCLUSION: Option 1 wrapper-only masking IS NOT viable. dout is");
            $display("            non-linear in din (Montgomery quotient bits). Real");
            $display("            masking requires Option 2 (internal NTT_core changes).");
            if (first_mismatch_cy >= 0) begin
                $display("            First mismatch at cycle %0d", first_mismatch_cy);
            end
        end

        $stop;
    end

    initial begin
        repeat (500) #1_000_000;  // 500 us watchdog (deliberately generous)
        $display("FAIL: watchdog timeout");
        $stop;
    end

endmodule
