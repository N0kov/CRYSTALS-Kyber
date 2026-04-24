`timescale 1ps/1ps
// RNG wrapper — selects between PRNG and TRNG implementations via parameter.
//
// Parameter USE_TRNG:
//   0 (default) — XORShift PRNG. Purely combinational with registered feedback.
//                 Requires an initial SEED_VAL to be set at synthesis time.
//                 Outputs one new bit per clk cycle. Suitable for simulation
//                 and low-security testing.
//   1           — Cryptech TRNG. Drives the trng module's register bus to read
//                 32-bit words from the CSPRNG output FIFO, then shifts them
//                 out one bit per cycle. Requires avalanche_noise_i to be
//                 connected to a physical entropy source. The TRNG has a
//                 warm-up period before valid output; rng_valid_o is low until
//                 the first word has been read successfully.
//
// Common output interface (both modes):
//   rng_bit_o   - one random bit, valid on every rising edge when rng_valid_o=1
//   rng_valid_o - asserted when rng_bit_o carries a valid random value
//                 (always 1 for PRNG after reset; delayed for TRNG)

module rng #(
    parameter USE_TRNG  = 0,
    parameter SEED_VAL  = 32'hDEADBEEF   // PRNG only: initial seed
)(
     input  logic clk_i
    ,input  logic reset_i          // active-low
    // TRNG only — tie to 1'b0 when USE_TRNG=0
    ,input  logic avalanche_noise_i
    ,output logic rng_bit_o
    ,output logic rng_valid_o
);

generate
if (USE_TRNG == 0) begin : gen_prng

    // -------------------------------------------------------------------------
    // PRNG: registered XORShift feedback loop.
    // XORShifter is purely combinational; we register its output each cycle
    // and feed it back as the next seed, giving one new 32-bit value per cycle.
    // rng_bit_o is the LSB of the current state — sufficient for the 1-bit
    // select signal needed by rand_clk_gen.
    // -------------------------------------------------------------------------
    logic [31:0] state;
    logic [31:0] next_state;

    XORShifter xorshift_inst (
        .seed           (state),
        .generatedRandom(next_state)
    );

    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i)
            state <= SEED_VAL;
        else
            state <= next_state;
    end

    assign rng_bit_o   = state[0];
    assign rng_valid_o = 1'b1;

end else begin : gen_trng

    // -------------------------------------------------------------------------
    // TRNG: thin driver around the Cryptech trng module.
    //
    // The trng module exposes a 32-bit register bus. To read one random word:
    //   1. Assert cs=1, we=0, address=CSPRNG_RANDOM_ADDR (12'hB20)
    //   2. Capture read_data on the next cycle when the bus is stable.
    //   3. Shift out 32 bits one per clock cycle.
    //   4. Repeat.
    //
    // The TRNG needs warm-up (256 entropy blocks through SHA-512 mixer).
    // We poll the TRNG status register (12'h011) and only begin reading
    // random words once the ready bit (bit 0) is set.
    // -------------------------------------------------------------------------

    // Addresses: top 4 bits = sub-module prefix (0xB = CSPRNG), bottom 8 bits = register offset
    localparam CSPRNG_STATUS_ADDR = 12'hB11;  // ADDR_STATUS:   bit 0 = rnd_valid
    localparam CSPRNG_RAND_ADDR   = 12'hB20;  // ADDR_RND_DATA: 32-bit random word

    // trng register bus
    logic        trng_cs, trng_we;
    logic [11:0] trng_addr;
    logic [31:0] trng_wdata, trng_rdata;
    logic        trng_error;
    logic [7:0]  trng_debug;
    logic        trng_security_error;

    trng trng_inst (
        .clk            (clk_i),
        .reset_n        (reset_i),
        .avalanche_noise(avalanche_noise_i),
        .cs             (trng_cs),
        .we             (trng_we),
        .address        (trng_addr),
        .write_data     (trng_wdata),
        .read_data      (trng_rdata),
        .error          (trng_error),
        .debug          (trng_debug),
        .debug_update   (1'b0),
        .security_error (trng_security_error)
    );

    // State machine
    typedef enum logic [1:0] {
        S_WAIT_READY,   // poll status until TRNG warmed up
        S_READ_REQ,     // issue read request to CSPRNG
        S_READ_LATCH,   // latch read_data
        S_SHIFT         // shift out 32 bits one per cycle
    } state_t;

    state_t fsm_state;
    logic [31:0] shift_reg;
    logic [4:0]  bit_ctr;     // counts 0..31
    logic        trng_ready;

    assign trng_ready = trng_rdata[0];  // STATUS_RND_VALID_BIT

    // Bus defaults
    assign trng_we    = 1'b0;
    assign trng_wdata = 32'h0;

    always_ff @(posedge clk_i or negedge reset_i) begin
        if (!reset_i) begin
            fsm_state  <= S_WAIT_READY;
            shift_reg  <= 32'h0;
            bit_ctr    <= 5'h0;
            trng_cs    <= 1'b0;
            trng_addr  <= CSPRNG_STATUS_ADDR;
            rng_bit_o  <= 1'b0;
            rng_valid_o<= 1'b0;
        end else begin
            case (fsm_state)

                S_WAIT_READY: begin
                    trng_cs   <= 1'b1;
                    trng_addr <= CSPRNG_STATUS_ADDR;
                    if (trng_ready)
                        fsm_state <= S_READ_REQ;
                end

                S_READ_REQ: begin
                    trng_cs   <= 1'b1;
                    trng_addr <= CSPRNG_RAND_ADDR;
                    fsm_state <= S_READ_LATCH;
                end

                S_READ_LATCH: begin
                    trng_cs   <= 1'b0;
                    shift_reg <= trng_rdata;
                    bit_ctr   <= 5'd0;
                    fsm_state <= S_SHIFT;
                end

                S_SHIFT: begin
                    rng_bit_o   <= shift_reg[0];
                    rng_valid_o <= 1'b1;
                    shift_reg   <= {1'b0, shift_reg[31:1]};
                    bit_ctr     <= bit_ctr + 1'b1;
                    if (bit_ctr == 5'd31)
                        fsm_state <= S_READ_REQ;
                end

                default: fsm_state <= S_WAIT_READY;
            endcase
        end
    end

end
endgenerate

endmodule
