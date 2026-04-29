`timescale 1ns / 1ps
// Kyber prime: q = 3329 = 0xD01
// Used as the modulus throughout NTT/Montgomery reduction logic.
module butterfly_Cli #(
	parameter [11:0] Q  = 12'h d01,
	parameter [12:0] Q2 = 13'h 1a02
) (
	input clk,
	input [23:0] in0, in1,
	input [23:0] tw,
	input [3:0] m_bits,
	input flag_add, flag_sub0, flag_sub1, flag_mix0, flag_mix1, flag_m,
	input sel0_a0, sel1_a0, sel_a1, sel_s0,
	output reg [23:0] out0, out1,
	output reg [10:0] quo0, quo1
);

reg [11:0] add0_a0, add1_a0, add0_a1, sub1_s0;
wire [12:0] sum_in0, sum_in1;
wire [12:0] diff_in0, diff_in1;
wire [12:0] sum_in0_q_p1, sum_in1_q_p1;
wire [12:0] diff_in0_q, diff_in1_q;
reg [12:0] q_sum0, q_sum1, q_diff0, q_diff1;

// Plan A pipeline cut: register the first add output and the q decode
// so the second add (sum_inX_q) is its own cycle.
reg [12:0] sum_in0_p1, sum_in1_p1;
reg [12:0] q_sum0_p1, q_sum1_p1;
reg        sel_a1_p1, flag_add_p1;
reg [23:0] in0_p1;

reg [11:0] sum_in0_reg, sum_in1_reg;
reg [11:0] diff_in0_reg, diff_in1_reg;
reg [23:0] tw_reg;

wire [23:0] prod0, prod1;
wire [11:0] sum_in0_sr, sum_in1_sr;
reg [11:0] sum_in0_sr_r1, sum_in1_sr_r1;
wire [11:0] red0, red1;
reg [11:0] red0_r1, red1_r1;
wire [10:0] q0, q1;
wire [3:0] flag_sr;
(* MAX_FANOUT = 50 *) reg [3:0] flag_sr_r1;
wire [3:0] m_bits_sr;

reg [11:0] add1_a2, add0_a3, add1_a3, sub0_s2, sub0_s3, sub1_s3;
reg [12:0] sum_out0, sum_out1;
reg [12:0] diff_out0, diff_out1;
wire [12:0] sum_out0_q, sum_out1_q;
wire [12:0] diff_out0_q, diff_out1_q;
// reg [11:0] sum_out0_reg, sum_out1_reg;
// reg [11:0] diff_out0_reg, diff_out1_reg;

always @(*) case(sel0_a0)
	default : add0_a0 = in0[11:0];
	1'h 1 : add0_a0 = 12'h 0;
endcase
always @(*) case(sel1_a0)
	default : add0_a1 = in1[11:0];
	1'h 1 : add0_a1 = in0[23:12];
endcase
always @(*) case(sel_a1)
	default : add1_a0 = in0[23:12];
	1'h 1 : add1_a0 = in1[11:0];
endcase
always @(*) case(sel_s0)
	default : sub1_s0 = in1[11:0];
	1'h 1 : sub1_s0 = 12'h 0;
endcase

assign sum_in0 = add0_a0 + add0_a1 - Q;
assign sum_in1 = add1_a0 + in1[23:12] - Q;
assign diff_in0 = in0[11:0] - sub1_s0;
assign diff_in1 = in0[23:12] - in1[23:12];
always @(*) case({sel_a1,sum_in0[12],sum_in0[0]})
	3'b 011, 3'b 001, 3'b 110, 3'b 111 : q_sum0 = {1'b0,Q};
	3'b 010 : q_sum0 = Q2;
	default : q_sum0 = 13'h 0;
endcase
always @(*) case({sel_a1,sum_in1[12],sum_in1[0]})
	3'b 011, 3'b 001, 3'b 110, 3'b 111 : q_sum1 = {1'b0,Q};
	3'b 010 : q_sum1 = Q2;
	default : q_sum1 = 13'h 0;
endcase
always @(*) case({sel_a1,diff_in0[12],diff_in0[0]})
	3'b 011, 3'b 001, 3'b 110, 3'b 111 : q_diff0 = {1'b0,Q};
	3'b 010 : q_diff0 = Q2;
	default : q_diff0 = 13'h 0;
endcase
always @(*) case({sel_a1,diff_in1[12],diff_in1[0]})
	3'b 011, 3'b 001, 3'b 110, 3'b 111 : q_diff1 = {1'b0,Q};
	3'b 010 : q_diff1 = Q2;
	default : q_diff1 = 13'h 0;
endcase
// Plan A cut: register sum_in0/sum_in1 (first add) and q_sum0/q_sum1 (mux).
// The post-register second add is now in its own cycle.
always @(posedge clk) begin
	sum_in0_p1   <= sum_in0;
	sum_in1_p1   <= sum_in1;
	q_sum0_p1    <= q_sum0;
	q_sum1_p1    <= q_sum1;
	sel_a1_p1    <= sel_a1;
	flag_add_p1  <= flag_add;
	in0_p1       <= in0;
end

assign sum_in0_q_p1 = sum_in0_p1 + q_sum0_p1;
assign sum_in1_q_p1 = sum_in1_p1 + q_sum1_p1;
assign diff_in0_q   = diff_in0 + q_diff0;
assign diff_in1_q   = diff_in1 + q_diff1;
always @(posedge clk) begin
	if(flag_add_p1) begin
		sum_in0_reg <= sel_a1_p1 ? sum_in0_q_p1[11:0] : sum_in0_q_p1[12:1];
		sum_in1_reg <= sel_a1_p1 ? sum_in1_q_p1[11:0] : sum_in1_q_p1[12:1];
	end
	else begin
		sum_in0_reg <= in0_p1[11:0];
		sum_in1_reg <= in0_p1[23:12];
	end
end
always @(posedge clk) begin
	if(flag_sub0)
		diff_in0_reg <= sel_a1 ? diff_in0_q[11:0] : diff_in0_q[12:1];
	else
		diff_in0_reg <= in1[11:0];
end
always @(posedge clk) begin
	if(flag_sub1)		
		diff_in1_reg <= sel_a1 ? diff_in1_q[11:0] : diff_in1_q[12:1];
	else		
		diff_in1_reg <= in1[23:12];
end
always @(posedge clk) begin
	tw_reg <= tw;
	flag_sr_r1 <= flag_sr;
	sum_in0_sr_r1 <= sum_in0_sr;
	sum_in1_sr_r1 <= sum_in1_sr;
	red0_r1 <= red0;
	red1_r1 <= red1;
end

always @(*) case(flag_sr[0])
	default : begin
		add0_a3 = sum_in1_sr;
		sub1_s3 = red1;
	end
	1'h 1 : begin
		add0_a3 = sum_in0_sr;
		sub1_s3 = sum_in1_sr;
	end
endcase
always @(*) case(flag_sr[1])
	default : begin
		add1_a2 = red0;
		add1_a3 = red1;
		sub0_s2 = sum_in0_sr;
	end
	1'h 1 : begin
		add1_a2 = {m_bits_sr[0],m_bits_sr[0],1'b0,m_bits_sr[0],6'b0,m_bits_sr[0]};
		add1_a3 = {m_bits_sr[1],m_bits_sr[1],1'b0,m_bits_sr[1],6'b0,m_bits_sr[1]};
		sub0_s2 = {m_bits_sr[2],m_bits_sr[2],1'b0,m_bits_sr[2],6'b0,m_bits_sr[2]};
	end
endcase
always @(*) case({flag_sr[1],flag_sr[0]})
	default : sub0_s3 = sum_in1_sr;
	2'b 01 : sub0_s3 = red0;
	2'b 10 : sub0_s3 = {m_bits_sr[3],m_bits_sr[3],1'b0,m_bits_sr[3],6'b0,m_bits_sr[3]};
endcase

always @(posedge clk) sum_out0 <= sum_in0_sr + add1_a2;
always @(posedge clk) sum_out1 <= add0_a3 + add1_a3;
always @(posedge clk) diff_out0 <= sub0_s2 + (red0~^{13{flag_sr[1]}}) + {12'h0,~flag_sr[1]};
always @(posedge clk) diff_out1 <= sub0_s3 + (sub1_s3~^{13{flag_sr[1]}}) + {12'h0,~flag_sr[1]};
assign sum_out0_q = sum_out0 - Q;
assign sum_out1_q = sum_out1 - Q;
assign diff_out0_q = diff_out0 + (Q^{13{flag_sr_r1[1]}}) + flag_sr_r1[1];
assign diff_out1_q = diff_out1 + (Q^{13{flag_sr_r1[1]}}) + flag_sr_r1[1];
always @(posedge clk) begin
	if(flag_sr_r1[2]) begin
		out0[11:0] <= sum_out0_q[12] ? sum_out0 : sum_out0_q;
		out1[11:0] <= diff_out0[12] & ~flag_sr_r1[1] | ~diff_out0_q[12] & flag_sr_r1[1] ? diff_out0_q : diff_out0;
	end
	else begin
		out0[11:0] <= sum_in0_sr_r1;		
		out1[11:0] <= red0_r1;
	end
end
always @(posedge clk) begin
	if(flag_sr_r1[3]) begin
		out0[23:12] <= sum_out1_q[12] ? sum_out1 : sum_out1_q;
		out1[23:12] <= diff_out1[12] & ~flag_sr_r1[1] | ~diff_out1_q[12] & flag_sr_r1[1] ? diff_out1_q : diff_out1;
	end
	else begin
		out0[23:12] <= sum_in1_sr_r1;
		out1[23:12] <= red1_r1;
	end
end
always @(posedge clk) begin
	quo0 <= q0;
	quo1 <= q1;
end

mult_gen_0 M0(.CLK(clk),.A(diff_in0_reg),.B(tw_reg[11:0]),.P(prod0));
mult_gen_0 M1(.CLK(clk),.A(diff_in1_reg),.B(tw_reg[23:12]),.P(prod1));
reduc R0(.clk(clk),.c(prod0),.d(red0),.q(q0));
reduc R1(.clk(clk),.c(prod1),.d(red1),.q(q1));
// Plan A: c_shift_ram_0 depth was 5; reduced to 4 here (inline) to absorb
// the +1 cycle introduced by the sum-path pipeline cut above.
// External latency from in0/in1 to sum_inX_sr is unchanged.
reg [11:0] sum_in0_sr_d [0:3];
reg [11:0] sum_in1_sr_d [0:3];
always @(posedge clk) begin
	sum_in0_sr_d[0] <= sum_in0_reg;
	sum_in0_sr_d[1] <= sum_in0_sr_d[0];
	sum_in0_sr_d[2] <= sum_in0_sr_d[1];
	sum_in0_sr_d[3] <= sum_in0_sr_d[2];
	sum_in1_sr_d[0] <= sum_in1_reg;
	sum_in1_sr_d[1] <= sum_in1_sr_d[0];
	sum_in1_sr_d[2] <= sum_in1_sr_d[1];
	sum_in1_sr_d[3] <= sum_in1_sr_d[2];
end
assign sum_in0_sr = sum_in0_sr_d[3];
assign sum_in1_sr = sum_in1_sr_d[3];
c_shift_ram_1 S2(.CLK(clk),.D({flag_mix1,flag_mix0,flag_m,sel_s0}),.Q(flag_sr));
c_shift_ram_1 S3(.CLK(clk),.D(m_bits),.Q(m_bits_sr));

endmodule
