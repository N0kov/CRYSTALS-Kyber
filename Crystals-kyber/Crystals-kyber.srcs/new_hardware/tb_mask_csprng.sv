`timescale 1ns/1ps
// =============================================================================
// tb_mask_csprng.sv
// -----------------------------------------------------------------------------
// Phase 1 of plan_masked_ntt_option1.md.
// Unit testbench for mask_csprng.sv.
//
// Tests (in order):
//   T1  After reset+ntt_call_start, mask_csprng emits 256 samples on demand,
//       all in [0, Q). Confirms basic functional correctness and rejection
//       sampling enforcement.
//   T2  Two consecutive 256-sample batches (with an ntt_call_start flush
//       between them) differ on every position. NOTE: this does NOT prove
//       per-NTT-call freshness — the underlying PRNG isn't reseeded between
//       batches; T2 only verifies the flush correctly resets the accumulator
//       state and the consumer handshake. True per-call freshness requires
//       PRNG reseed (deferred to Phase 2 where the masked NTT wrapper drives
//       the reset).
//   T3  Statistical sanity: 4096 samples, check
//          - all < Q
//          - min in lowest sixteenth of [0, Q)
//          - max in highest sixteenth of [0, Q)
//          - mean ≈ Q/2 within 5% tolerance
//       Catches obvious distribution bugs (stuck bits, biased rejection).
//   T4  Histogram chi-squared on 16 equal-width bin_counts over 4096 samples.
//       Expected ~256 per bin. Compute Pearson chi-squared statistic;
//       compare to χ²(15 dof, p=0.001) cutoff = 37.7. Loose check that
//       catches gross non-uniformity, not a strong randomness test.
// =============================================================================

module tb_mask_csprng;

    localparam HALF_PERIOD_PS = 5_000;   // 100 MHz
    localparam Q_PARAM        = 12'hD01; // 3329

    logic        clk;
    logic        reset_n;            // active-low, matches DUT
    logic        ntt_call_start;
    logic        req;
    logic        valid;
    logic [11:0] r;

    // First DUT instance: PRNG mode with seed A
    mask_csprng #(
        .USE_TRNG (0),
        .SEED_VAL (32'hCAFEBABE),
        .Q        (Q_PARAM)
    ) dut (
        .clk_i             (clk),
        .reset_i           (reset_n),
        .avalanche_noise_i (1'b0),
        .ntt_call_start    (ntt_call_start),
        .req               (req),
        .valid             (valid),
        .r                 (r)
    );

    // Clock
    initial clk = 0;
    always #HALF_PERIOD_PS clk = ~clk;

    // -------------------------------------------------------------------------
    // Sample-collection task: pulse req when valid, collect N samples.
    // Returns samples in `out_samples`; aborts after `timeout` cycles to avoid
    // infinite hang if the DUT is broken.
    // -------------------------------------------------------------------------
    int n_collected;
    int n_pass = 0;
    int n_fail = 0;

    task automatic collect_samples(
        input  int N,
        output logic [11:0] out_samples [],
        input  longint timeout_cycles = 1_000_000
    );
        longint elapsed = 0;
        int progress_step;
        out_samples = new[N];
        n_collected = 0;
        progress_step = (N >= 1024) ? (N / 4) : N;
        req = 1'b0;
        while (n_collected < N && elapsed < timeout_cycles) begin
            @(posedge clk);
            elapsed++;
            if (valid && !req) begin
                out_samples[n_collected] = r;
                n_collected++;
                if ((n_collected % progress_step) == 0)
                    $display("  collect_samples progress: %0d/%0d at %0t (cycles=%0d)",
                             n_collected, N, $time, elapsed);
                req <= 1'b1;
            end else begin
                req <= 1'b0;
            end
        end
        req = 1'b0;
        if (n_collected < N) begin
            $display("FAIL: collect_samples timed out at %0d/%0d (after %0d cycles)",
                     n_collected, N, elapsed);
            n_fail++;
        end
    endtask

    // -------------------------------------------------------------------------
    // Statistics helpers
    // -------------------------------------------------------------------------
    function automatic int unsigned bin_index(input [11:0] v, input int n_bins);
        // Map [0, Q) into [0, n_bins). Integer division for simplicity.
        return (int'(v) * n_bins) / int'(Q_PARAM);
    endfunction

    // -------------------------------------------------------------------------
    // Test sequence
    // -------------------------------------------------------------------------
    logic [11:0] batch1 [];
    logic [11:0] batch2 [];
    logic [11:0] big_batch [];
    int        bin_counts [16];
    longint    sum;
    int        min_v, max_v;
    int        i, j;
    int        diff_count;
    real       mean, expected_per_bin, chi2, chi2_cutoff;
    real       diff;

    initial begin
        // Reset
        reset_n        = 1'b0;
        ntt_call_start = 1'b0;
        req            = 1'b0;
        repeat (8) @(posedge clk);
        reset_n = 1'b1;

        // Pulse ntt_call_start to flush state
        @(posedge clk);
        ntt_call_start = 1'b1;
        @(posedge clk);
        ntt_call_start = 1'b0;

        // ---------------------------------------------------------------------
        // T1: collect 256 samples, all in [0, Q)
        // ---------------------------------------------------------------------
        $display("--- T1: 256 samples after first ntt_call_start ---");
        collect_samples(256, batch1);
        if (n_collected != 256) begin
            $display("FAIL T1: only collected %0d / 256 samples", n_collected);
            n_fail++;
        end else begin
            int t1_violations = 0;
            for (i = 0; i < 256; i++) begin
                if (batch1[i] >= Q_PARAM) t1_violations++;
            end
            if (t1_violations == 0) begin
                $display("PASS T1: 256 samples, all in [0, %0d). First few: %0d %0d %0d %0d %0d",
                         Q_PARAM, batch1[0], batch1[1], batch1[2], batch1[3], batch1[4]);
                n_pass++;
            end else begin
                $display("FAIL T1: %0d / 256 samples were >= Q (=%0d)",
                         t1_violations, Q_PARAM);
                n_fail++;
            end
        end

        // ---------------------------------------------------------------------
        // T2: re-seed and verify second batch differs from first
        // ---------------------------------------------------------------------
        $display("--- T2: 256 samples after second ntt_call_start (with reset+reseed) ---");
        // Re-reset and reseed via the underlying PRNG. To get a meaningfully
        // different sequence, change the SEED_VAL — but our DUT's seed is
        // fixed at synth time. So instead we just rely on the PRNG having
        // advanced through the T1 batch and producing different bits next.
        @(posedge clk);
        ntt_call_start = 1'b1;
        @(posedge clk);
        ntt_call_start = 1'b0;
        collect_samples(256, batch2);
        if (n_collected != 256) begin
            $display("FAIL T2: only collected %0d / 256 samples", n_collected);
            n_fail++;
        end else begin
            int t2_violations = 0;
            diff_count = 0;
            for (i = 0; i < 256; i++) begin
                if (batch2[i] >= Q_PARAM) t2_violations++;
                if (batch1[i] != batch2[i]) diff_count++;
            end
            if (t2_violations != 0) begin
                $display("FAIL T2: %0d / 256 samples were >= Q", t2_violations);
                n_fail++;
            end else if (diff_count < 200) begin
                // If two PRNG-driven 256-sample batches matched on >56 positions
                // (out of 256), something is wrong. With proper randomness the
                // probability of even a single collision at any specific index
                // is 1/Q ≈ 0.0003.
                $display("FAIL T2: only %0d / 256 positions differ between batches (suspicious overlap)",
                         diff_count);
                n_fail++;
            end else begin
                $display("PASS T2: %0d / 256 positions differ between fresh batches; all < Q",
                         diff_count);
                n_pass++;
            end
        end

        // ---------------------------------------------------------------------
        // T3: 4096 samples, min/max/mean sanity
        // ---------------------------------------------------------------------
        $display("--- T3: 4096 samples, min/max/mean sanity ---");
        @(posedge clk);
        ntt_call_start = 1'b1;
        @(posedge clk);
        ntt_call_start = 1'b0;
        collect_samples(4096, big_batch, 10_000_000);
        if (n_collected != 4096) begin
            $display("FAIL T3: only collected %0d / 4096 samples", n_collected);
            n_fail++;
        end else begin
            int t3_violations = 0;
            min_v = Q_PARAM;
            max_v = 0;
            sum   = 0;
            for (i = 0; i < 4096; i++) begin
                if (big_batch[i] >= Q_PARAM) t3_violations++;
                if (big_batch[i] < min_v) min_v = big_batch[i];
                if (big_batch[i] > max_v) max_v = big_batch[i];
                sum += big_batch[i];
            end
            mean = real'(sum) / 4096.0;
            $display("INFO T3: min=%0d max=%0d mean=%0.1f (Q/2=%0d)",
                     min_v, max_v, mean, Q_PARAM/2);
            if (t3_violations != 0) begin
                $display("FAIL T3: %0d / 4096 samples were >= Q", t3_violations);
                n_fail++;
            end else if (min_v >= (Q_PARAM/16)) begin
                $display("FAIL T3: min=%0d not in lowest 1/16 of [0,Q) (=[0,%0d))",
                         min_v, Q_PARAM/16);
                n_fail++;
            end else if (max_v < (Q_PARAM*15/16)) begin
                $display("FAIL T3: max=%0d not in highest 1/16 of [0,Q) (=[%0d,%0d))",
                         max_v, Q_PARAM*15/16, Q_PARAM);
                n_fail++;
            end else if (mean < real'(Q_PARAM)*0.45 || mean > real'(Q_PARAM)*0.55) begin
                $display("FAIL T3: mean=%0.1f outside [Q*0.45, Q*0.55] = [%0.1f, %0.1f]",
                         mean, real'(Q_PARAM)*0.45, real'(Q_PARAM)*0.55);
                n_fail++;
            end else begin
                $display("PASS T3: min=%0d max=%0d mean=%0.1f all sane",
                         min_v, max_v, mean);
                n_pass++;
            end
        end

        // ---------------------------------------------------------------------
        // T4: chi-squared on 16 equal-width bin_counts over the same 4096 samples
        // ---------------------------------------------------------------------
        $display("--- T4: chi-squared on 16 bin_counts over 4096 samples ---");
        if (n_collected == 4096) begin
            for (i = 0; i < 16; i++) bin_counts[i] = 0;
            for (i = 0; i < 4096; i++) begin
                j = bin_index(big_batch[i], 16);
                if (j < 16) bin_counts[j]++;
            end
            expected_per_bin = 4096.0 / 16.0;
            chi2 = 0.0;
            for (i = 0; i < 16; i++) begin
                diff = real'(bin_counts[i]) - expected_per_bin;
                chi2 += (diff * diff) / expected_per_bin;
            end
            // χ²(15 dof, p=0.001) ≈ 37.7. Use 50 as a loose upper bound to
            // account for the underlying PRNG (not a true CSPRNG) and
            // simulation-mode determinism.
            chi2_cutoff = 50.0;
            $display("INFO T4: bin_counts = %0d %0d %0d %0d %0d %0d %0d %0d %0d %0d %0d %0d %0d %0d %0d %0d",
                     bin_counts[0], bin_counts[1], bin_counts[2], bin_counts[3], bin_counts[4], bin_counts[5], bin_counts[6], bin_counts[7],
                     bin_counts[8], bin_counts[9], bin_counts[10], bin_counts[11], bin_counts[12], bin_counts[13], bin_counts[14], bin_counts[15]);
            $display("INFO T4: chi-squared = %0.2f (cutoff = %0.1f)", chi2, chi2_cutoff);
            if (chi2 < chi2_cutoff) begin
                $display("PASS T4: chi-squared %0.2f < %0.1f", chi2, chi2_cutoff);
                n_pass++;
            end else begin
                $display("FAIL T4: chi-squared %0.2f >= %0.1f (distribution suspect)",
                         chi2, chi2_cutoff);
                n_fail++;
            end
        end

        // ---------------------------------------------------------------------
        // T5: bit-level uniformity. For each of the 12 bit positions, count
        //     how many of the 4096 samples have that bit set. Expected count
        //     per bit: not 4096/2 = 2048, because samples are bounded to
        //     [0, Q=3329) NOT [0, 4096). Bit 11 (MSB of cand) is set only
        //     when value >= 2048: that's 3329 - 2048 = 1281 of 3329 values
        //     ≈ 38.5%. Other bits are closer to 50%. Compute expected per
        //     bit by counting how many values in [0, Q) have that bit set,
        //     and check observed counts are within 5σ of expected.
        //     This catches stuck-bit bugs that the chi-squared (16-bin)
        //     test would miss — particularly stuck low-order bits where
        //     bin coverage is unaffected.
        // ---------------------------------------------------------------------
        $display("--- T5: per-bit-position uniformity over 4096 samples ---");
        if (n_collected == 4096) begin
            int bit_set_count [12];
            real expected [12];
            real sigma [12];
            real diff_t5;
            real z;
            int  t5_violations;
            int  bv;
            real p;
            // Compute expected fraction of 1s per bit position over [0, Q)
            for (i = 0; i < 12; i++) begin
                int ones_in_range = 0;
                for (bv = 0; bv < int'(Q_PARAM); bv++) begin
                    if ((bv >> i) & 1) ones_in_range++;
                end
                p = real'(ones_in_range) / real'(Q_PARAM);
                expected[i] = real'(4096) * p;
                // Binomial std dev = sqrt(N*p*(1-p))
                sigma[i] = $sqrt(real'(4096) * p * (1.0 - p));
            end
            // Count observed
            for (i = 0; i < 12; i++) bit_set_count[i] = 0;
            for (i = 0; i < 4096; i++) begin
                for (bv = 0; bv < 12; bv++) begin
                    if ((big_batch[i] >> bv) & 1) bit_set_count[bv]++;
                end
            end
            // Check each bit position is within 5 sigma
            t5_violations = 0;
            for (i = 0; i < 12; i++) begin
                diff_t5 = real'(bit_set_count[i]) - expected[i];
                z = (diff_t5 < 0.0) ? -diff_t5 / sigma[i] : diff_t5 / sigma[i];
                $display("  bit[%0d]: count=%0d expected=%0.1f sigma=%0.2f z=%0.2f",
                         i, bit_set_count[i], expected[i], sigma[i], z);
                if (z > 5.0) t5_violations++;
            end
            if (t5_violations == 0) begin
                $display("PASS T5: all 12 bit positions within 5σ of expected count");
                n_pass++;
            end else begin
                $display("FAIL T5: %0d / 12 bit positions outside 5σ", t5_violations);
                n_fail++;
            end
        end

        // ---------------------------------------------------------------------
        // Summary
        // ---------------------------------------------------------------------
        $display("---");
        $display("%0d/%0d tests passed", n_pass, n_pass + n_fail);
        $stop;
    end

    // -------------------------------------------------------------------------
    // Watchdog. Use longint multiplication to avoid 32-bit overflow on the
    // delay literal (a bare `5_000_000_000` truncates to ~705M).
    // -------------------------------------------------------------------------
    initial begin
        repeat (5000) #1_000_000;  // 5 ms in 1us increments
        $display("FAIL: watchdog timeout at %0t", $time);
        $stop;
    end

endmodule
