`timescale 1ns/1ps
// =============================================================================
// mask_polyfifo_x4.sv
//
// Step 1 of the masked-Kyber security hardening plan.
// Replaces the original 12-bit single-constant mask source with a 4-way
// per-coefficient mask source: emits four fresh, independent uniform-mod-Q
// 12-bit masks per cycle (when valid). This eliminates mask reuse across
// the 256 coefficients of a sampled polynomial — at d=1 the NTT is linear
// and propagates these independent input masks without correlating them.
//
// Architecture:
//   - Four parallel XORShifter PRNGs, each seeded independently.
//   - Each cycle, the 12 LSBs of each PRNG's new state are a candidate;
//     a rejection sampler accepts if candidate < Q (= 3329).
//   - Accepted candidates flow into four small FIFOs that absorb the
//     ~18.7% rejection jitter.
//   - `valid` asserts only when all four FIFOs are non-empty, so the
//     consumer always gets four masks per `req` pulse.
//
// `ntt_call_start` reseeds all four PRNG states to their seed parameters.
// For true cross-call freshness, the parent should override the seed
// parameters per call (mirrors the existing mask_polyfifo / mask_csprng
// freshness contract).
//
// Output interface matches the contract used by the NTT cores: when valid==1,
// {mask3, mask2, mask1, mask0} are the four next-coefficient masks. `req`
// consumes them; on the next cycle the FIFOs advance.
// =============================================================================

module mask_polyfifo_x4 #(
    parameter [31:0] SEED0 = 32'hCAFEBABE,
    parameter [31:0] SEED1 = 32'hDEADBEEF,
    parameter [31:0] SEED2 = 32'hFEEDFACE,
    parameter [31:0] SEED3 = 32'hBAADF00D,
    parameter [11:0] Q     = 12'h D01,            // Kyber prime
    parameter        FIFO_DEPTH = 32              // power-of-2 recommended
) (
    input  logic        clk_i,
    input  logic        reset_i,                  // active-low
    input  logic        ntt_call_start,           // 1-cycle pulse: reseed all
    input  logic        req,                      // pop one mask from each FIFO
    output logic        valid,                    // all 4 FIFOs non-empty
    output logic [11:0] mask0,
    output logic [11:0] mask1,
    output logic [11:0] mask2,
    output logic [11:0] mask3
);

    // -------------------------------------------------------------------------
    // ntt_call_start edge detect (mirror mask_csprng's flush semantics)
    // -------------------------------------------------------------------------
    logic ntt_call_start_d1;
    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) ntt_call_start_d1 <= 1'b0;
        else          ntt_call_start_d1 <= ntt_call_start;
    end
    wire flush = ntt_call_start & ~ntt_call_start_d1;

    // -------------------------------------------------------------------------
    // 4 parallel XORShifter PRNGs
    // -------------------------------------------------------------------------
    logic [31:0] state    [0:3];
    logic [31:0] next_st  [0:3];

    XORShifter xs0_inst (.seed(state[0]), .generatedRandom(next_st[0]));
    XORShifter xs1_inst (.seed(state[1]), .generatedRandom(next_st[1]));
    XORShifter xs2_inst (.seed(state[2]), .generatedRandom(next_st[2]));
    XORShifter xs3_inst (.seed(state[3]), .generatedRandom(next_st[3]));

    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) begin
            state[0] <= SEED0;
            state[1] <= SEED1;
            state[2] <= SEED2;
            state[3] <= SEED3;
        end else if (flush) begin
            state[0] <= SEED0;
            state[1] <= SEED1;
            state[2] <= SEED2;
            state[3] <= SEED3;
        end else begin
            state[0] <= next_st[0];
            state[1] <= next_st[1];
            state[2] <= next_st[2];
            state[3] <= next_st[3];
        end
    end

    // -------------------------------------------------------------------------
    // Per-lane FIFO + rejection sampling
    // Each cycle: candidate = state[i][11:0]; if candidate < Q, push to FIFO.
    // -------------------------------------------------------------------------
    localparam int PTR_W = $clog2(FIFO_DEPTH);

    // Per-lane FIFO state
    logic [11:0] fifo_mem [0:3] [0:FIFO_DEPTH-1];
    logic [PTR_W-1:0] wptr [0:3];
    logic [PTR_W-1:0] rptr [0:3];
    logic [PTR_W:0]   cnt  [0:3];   // one extra bit so cnt==FIFO_DEPTH fits

    wire [11:0] cand [0:3];
    assign cand[0] = state[0][11:0];
    assign cand[1] = state[1][11:0];
    assign cand[2] = state[2][11:0];
    assign cand[3] = state[3][11:0];

    wire accept [0:3];
    assign accept[0] = (cand[0] < Q);
    assign accept[1] = (cand[1] < Q);
    assign accept[2] = (cand[2] < Q);
    assign accept[3] = (cand[3] < Q);

    // Pop signal: consumer is requesting and all FIFOs have something
    wire all_nonempty = (cnt[0] != 0) && (cnt[1] != 0) && (cnt[2] != 0) && (cnt[3] != 0);
    wire pop = req & all_nonempty;

    // FIFO updates — one always block per lane (manually unrolled for clarity)
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : g_fifo
            wire push = accept[i] & (cnt[i] != FIFO_DEPTH);
            always_ff @(posedge clk_i or negedge reset_i) begin
                if (!reset_i) begin
                    wptr[i] <= '0;
                    rptr[i] <= '0;
                    cnt[i]  <= '0;
                end else if (flush) begin
                    wptr[i] <= '0;
                    rptr[i] <= '0;
                    cnt[i]  <= '0;
                end else begin
                    if (push) begin
                        fifo_mem[i][wptr[i]] <= cand[i];
                        wptr[i] <= wptr[i] + 1'b1;
                    end
                    if (pop) begin
                        rptr[i] <= rptr[i] + 1'b1;
                    end
                    case ({push, pop})
                        2'b10: cnt[i] <= cnt[i] + 1'b1;
                        2'b01: cnt[i] <= cnt[i] - 1'b1;
                        default: ; // 2'b00 or 2'b11 — net zero change
                    endcase
                end
            end
        end
    endgenerate

    assign valid = all_nonempty;
    assign mask0 = fifo_mem[0][rptr[0]];
    assign mask1 = fifo_mem[1][rptr[1]];
    assign mask2 = fifo_mem[2][rptr[2]];
    assign mask3 = fifo_mem[3][rptr[3]];

endmodule
