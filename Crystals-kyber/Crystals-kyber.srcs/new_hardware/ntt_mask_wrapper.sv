// ntt_mask_wrapper.sv
// Wraps the NTT core with additive masking mod q.
//
// Masked input:  a_masked = a + r          (mod Q)
// After NTT:     NTT(a+r) = NTT(a) + NTT(r)   [NTT is linear over Zq]
// Correction:    NTT(a)   = NTT(a+r) - NTT(r) (mod Q)
`timescale 1ns/1ps

module ntt_mask_wrapper #(
    parameter int N    = 256,   
    parameter int Q    = 3329,  
    parameter int WLOG = 12    
) (
    input  logic                clk,        
    input  logic                rst,        
    input  logic                clk_valid,  
    input  logic                start,              
                                                    
    input  logic [WLOG-1:0]     a_in  [0:N-1],     
    input  logic [WLOG-1:0]     r_mask[0:N-1],     
    output logic [WLOG-1:0]     ntt_out[0:N-1],                                                        
    output logic                done                
);
    logic [WLOG-1:0] a_masked [0:N-1];

    // NTT outputs from each instance
    logic [WLOG-1:0] a_ntt [0:N-1];    
    logic [WLOG-1:0] r_ntt [0:N-1];    

    logic done_a;
    logic done_b;
    logic start_gated;
    assign start_gated = start & clk_valid;
    logic both_done;
    assign both_done = done_a & done_b;
    genvar gi;
    generate
        for (gi = 0; gi < N; gi++) begin : gen_mask
            // 13-bit sum to safely catch the carry before mod reduction
            logic [WLOG:0] mask_sum;
            assign mask_sum = {1'b0, a_in[gi]} + {1'b0, r_mask[gi]};

            always_ff @(posedge clk or posedge rst) begin
                if (rst)
                    a_masked[gi] <= '0;
                else if (start_gated)
                    // Single conditional subtraction sufficient: a,r both < Q
                    // so sum < 2Q, meaning one subtract brings it back in range
                    a_masked[gi] <= (mask_sum >= WLOG+1'(Q))
                                    ? mask_sum[WLOG-1:0] - WLOG'(Q)
                                    : mask_sum[WLOG-1:0];
            end
        end
    endgenerate
    ntt_core u_ntt_a (
        .clk     (clk),
        .rst     (rst),
        .start   (start_gated),
        .poly_in (a_masked),    
        .ntt_out (a_ntt),
        .done    (done_a)
    );

    ntt_core u_ntt_b (
        .clk     (clk),
        .rst     (rst),
        .start   (start_gated),
        .poly_in (r_mask),     
        .ntt_out (r_ntt),
        .done    (done_b)
    );
    generate
        for (gi = 0; gi < N; gi++) begin : gen_unmask
            logic [WLOG:0] unmask_diff;
            assign unmask_diff = {1'b0, a_ntt[gi]}
                                 + (WLOG+1)'(Q)
                                 - {1'b0, r_ntt[gi]};

            always_ff @(posedge clk or posedge rst) begin
                if (rst)
                    ntt_out[gi] <= '0;
                else if (both_done)
                    ntt_out[gi] <= (unmask_diff >= (WLOG+1)'(Q))
                                   ? unmask_diff[WLOG-1:0] - WLOG'(Q)
                                   : unmask_diff[WLOG-1:0];
            end
        end
    endgenerate
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            done <= 1'b0;
        else
            done <= both_done;
    end

endmodule