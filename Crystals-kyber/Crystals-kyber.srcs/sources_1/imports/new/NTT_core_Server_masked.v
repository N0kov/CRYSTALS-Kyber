`timescale 1ns / 1ps
// =============================================================================
// NTT_core_Server_masked.v — Phase A Stage 0 baseline
// -----------------------------------------------------------------------------
// CURRENTLY a byte-identical copy of NTT_core_Server.v with only the module
// name changed. Subsequent stages of plan_masked_ntt_phaseA.md add the actual
// masking infrastructure:
//   Stage 1: dual polynomial state (parallel RAMs + butterfly), mask=0
//   Stage 2: real CSPRNG-driven mask at coefficient input
//   Stage 3: unmask-before-quotient registers at the 6 critical states
//            (m_dec at 0x1d-0x1e; dout at 0x2c-0x2d, 0x38-0x39, 0x5c)
// At Stage 0, KAT regression must pass byte-identical to the unmasked baseline.
// =============================================================================
module NTT_core_Server_masked(
	input clk, rst, start,
	input CCA_enc,
	input CCA_enc_start,
	input [2:0] k,
	input [24:0] din,
	input fifo0_empty, fifo1_empty, fifo1_full,
	input [3:0] m_bits,
	input DFIFO0_full_eff,
	input ready_c,
	output reg fifo0_req,
	output fifo1_req_r9,
	output reg req_D0, req_D1,
	output reg ena_sft,
	output reg ready_t,
	output reg m_ena,
	output reg [1:0] m_dec,
	output reg valid,
	output reg finish,
	output reg [23:0] dout
);

reg [5:0] next_state, state;
reg [5:0] state_r1, state_r2, state_r3;
wire [5:0] state_r13;
reg [3:0] ctr_NTT;
reg [1:0] ctr_col, ctr_col_r1;
wire [1:0] ctr_col_r12;

wire [1:0] k_1;

wire [5:0] b0, b1, b2, b3;
wire [2:0] samp0, samp1, samp2, samp3;
reg [11:0] samp0_q, samp1_q, samp2_q, samp3_q;
reg fifo1_req, fifo1_req_r10;
reg req_noise, req_noise_r1, req_noise_r2;
wire req_noise_r12;
reg req_noise_done;

reg [23:0] in0_butt, in1_butt, tw_butt;
wire [23:0] out0_butt, out1_butt;
reg [23:0] out0_butt_r1, out1_butt_r1, out1_butt_r2;
wire [10:0] quo0_butt, quo1_butt;
reg [10:0] quo0_butt_r1, quo1_butt_r1;
wire [11:0] decomp0_butt, decomp1_butt;
reg [11:0] decomp0_butt_r1, decomp1_butt_r1;
reg [10:0] ctrl_butt;

// Mask-share counterparts of butterfly signals. tw_butt and ctrl_butt are
// SHARED (twiddles are public, control is FSM state — neither carries
// secret information).
//
// Stage 2: mask is now real (constant polynomial mask from mask_polyfifo).
// BU_m runs on mask values, produces masked outputs; the retiming
// registers _r1_m / _r2_m mirror primary's pipeline.
(* DONT_TOUCH = "TRUE" *) reg [23:0] in0_butt_m, in1_butt_m;
wire [23:0] out0_butt_m, out1_butt_m;
(* DONT_TOUCH = "TRUE" *) reg [23:0] out0_butt_r1_m, out1_butt_r1_m, out1_butt_r2_m;
wire [10:0] quo0_butt_m, quo1_butt_m;
(* DONT_TOUCH = "TRUE" *) reg [10:0] quo0_butt_r1_m, quo1_butt_r1_m;
wire [11:0] decomp0_butt_m, decomp1_butt_m;
(* DONT_TOUCH = "TRUE" *) reg [11:0] decomp0_butt_r1_m, decomp1_butt_r1_m;

// Mask-share RAM data. Stage 2: wdata_RAM*_m driven by parallel always block
// that mirrors primary's wdata_RAM* logic, using mask values.
(* DONT_TOUCH = "TRUE" *) reg [23:0] wdata_RAM0_m;
(* DONT_TOUCH = "TRUE" *) reg [23:0] wdata_RAM1_m;
(* DONT_TOUCH = "TRUE" *) reg [47:0] wdata_RAM2_m;
wire [23:0] rdata_RAM0_m, rdata_RAM1_m, rdata_RAM2_m, rdata_RAM3_m;
wire [47:0] rdata_RAM4_m;

// Stage 2 mask source: latch a single 12-bit mask at start of each NTT call,
// hold steady for the rest of the call (constant polynomial mask). Stage 3
// will replace this with per-coefficient mask (256 unique values).
wire [11:0] mask_const;
wire        mask_ready;
// Single-cycle ntt_call_start pulse on rising edge of `start`.
reg         start_d1;
always @(posedge clk) begin
    if (rst) start_d1 <= 1'b0;
    else     start_d1 <= start;
end
wire        ntt_call_start_pulse = start & ~start_d1;

(* KEEP_HIERARCHY = "TRUE" *) mask_polyfifo #(.USE_TRNG(0), .SEED_VAL(32'hCAFEBABE)) u_mask (
    .clk_i             (clk),
    .reset_i           (~rst),                  // mask_polyfifo uses active-low reset
    .avalanche_noise_i (1'b0),
    .ntt_call_start    (ntt_call_start_pulse),
    .ready             (mask_ready),
    .mask_out          (mask_const)
);

reg [7:0] raddr_RAM0;
reg [5:0] raddr_RAM1;
reg [6:0] raddr_RAM2;
reg [6:0] raddr_ROM, raddr_ROM_r1;
wire [23:0] rdata_RAM0, rdata_RAM1, rdata_RAM2, rdata_RAM3;
wire [47:0] rdata_RAM4;
reg [23:0] rdata_RAM_mux0, rdata_RAM_mux1;
wire [11:0] rdata_ROM0, rdata_ROM1, rdata_ROM2; 
wire [7:0] waddr_RAM0;
wire [5:0] waddr_RAM1;
wire [6:0] waddr_RAM2;
reg [23:0] wdata_RAM0, wdata_RAM1;
reg [47:0] wdata_RAM2;
reg wen_RAM0, wen_RAM1, wen_RAM2, wen_RAM3, wen_RAM4;
reg [23:0] rdata_RAM_mux0_r1, rdata_RAM_mux1_r1;
reg [23:0] rdata_RAM_mux1_r2;

reg [23:0] rdata_acc;
wire [23:0] rdata_acc_r8;
wire [12:0] data_acc0, data_acc1;
wire [12:0] data_acc0_q, data_acc1_q;
reg [11:0] data_mux0, data_mux1;

reg raddr_RAM2_lsb_r1, raddr_RAM2_lsb_r2;

reg [6:0] ctr_i;
reg [5:0] ctr_j;
(* MAX_FANOUT = 20 *) reg [6:0] ctr_k;
reg [6:0] ctr_group;
wire flag_j, flag_k;

assign flag_j = ctr_i + ctr_j == 7'h 40;
assign flag_k = ctr_k + 1'h 1 == ctr_i[6:1];
assign k_1 = k-1;

always @(posedge clk) begin
	if(rst)
		state <= 4'h 0;
	else
		state <= next_state;
end
always @(*) case(state)
	4'h 0 : next_state = start | CCA_enc_start ? state + 1'h 1 : state;	
	4'h 1 : next_state = fifo1_full ? CCA_enc ? 6'h 3e : 6'h 20 : state;
	4'h 3 : next_state = flag_j & flag_k & ctr_i[1] ? state + 1'h 1 : 4'h 2;
	4'h 4 : next_state = flag_j ? state + 1'h 1 : state;
	4'h 5 : if(ctr_NTT == k_1)
				next_state = CCA_enc ? 6'h 26 : state + 1'h 1;
			else
				next_state = 4'h 1;
	5'h 6 : next_state = fifo1_full ? 6'h 22 : state;
	5'h 8 : next_state = flag_j & flag_k & ctr_i[1] ? state + 1'h 1 : 5'h 7;
	5'h 9 : next_state = flag_j ? state + 1'h 1 : state;
	5'h a : next_state = ~fifo0_empty ? state + 1'h 1 : state;
	5'h b : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	5'h c : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	5'h d : next_state = ctr_col == k_1 ? ctr_NTT[2:0] == k_1 ? state + 1'h 1 : 5'h 6 : 5'h a;
	5'h e : next_state = ready_c & DFIFO0_full_eff ? state + 1'h 1 : state;
	6'h 10 : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h f;
	5'h 12 : next_state = flag_j & flag_k & ctr_i[1] ? state + 1'h 1 : 5'h 11;
	5'h 13 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 15 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : 6'h 14;
	6'h 16 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 17 : next_state = ctr_col == k_1 ? state + 1'h 1 : 5'h f;
	6'h 18 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 1a : next_state = flag_j & flag_k & ctr_i[6] ? state + 1'h 1 : 6'h 19;
	6'h 1c : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h 1b;
	6'h 1e : next_state = ctr_k == 7'h 3f ? 6'h 3a : 6'h 1d;
	
	6'h 20 : next_state = state + 1'h 1;
	6'h 21 : next_state = ctr_k == 7'h 3f ? 6'h 2 : 6'h 20;
	6'h 22 : next_state = state + 1'h 1;
	6'h 23 : next_state = ctr_k == 7'h 3f ? 6'h 7 : 6'h 22;
	
	6'h 26 : next_state = ctr_k == 7'h 7f & ~fifo0_empty ? state + 1'h 1 : state;
	6'h 27 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 28 : next_state = ctr_col == k_1 ? state + 1'h 1 : 6'h 26;
	6'h 29 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 2b : next_state = flag_j & flag_k & ctr_i[6] ? state + 1'h 1 : 6'h 2a;
	6'h 2d : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h 2c;
	6'h 2e : if(ctr_NTT[3] && ctr_NTT[2:0] == k_1)
				next_state = state + 1'h 1;
			else
				next_state = 6'h 26;
	6'h 2f : next_state = ready_t ? state + 1'h 1 : state;
	6'h 30 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 31 : next_state = ctr_k == 7'h 7f ? state + 1'h 1 : state;
	6'h 32 : next_state = ctr_col == k_1 ? state + 1'h 1 : 6'h 30;
	6'h 33 : next_state = flag_j ? state + 1'h 1 : state;
	6'h 35 : next_state = flag_j & flag_k & ctr_i[5] ? state + 1'h 1 : 6'h 34;	
	6'h 37 : next_state = flag_j & flag_k & ctr_i[6] ? state + 1'h 1 : 6'h 36;
	6'h 39 : next_state = ctr_k == 7'h 3f ? state + 1'h 1 : 6'h 38;
	6'h 3a : next_state = 5'h 0;
	6'h 3e : next_state = state + 1'h 1;
	6'h 3f : next_state = ctr_k == 7'h 3f ? 5'h 2 : 6'h 3e;
	default : next_state = state + 1'h 1;
endcase

always @(posedge clk) case(state)
	6'h 1, 6'h 6, 6'h e : ctr_i <= 7'h 40;
	6'h 3, 6'h 8, 6'h 12 : ctr_i <= flag_j & flag_k ? ctr_i[6:1] : ctr_i;
	6'h 4, 6'h 9, 6'h 13 : ctr_i <= flag_j ? ctr_i[6:1] : ctr_i;
	6'h 17 : ctr_i <= ctr_col == k_1 ? 7'h 1 : 7'h 40;
	6'h 18 : ctr_i <= flag_j ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h 1a, 6'h 1e : ctr_i <= flag_j & flag_k ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h a : ctr_i <= 7'h 0;
	6'h 28, 6'h 32 : ctr_i <= ctr_col == k_1 ? 7'h 1 : 7'h 0;
	6'h 29, 6'h 33 : ctr_i <= flag_j ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h 2b, 6'h 35, 6'h 37 : ctr_i <= flag_j & flag_k ? {ctr_i[5:0],1'h0} : ctr_i;
	6'h 2e : ctr_i <= 7'h 0;
	default : ctr_i <= ctr_i;
endcase
always @(posedge clk) case(state)
	6'h 1, 6'h 6 : ctr_j <= 6'h 0;
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 1e : ctr_j <= flag_k ? flag_j ? 6'h 0 : ctr_j + ctr_i : ctr_j;
	6'h 4, 6'h 9, 6'h 13, 6'h 18 : ctr_j <= flag_j ? 6'h 0 : ctr_j + ctr_i;
	6'h 28 : ctr_j <= 6'h 0;
	6'h 2b, 6'h 35, 6'h 37 : ctr_j <= flag_k ? flag_j ? 6'h 0 : ctr_j + ctr_i : ctr_j;
	6'h 29, 6'h 33 : ctr_j <= flag_j ? 6'h 0 : ctr_j + ctr_i;
	default : ctr_j <= ctr_j;
endcase
always @(posedge clk) case(state)
	6'h 1, 6'h 6 : ctr_k <= 7'h 0;
	6'h 3, 6'h 8, 6'h 12, 6'h 1a : ctr_k <= flag_k ? 7'h 0 : ctr_k + 1'h 1;
	6'h b, 6'h c, 6'h 14, 6'h 15, 6'h 16 : ctr_k <= ctr_k + 1'h 1;
	6'h 10, 6'h 1c, 6'h 1e : ctr_k <= ctr_k == 7'h 3f ? 7'h 0 : ctr_k + 1'h 1;
	6'h 20, 6'h 21, 6'h 22, 6'h 23 : ctr_k <= ctr_k == 7'h 3f ? 7'h 0 : ctr_k + 1'h 1;
	6'h 28, 6'h 2e : ctr_k <= 7'h 0;
	6'h 2b, 6'h 35, 6'h 37 : ctr_k <= flag_k ? 7'h 0 : ctr_k + 1'h 1;
	6'h 26, 6'h 27, 6'h 30, 6'h 31 : ctr_k <= ctr_k + 1'h 1;
	6'h 2d, 6'h 39 : ctr_k <= ctr_k + 1'h 1;
	6'h 3e, 6'h 3f : ctr_k <= ctr_k == 7'h 3f ? 7'h 0 : ctr_k + 1'h 1;
	default : ctr_k <= ctr_k;
endcase
always @(posedge clk) case(state)
	6'h 0, 6'h 6, 6'h a : ctr_group <= 6'h 0;
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 1e : ctr_group <= flag_k ? flag_j ? 6'h 0 : ctr_group + 1'h 1 : ctr_group;
	6'h 4, 6'h 9, 6'h 13, 6'h 18 : ctr_group <= flag_j ? 6'h 0 : ctr_group + 1'h 1;
	6'h c, 6'h 16 : ctr_group <= ctr_group + 1'h 1;
	6'h 2b, 6'h 35, 6'h 37 : ctr_group <= flag_k ? flag_j ? 6'h 0 : ctr_group + 1'h 1 : ctr_group;
	6'h 29, 6'h 33 : ctr_group <= flag_j ? 6'h 0 : ctr_group + 1'h 1;
	6'h 27, 6'h 31 : ctr_group <= ctr_group + 1'h 1;
	default : ctr_group <= ctr_group;
endcase
always @(posedge clk) begin
	if(start)
		ctr_NTT <= 4'h 0;
	else if(finish)
		ctr_NTT <= 4'h 0;
	else if(state == 5'h 5 || state == 6'h 2e)
		ctr_NTT <= ctr_NTT[2:0] == k_1 ? 4'h 8 : ctr_NTT + 1'h 1;
	else if(ctr_NTT[3] && state == 5'h d && ctr_col == k_1)
		ctr_NTT <= ctr_NTT[2:0] == k_1 ? 4'h 8 : ctr_NTT + 1'h 1;
	else if(state == 6'h 2f)
		ctr_NTT <= 4'h 8;
	else
		ctr_NTT <= ctr_NTT;
end
always @(posedge clk) begin
	if(start)
		ctr_col <= 3'h 0;
	else if(ctr_NTT[3] && (state == 5'h d || state == 6'h 17 || state == 6'h 28 || state == 6'h 32))
		ctr_col <= ctr_col == k_1 ? 3'h 0 : ctr_col + 1'h 1;
	else
		ctr_col <= ctr_col;
end

always @(posedge clk) case(state_r3)
	5'h 2, 5'h 3, 5'h 4, 5'h 7, 5'h 8, 5'h 9, 5'h 11, 5'h 12, 5'h 13 : ctrl_butt <= 11'b 0_110_000_0000;
	5'h b, 6'h 14, 6'h 15, 6'h 26, 6'h 30 : ctrl_butt <= 11'b 0_000_001_1010;
	5'h c, 6'h 16, 6'h 27, 6'h 31 : ctrl_butt <= 11'b 0_100_011_1101;
	6'h 18, 6'h 19, 6'h 1a, 6'h 29, 6'h 2a, 6'h 2b, 6'h 33, 6'h 34, 6'h 35 : ctrl_butt <= 11'b 0_000_111_0000;
	6'h 1b, 6'h 1c : ctrl_butt <= 11'b 1_000_000_0000;
	6'h 1d, 6'h 1e, 6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : ctrl_butt <= 11'b 0_000_110_1000;
	6'h 36, 6'h 37 : ctrl_butt <= 11'b 0_111_111_0000;
	default : ctrl_butt <= 11'b 0_000_000_0000;
endcase

always @(posedge clk) case(state_r3)
	6'h 2, 6'h 7, 6'h 11, 6'h 19, 6'h 2a, 6'h 34, 6'h 36 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux0;
	end
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 2b, 6'h 35, 6'h 37  : begin
		in0_butt <= rdata_RAM_mux1_r2;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	6'h 4, 6'h 9, 6'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	5'h b, 6'h 26, 6'h 30 : begin
		in0_butt <= raddr_RAM2_lsb_r2 ? rdata_RAM_mux1_r1 : rdata_RAM_mux0_r1;
		in1_butt <= din;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	6'h 14, 6'h 15 : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
	// Stage 3 unmask: m_dec critical states. Load unmasked polynomial data
	// so butterfly's quotient compute produces correct (unmasked) m_dec bits.
	6'h 1d, 6'h 1e : begin
		in0_butt <= unmasked_mux0_r1;
		in1_butt <= unmasked_mux1_r1;
	end
	5'h f, 5'h 10 : begin
		in0_butt <= 24'h 0;
		case(k)
			3'h 2, 3'h 3 : in1_butt <= {din[19:10],2'b0,din[9:0]};
			default : in1_butt <= {din[21:11],1'b0,din[10:0]};
		endcase
	end
	6'h 1b, 6'h 1c : begin
		in0_butt <= 24'h 0;
		case(k)
			// 3'h 2 : in1_butt <= {din[5:3],9'b0,din[2:0]};
			3'h 2, 3'h 3 : in1_butt <= {din[7:4],8'b0,din[3:0]};
			default : in1_butt <= {din[9:5],7'b0,din[4:0]};
		endcase
	end
	// Stage 3 unmask: dout critical states. Load unmasked polynomial data so
	// butterfly's quotient compute produces correct (unmasked) dout bits.
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : begin
		in0_butt <= unmasked_mux0_r1;
		in1_butt <= unmasked_mux1_r1;
	end
	default : begin
		in0_butt <= rdata_RAM_mux0_r1;
		in1_butt <= rdata_RAM_mux1_r1;
	end
endcase
always @(posedge clk) case(state_r3)
	6'h 2, 6'h 3, 6'h 4 : tw_butt <= {rdata_ROM0,rdata_ROM0};
	6'h 7, 6'h 8, 6'h 9 : tw_butt <= {rdata_ROM0,rdata_ROM0};
	// Stage 3.c (S3b-1 fix): tw_butt at these states sources from RAM,
	// which holds masked data. With shared tw between BU and BU_m, the
	// multiply `in1 * tw` becomes bilinear in (in1_share, tw_share) and
	// breaks the share invariant. Use the existing combinational unmask
	// (unmasked_mux*_r1) so tw_butt holds the UNMASKED twiddle for one
	// register-cycle. This exposes the secret on tw_butt for that cycle —
	// accepted per the original plan's "single-cycle unmask window with
	// DONT_TOUCH" discipline (extending the discipline from in_butt to tw_butt).
	// Stage 3.c (S3b-1 fix): tw_butt at these states sources from RAM,
	// which holds masked data. With shared tw between BU and BU_m, the
	// multiply `in1 * tw` becomes bilinear in (in1_share, tw_share) and
	// breaks the share invariant. Use the existing combinational unmask
	// (unmasked_mux*_r1) so tw_butt holds the UNMASKED twiddle for one
	// register-cycle. This exposes the secret on tw_butt for that cycle —
	// accepted per the original plan's "single-cycle unmask window with
	// DONT_TOUCH" discipline (extending the discipline from in_butt to tw_butt).
	6'h b, 6'h 26, 6'h 30 : tw_butt <= raddr_RAM2_lsb_r2 ? unmasked_mux1_r1 : unmasked_mux0_r1;
	6'h c, 6'h 16, 6'h 27, 6'h 31 : tw_butt <= {rdata_ROM2, unmasked_mux0_r1[23:12]};
	6'h 14, 6'h 15 : tw_butt <= unmasked_mux0_r1;
	6'h f, 6'h 10 : tw_butt <= {12'hd01,12'hd01};
	6'h 11, 6'h 12, 6'h 13 : tw_butt <= {rdata_ROM0,rdata_ROM0};
	6'h 1b, 6'h 1c : tw_butt <= {12'hd01,12'hd01};
	6'h 18, 6'h 19, 6'h 1a : tw_butt <= {rdata_ROM1,rdata_ROM1};
	6'h 29, 6'h 2a, 6'h 2b, 6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : tw_butt <= {rdata_ROM1,rdata_ROM1};
	6'h 1d, 6'h 1e : tw_butt <= {12'h2,12'h2};
	6'h 2c, 6'h 2d : tw_butt <= {k[2],~k[2],10'b0,k[2],~k[2],10'b0};
	6'h 38, 6'h 39 : tw_butt <= {6'h0,k[2],k[1],10'b0,k[2],k[1],4'b0};
	default : tw_butt <= {rdata_ROM1,rdata_ROM1};
endcase

assign samp0 = b0[0]-b0[1]+b0[2]-b0[3]+b0[4]-b0[5];
assign samp1 = b1[0]-b1[1]+b1[2]-b1[3]+b1[4]-b1[5];
assign samp2 = b2[0]-b2[1]+b2[2]-b2[3]+b2[4]-b2[5];
assign samp3 = b3[0]-b3[1]+b3[2]-b3[3]+b3[4]-b3[5];
always @(posedge clk) begin
	samp0_q <= samp0[2] ? 12'h cfd + {1'b0,samp0[1:0]} : samp0;
	samp1_q <= samp1[2] ? 12'h cfd + {1'b0,samp1[1:0]} : samp1;	
	samp2_q <= samp2[2] ? 12'h cfd + {1'b0,samp2[1:0]} : samp2;
	samp3_q <= samp3[2] ? 12'h cfd + {1'b0,samp3[1:0]} : samp3;
end
always @(posedge clk) begin
	state_r1 <=state;
	state_r2 <= state_r1;
	state_r3 <= state_r2;
	out0_butt_r1 <= out0_butt;
	out1_butt_r1 <= out1_butt;
	out1_butt_r2 <= out1_butt_r1;
	quo0_butt_r1 <= quo0_butt;
	quo1_butt_r1 <= quo1_butt;
	decomp0_butt_r1 <= decomp0_butt;
	decomp1_butt_r1 <= decomp1_butt;
	// Stage 2: mask-share retiming registers, mirroring primary structure.
	out0_butt_r1_m   <= out0_butt_m;
	out1_butt_r1_m   <= out1_butt_m;
	out1_butt_r2_m   <= out1_butt_r1_m;
	quo0_butt_r1_m   <= quo0_butt_m;
	quo1_butt_r1_m   <= quo1_butt_m;
	decomp0_butt_r1_m <= decomp0_butt_m;
	decomp1_butt_r1_m <= decomp1_butt_m;
	raddr_RAM2_lsb_r1 <= raddr_RAM2[0];
	raddr_RAM2_lsb_r2 <= raddr_RAM2_lsb_r1;
	req_noise_r1 <= req_noise;
	req_noise_r2 <= req_noise_r1;
	fifo1_req_r10 <= fifo1_req_r9;
	ctr_col_r1 <= ctr_col;
	rdata_RAM_mux0_r1 <= rdata_RAM_mux0;
	rdata_RAM_mux1_r1 <= rdata_RAM_mux1;
	rdata_RAM_mux1_r2 <= rdata_RAM_mux1_r1;
	raddr_ROM_r1 <= raddr_ROM;
end
always @(posedge clk) case(state)
	6'h 2, 6'h 19 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k;
	6'h 3, 6'h 1a : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k + ctr_i[6:1];
	6'h 4, 6'h 18 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j};
	6'h b : raddr_RAM0 <= {ctr_col,ctr_k[6:1]};
	6'h 14, 6'h 15 : raddr_RAM0 <= {ctr_col,ctr_k[6:1]};
	6'h 16 : raddr_RAM0 <= {ctr_k[6:1]};
	6'h 20, 6'h 21, 6'h 3e, 6'h 3f : raddr_RAM0 <= {ctr_NTT[1:0],ctr_k[5:0]};
	6'h 34, 6'h 36 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k;
	6'h 35, 6'h 37 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j} + ctr_k + ctr_i[6:1];
	6'h 33 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_j};
	6'h 26, 6'h 30 : raddr_RAM0 <= {ctr_col,ctr_k[6:1]};
	6'h 31 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_k[6:1]};
	6'h 1d, 6'h 1e, 6'h 38, 6'h 39 : raddr_RAM0 <= {ctr_NTT[1:0],ctr_k[5:0]};
	default : raddr_RAM0 <= 8'h 0;
endcase
always @(posedge clk) case(state)
	6'h 7, 6'h 11 : raddr_RAM1 <= ctr_j + ctr_k;
	6'h 8, 6'h 12 : raddr_RAM1 <= ctr_j + ctr_k + ctr_i[6:1];
	6'h 9, 6'h 13 : raddr_RAM1 <= ctr_j;	
	6'h c : raddr_RAM1 <= ctr_k[6:1];
	6'h 14, 6'h 15 : raddr_RAM1 <= ctr_k[6:1];
	6'h 22, 6'h 23 : raddr_RAM1 <= ctr_k[5:0];
	6'h 29 : raddr_RAM1 <= ctr_j;
	6'h 2a : raddr_RAM1 <= ctr_j + ctr_k;
	6'h 2b : raddr_RAM1 <= ctr_j + ctr_k + ctr_i[6:1];
	6'h 27 : raddr_RAM1 <= ctr_k[6:1];
	6'h f, 6'h 10, 6'h 1b, 6'h 1c, 6'h 1d, 6'h 1e : raddr_RAM1 <= ctr_k[5:0];
	6'h 2c, 6'h 2d : raddr_RAM1 <= ctr_k[5:0];
	default : raddr_RAM1 <= 8'h 0;
endcase
always @(posedge clk) case(state)
	6'h b, 6'h c : raddr_RAM2 <= ctr_k;
	6'h 14, 6'h 15, 6'h 16 : raddr_RAM2 <= ctr_k;
	6'h 26, 6'h 27 : raddr_RAM2 <= ctr_k;
	6'h 30, 6'h 31 : raddr_RAM2 <= ctr_k;
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : raddr_RAM2 <= req_noise_done ? 7'h 0 : req_noise_r1 ? raddr_RAM2 + 1'h 1 : raddr_RAM2;
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : raddr_RAM2 <= ctr_k;
	default : raddr_RAM2 <= 7'h 0;
endcase
always @(*) case(state_r2)
	6'h 2, 6'h 3, 6'h 4, 6'h 18, 6'h 19, 6'h 1a : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h 7, 6'h 8, 6'h 9 : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h 11, 6'h 12, 6'h 13 : begin		
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h 14 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM2;
	end
	6'h 15 : begin
		rdata_RAM_mux0 = rdata_RAM1;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h b, 6'h 26, 6'h 30 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		rdata_RAM_mux0 = rdata_RAM4[23:0];
		rdata_RAM_mux1 = rdata_RAM4[47:24];
	end
	6'h 1d : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM0;
	end
	6'h 1e : begin
		rdata_RAM_mux0 = rdata_RAM3;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h 29, 6'h 2a, 6'h 2b : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM3;
	end
	6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
	6'h 2c : begin
		rdata_RAM_mux0 = rdata_RAM2;
		rdata_RAM_mux1 = rdata_RAM4[23:0];
	end
	6'h 2d : begin
		rdata_RAM_mux0 = rdata_RAM3;
		rdata_RAM_mux1 = rdata_RAM4[47:24];
	end
	6'h 38 : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM4[23:0];
	end
	6'h 39 : begin
		rdata_RAM_mux0 = rdata_RAM1;
		rdata_RAM_mux1 = rdata_RAM4[47:24];
	end
	default : begin
		rdata_RAM_mux0 = rdata_RAM0;
		rdata_RAM_mux1 = rdata_RAM1;
	end
endcase
always @(posedge clk) raddr_ROM <= {ctr_i[0],ctr_i[1],ctr_i[2],ctr_i[3],ctr_i[4],ctr_i[5],ctr_i[6]} + ctr_group;

always @(*) case(state_r13)
	6'h 20, 6'h 21, 6'h 3e, 6'h 3f : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	5'h 2, 5'h 3, 5'h 4 : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	6'h 18, 6'h 19, 6'h 1a : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	6'h 16, 6'h 31 : begin
		wen_RAM0 = ~waddr_RAM2[0];
		wen_RAM1 = waddr_RAM2[0];
	end
	6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 1;
	end
	5'h 38 : begin
		wen_RAM0 = 1'h 1;
		wen_RAM1 = 1'h 0;
	end
	5'h 39 : begin
		wen_RAM0 = 1'h 0;
		wen_RAM1 = 1'h 1;
	end
	default : begin
		wen_RAM0 = 1'h 0;
		wen_RAM1 = 1'h 0;
	end
endcase
always @(*) case(state_r13)
	6'h 22, 6'h 23 : begin
		wen_RAM2 = 1'h 1;
		wen_RAM3 = 1'h 1;		
	end
	5'h 7, 5'h 8, 5'h 9 : begin
		wen_RAM2 = 1'h 1;
		wen_RAM3 = 1'h 1;
	end
	6'h 11, 6'h 12, 6'h 13  : begin
		wen_RAM2 = 1'h 1;
		wen_RAM3 = 1'h 1;
	end
	6'h c, 6'h 27 : begin
		wen_RAM2 = ~waddr_RAM2[0];
		wen_RAM3 = waddr_RAM2[0];
	end
	6'h 29, 6'h 2a, 6'h 2b : begin
		wen_RAM2 = 1'h 1;
		wen_RAM3 = 1'h 1;
	end
	6'h f, 6'h 1b, 6'h 2c : begin
		wen_RAM2 = 1'h 1;
		wen_RAM3 = 1'h 0;
	end
	6'h 10, 6'h 1c, 6'h 2d : begin
		wen_RAM2 = 1'h 0;
		wen_RAM3 = 1'h 1;
	end
	default : begin
		wen_RAM2 = 1'h 0;
		wen_RAM3 = 1'h 0;
	end
endcase
always @(*) case(state_r13)
	5'h b, 6'h 14, 6'h 15 : wen_RAM4 = 1'h 1;
	6'h 26, 6'h 30 : wen_RAM4 = 1'h 1;
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : wen_RAM4 = fifo1_req_r10;
	default : wen_RAM4 = 1'h 0;
endcase
// Stage 2 mask injection: at sampling states, primary path stores
// (samp + mask_const) mod Q. This is the only place fresh polynomial data
// enters RAM; all other states write butterfly outputs which are already
// masked downstream.
wire [12:0] samp0_plus = {1'b0, samp0_q} + {1'b0, mask_const};
wire [12:0] samp1_plus = {1'b0, samp1_q} + {1'b0, mask_const};
wire [12:0] samp2_plus = {1'b0, samp2_q} + {1'b0, mask_const};
wire [12:0] samp3_plus = {1'b0, samp3_q} + {1'b0, mask_const};
wire [11:0] samp0_masked = (samp0_plus >= 13'h d01) ? samp0_plus[11:0] - 12'h d01 : samp0_plus[11:0];
wire [11:0] samp1_masked = (samp1_plus >= 13'h d01) ? samp1_plus[11:0] - 12'h d01 : samp1_plus[11:0];
wire [11:0] samp2_masked = (samp2_plus >= 13'h d01) ? samp2_plus[11:0] - 12'h d01 : samp2_plus[11:0];
wire [11:0] samp3_masked = (samp3_plus >= 13'h d01) ? samp3_plus[11:0] - 12'h d01 : samp3_plus[11:0];

// =============================================================================
// Stage 3: unmask helper. Computes (masked - mask + Q) mod Q per 12-bit half.
// Used at quotient-output FSM states where the butterfly's primary path needs
// to compute Montgomery quotient on UNMASKED polynomial data.
//
// The unmasked value is captured into in0_butt / in1_butt registers (which
// already exist as registered signals — they ARE the "single-cycle window"
// the unmasked polynomial value lives on the data path). DONT_TOUCH on the
// helper wires prevents synthesis from sharing them with other consumers.
//
// `unmask_24_lo(masked_24, mask_24)`: returns 12-bit unmasked low half
// `unmask_24_hi(masked_24, mask_24)`: returns 12-bit unmasked high half
// Both: (masked + Q - mask) wrapped to [0, Q).
// =============================================================================
// Stage 3 unmask: compute (masked - mask) mod Q per 12-bit half. Simpler form
// using borrow detection. With mask_const=0, mask is 0, so result equals input.
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_lo_diff = rdata_RAM_mux0_r1[11:0]  - rdata_RAM_mux0_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire        um_mux0_r1_lo_borrow = rdata_RAM_mux0_r1[11:0]  < rdata_RAM_mux0_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_hi_diff = rdata_RAM_mux0_r1[23:12] - rdata_RAM_mux0_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire        um_mux0_r1_hi_borrow = rdata_RAM_mux0_r1[23:12] < rdata_RAM_mux0_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_lo_diff = rdata_RAM_mux1_r1[11:0]  - rdata_RAM_mux1_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire        um_mux1_r1_lo_borrow = rdata_RAM_mux1_r1[11:0]  < rdata_RAM_mux1_r1_m[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_hi_diff = rdata_RAM_mux1_r1[23:12] - rdata_RAM_mux1_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire        um_mux1_r1_hi_borrow = rdata_RAM_mux1_r1[23:12] < rdata_RAM_mux1_r1_m[23:12];
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_lo = um_mux0_r1_lo_borrow ? um_mux0_r1_lo_diff + 12'h d01 : um_mux0_r1_lo_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux0_r1_hi = um_mux0_r1_hi_borrow ? um_mux0_r1_hi_diff + 12'h d01 : um_mux0_r1_hi_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_lo = um_mux1_r1_lo_borrow ? um_mux1_r1_lo_diff + 12'h d01 : um_mux1_r1_lo_diff;
(* DONT_TOUCH = "TRUE" *) wire [11:0] um_mux1_r1_hi = um_mux1_r1_hi_borrow ? um_mux1_r1_hi_diff + 12'h d01 : um_mux1_r1_hi_diff;
(* DONT_TOUCH = "TRUE" *) wire [23:0] unmasked_mux0_r1 = {um_mux0_r1_hi, um_mux0_r1_lo};
(* DONT_TOUCH = "TRUE" *) wire [23:0] unmasked_mux1_r1 = {um_mux1_r1_hi, um_mux1_r1_lo};

always @(*) case(state_r13)
	6'h 20, 6'h 21, 6'h 22, 6'h 23, 6'h 3e, 6'h 3f : begin
		wdata_RAM0 = {samp1_masked, samp0_masked};
		wdata_RAM1 = {samp3_masked, samp2_masked};
	end
	4'h 2, 5'h 7, 5'h 11, 6'h 19, 6'h 2a, 6'h 34, 6'h 36 : begin
		wdata_RAM0 = out0_butt_r1;
		wdata_RAM1 = out0_butt;
	end
	4'h 3, 5'h 8, 5'h 12, 6'h 1a, 6'h 2b, 6'h 35, 6'h 37 : begin
		wdata_RAM0 = out1_butt_r2;
		wdata_RAM1 = out1_butt_r1;
	end
	4'h 4, 5'h 9, 5'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		wdata_RAM0 = out0_butt_r1;
		wdata_RAM1 = out1_butt_r1;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin		
		wdata_RAM0 = {data_mux1,data_mux0};		
		wdata_RAM1 = {data_mux1,data_mux0};
	end
	5'h f, 5'h 10, 6'h 1b, 6'h 1c : begin
		wdata_RAM0 = {decomp1_butt_r1,decomp0_butt_r1};
		wdata_RAM1 = {decomp1_butt_r1,decomp0_butt_r1};
	end
	6'h 1d, 6'h 1e, 6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : begin
		wdata_RAM0 = {1'b0,quo1_butt_r1,1'b0,quo0_butt_r1};
		wdata_RAM1 = {1'b0,quo1_butt_r1,1'b0,quo0_butt_r1};
	end
	default : begin		
		wdata_RAM0 = out0_butt_r1;
		wdata_RAM1 = out1_butt_r1;
	end
endcase
always @(*) case(state_r13)
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : wdata_RAM2 = {samp3_masked, samp2_masked, samp1_masked, samp0_masked};
	default : wdata_RAM2 = {wdata_RAM1,wdata_RAM0};
endcase

always @(*) case(state_r2)
	5'h c : rdata_acc = raddr_RAM2_lsb_r1 ? rdata_RAM3 : rdata_RAM2;
	6'h 27 : rdata_acc = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM3 : rdata_RAM2;
	6'h 16, 6'h 31 : rdata_acc = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM1 : rdata_RAM0;
	default : rdata_acc = raddr_RAM2_lsb_r1 ? rdata_RAM3 : rdata_RAM2;
endcase
assign data_acc0 = out0_butt[23:12] + rdata_acc_r8[11:0];
assign data_acc1 = out1_butt[23:12] + rdata_acc_r8[23:12];
assign data_acc0_q = data_acc0 - 12'h d01;
assign data_acc1_q = data_acc1 - 12'h d01;
always @(posedge clk) data_mux0 <= data_acc0_q[12] ? data_acc0 : data_acc0_q;
always @(posedge clk) data_mux1 <= data_acc1_q[12] ? data_acc1 : data_acc1_q;

// =============================================================================
// Stage 3.b.1: parallel accumulator for mask share (closes S3-11). Mirrors
// primary's rdata_acc → c_shift_ram_6 → data_acc → data_mux structure but
// reads from RAM_m and uses BU_m's outputs. Maintains share invariant at
// accumulator-output states (5'h c, 6'h 16, 6'h 27, 6'h 31).
// =============================================================================
reg [23:0] rdata_acc_m;
wire [23:0] rdata_acc_r8_m;
wire [12:0] data_acc0_m, data_acc1_m;
wire [12:0] data_acc0_q_m, data_acc1_q_m;
(* DONT_TOUCH = "TRUE" *) reg [11:0] data_mux0_m, data_mux1_m;

always @(*) case(state_r2)
	5'h c : rdata_acc_m = raddr_RAM2_lsb_r1 ? rdata_RAM3_m : rdata_RAM2_m;
	6'h 27 : rdata_acc_m = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM3_m : rdata_RAM2_m;
	6'h 16, 6'h 31 : rdata_acc_m = ctr_col_r1 == 2'h 0 ? 24'h 0 : raddr_RAM2_lsb_r1 ? rdata_RAM1_m : rdata_RAM0_m;
	default : rdata_acc_m = raddr_RAM2_lsb_r1 ? rdata_RAM3_m : rdata_RAM2_m;
endcase
assign data_acc0_m = out0_butt_m[23:12] + rdata_acc_r8_m[11:0];
assign data_acc1_m = out1_butt_m[23:12] + rdata_acc_r8_m[23:12];
assign data_acc0_q_m = data_acc0_m - 12'h d01;
assign data_acc1_q_m = data_acc1_m - 12'h d01;
always @(posedge clk) data_mux0_m <= data_acc0_q_m[12] ? data_acc0_m : data_acc0_q_m;
always @(posedge clk) data_mux1_m <= data_acc1_q_m[12] ? data_acc1_m : data_acc1_q_m;

// =============================================================================
// Stage 3.b: dout polynomial-coeff unmask at state_r13 == 5'h c.
// Primary's dout at this state forwards `wdata_RAM0 = {data_mux1, data_mux0}`,
// which is the masked accumulator output (a + r) mod Q. To emit unmasked
// polynomial coefficients to Kyber_Server (which feeds encode_Server), compute
// (primary - mask) mod Q on each 12-bit half, register, and forward.
// (* DONT_TOUCH *) on the unmask helpers prevents synthesis from merging
// shares.
// =============================================================================
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm0_unmask_t = {1'b0, data_mux0} + 13'h d01 - {1'b0, data_mux0_m};
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm1_unmask_t = {1'b0, data_mux1} + 13'h d01 - {1'b0, data_mux1_m};
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm0_unmask_q = dm0_unmask_t - 13'h d01;
(* DONT_TOUCH = "TRUE" *) wire [12:0] dm1_unmask_q = dm1_unmask_t - 13'h d01;
(* DONT_TOUCH = "TRUE" *) wire [11:0] dm0_unmask = dm0_unmask_q[12] ? dm0_unmask_t[11:0] : dm0_unmask_q[11:0];
(* DONT_TOUCH = "TRUE" *) wire [11:0] dm1_unmask = dm1_unmask_q[12] ? dm1_unmask_t[11:0] : dm1_unmask_q[11:0];
(* DONT_TOUCH = "TRUE" *) wire [23:0] wdata_RAM0_unmasked = {dm1_unmask, dm0_unmask};

always @(*) case(state)
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : req_noise = ~fifo1_empty & ~req_noise_done;
	default : req_noise = 1'h 0;
endcase
always @(posedge clk) case(state_r1)
	6'h 0 : req_noise_done <= 1'h 0;
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 : req_noise_done <= raddr_RAM2 == 6'h 3f ? 1'h 1 : req_noise_done;
	6'h 2c, 6'h 38 : req_noise_done <= 1'h 0; 
endcase
always @(posedge clk) case(state_r3)
	6'h 36, 6'h 37 : ena_sft <= 1'h 1;
	default : ena_sft <= 1'h 0;
endcase
always @(*) case(state_r2)
	5'h b, 6'h 26 : fifo0_req = 1'h 1;
	default : fifo0_req = 1'h 0;
endcase
always @(*) case(state_r2)
	6'h 20, 6'h 21, 6'h 22, 6'h 23, 6'h 3e, 6'h 3f : fifo1_req = 1'h 1;
	6'h 2a, 6'h 34 : fifo1_req = req_noise_r2;
	6'h 2b, 6'h 35 : fifo1_req = req_noise_r2;
	default : fifo1_req = 1'h 0;
endcase
always @(*) begin
	if(state_r2 == 5'h f || state_r2 == 5'h 10 || state_r2 == 6'h 30 || state_r13 == 6'h 2c || state_r13 == 6'h 2d)
		req_D0 = 1'h 1;
	else 
		req_D0 = 1'h 0;
end
always @(*) begin
	if(state_r2  == 6'h 1b || state_r2 == 6'h 1c || state_r13 == 6'h 38 || state_r13 == 6'h 39)
		req_D1 = 1'h 1;
	else
		req_D1 = 1'h 0;
end
always @(posedge clk) case(state_r13)
	5'h 1 : ready_t <= 1'h 0;
	5'h e : ready_t <= 1'h 1;
	6'h 2f: ready_t <= 1'h 1;
	default : ready_t <= ready_t;
endcase

always @(*) case(state_r13)
	6'h 1d, 6'h 1e : begin
		m_ena = 1'h 1;
		m_dec = {quo1_butt_r1[0],quo0_butt_r1[0]};
	end
	default : begin
		m_ena = 1'h 0;
		m_dec = 2'h 0;
	end
endcase
always @(posedge clk) case(state_r13)
	5'h c : dout <= ctr_col_r12 == k_1 ? wdata_RAM0_unmasked : 24'h 0;
	6'h 2c, 6'h 2d : case(k)
		3'h 2, 3'h 3 : dout <= {quo1_butt_r1[9:0],quo0_butt_r1[9:0]};
		default : dout <= {quo1_butt_r1,quo0_butt_r1};
	endcase
	6'h 38, 6'h 39 : case(k)
		3'h 2, 3'h 3 : dout <= {quo1_butt_r1[3:0],quo0_butt_r1[3:0]};
		default : dout <= {quo1_butt_r1[4:0],quo0_butt_r1[4:0]};
	endcase
	default : dout <= 24'h 0;
endcase

always @(posedge clk) case(state_r13)
	5'h c : valid <= ctr_col_r12 == k_1 ? 1'h 1 : 1'h 0;
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : valid <= 1'h 1;
	default : valid <= 1'h 0;
endcase
always @(posedge clk) begin
	if(start)
		finish <= 1'h 0;
	else if(state_r13 == 6'h 3a)
		finish <= 1'h 1;
	else
		finish <= 1'h 0;
end

// =============================================================================
// Stage 2: drive mask-share data signals from CSPRNG-derived constant mask
// at sampling-state writebacks (where polynomials enter RAM for the first
// time). At all OTHER writeback states, the mask path's wdata mirrors the
// primary's structure but uses BU_m's outputs. This preserves the property
// "RAM_p contents = (a + r), RAM_m contents = r" throughout the NTT.
// =============================================================================

// Mask-share butterfly inputs: mirror primary's in0_butt/in1_butt assign block,
// but feed from rdata_RAM*_m (the mask polynomial RAM reads). For coefficient-
// load states (5'h b, 6'h 26, 6'h 30), in1 comes from `din` for primary; for
// the mask path, that becomes the constant mask (extended to 24 bits as
// {mask_const, mask_const}).
always @(posedge clk) case(state_r3)
	6'h 2, 6'h 7, 6'h 11, 6'h 19, 6'h 2a, 6'h 34, 6'h 36 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux0_m;
	end
	6'h 3, 6'h 8, 6'h 12, 6'h 1a, 6'h 2b, 6'h 35, 6'h 37  : begin
		in0_butt_m <= rdata_RAM_mux1_r2_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	6'h 4, 6'h 9, 6'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	5'h b, 6'h 26, 6'h 30 : begin
		in0_butt_m <= raddr_RAM2_lsb_r2 ? rdata_RAM_mux1_r1_m : rdata_RAM_mux0_r1_m;
		// Stage 3.e fix (S3c-6): din carries unmasked public data (A coefficient).
		// Earlier we set in1_butt_m = 0, but butterfly's output passes through
		// sum_in1_sr at this state's flag config (flag_mix1=0). With in1_m=0,
		// the passthrough lane writes 0 to RAM_m, breaking the share for
		// downstream RAM reads. Fix: feed the SAME public din to in1_butt_m as
		// in1_butt, so passthrough lane produces matching value (cancels in
		// BU_p − BU_m diff) and multiply lane produces same product (cancels
		// too — both shares multiply same A by same shared tw). Net: share
		// invariant preserved at the BU output. Public A is OK to feed mask
		// path since A is not secret.
		in1_butt_m <= din;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	6'h 14, 6'h 15, 6'h 1d, 6'h 1e : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	5'h f, 5'h 10 : begin
		in0_butt_m <= 24'h0;
		// Stage 3.e fix (S3c-6): mirror primary's in1_butt slice exactly so
		// BU_m operates on same public data; share invariant carries through
		// butterfly's non-fully-linear paths (e.g., shift-right at sel_a1=0).
		case(k)
			3'h 2, 3'h 3 : in1_butt_m <= {din[19:10],2'b0,din[9:0]};
			default : in1_butt_m <= {din[21:11],1'b0,din[10:0]};
		endcase
	end
	6'h 1b, 6'h 1c : begin
		in0_butt_m <= 24'h0;
		case(k)
			3'h 2, 3'h 3 : in1_butt_m <= {din[7:4],8'b0,din[3:0]};
			default : in1_butt_m <= {din[9:5],7'b0,din[4:0]};
		endcase
	end
	6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
	default : begin
		in0_butt_m <= rdata_RAM_mux0_r1_m;
		in1_butt_m <= rdata_RAM_mux1_r1_m;
	end
endcase

// Mask-share rdata_RAM_mux signals (parallel to primary rdata_RAM_mux0/1)
reg [23:0] rdata_RAM_mux0_m, rdata_RAM_mux1_m;
(* DONT_TOUCH = "TRUE" *) reg [23:0] rdata_RAM_mux0_r1_m, rdata_RAM_mux1_r1_m, rdata_RAM_mux1_r2_m;

always @(posedge clk) begin
	rdata_RAM_mux0_r1_m <= rdata_RAM_mux0_m;
	rdata_RAM_mux1_r1_m <= rdata_RAM_mux1_m;
	rdata_RAM_mux1_r2_m <= rdata_RAM_mux1_r1_m;
end

// Mirror primary's rdata_RAM_mux selection (uses same state_r2)
always @(*) case(state_r2)
	6'h 2, 6'h 3, 6'h 4, 6'h 18, 6'h 19, 6'h 1a : begin
		rdata_RAM_mux0_m = rdata_RAM0_m;
		rdata_RAM_mux1_m = rdata_RAM1_m;
	end
	6'h 9, 6'h a, 6'h b, 6'h 29, 6'h 2a, 6'h 2b : begin
		rdata_RAM_mux0_m = rdata_RAM2_m;
		rdata_RAM_mux1_m = rdata_RAM3_m;
	end
	6'h 13, 6'h 14, 6'h 15, 6'h 16, 6'h 17, 6'h 33, 6'h 34, 6'h 35, 6'h 36, 6'h 37 : begin
		rdata_RAM_mux0_m = rdata_RAM0_m;
		rdata_RAM_mux1_m = rdata_RAM1_m;
	end
	6'h 7, 6'h 11, 6'h 27, 6'h 31 : begin
		rdata_RAM_mux0_m = rdata_RAM4_m[23:0];
		rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
	end
	6'h 6, 6'h 10, 6'h 26, 6'h 30 : begin
		rdata_RAM_mux0_m = rdata_RAM0_m;
		rdata_RAM_mux1_m = rdata_RAM1_m;
	end
	6'h c : begin
		rdata_RAM_mux0_m = rdata_RAM2_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[23:0];
	end
	6'h 1d : begin
		rdata_RAM_mux0_m = rdata_RAM0_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[23:0];
	end
	6'h 1e : begin
		rdata_RAM_mux0_m = rdata_RAM1_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
	end
	6'h 16 : begin
		rdata_RAM_mux0_m = rdata_RAM3_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
	end
	6'h 2c : begin
		rdata_RAM_mux0_m = rdata_RAM0_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[23:0];
	end
	6'h 2d : begin
		rdata_RAM_mux0_m = rdata_RAM1_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
	end
	6'h 38 : begin
		rdata_RAM_mux0_m = rdata_RAM0_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[23:0];
	end
	6'h 39 : begin
		rdata_RAM_mux0_m = rdata_RAM1_m;
		rdata_RAM_mux1_m = rdata_RAM4_m[47:24];
	end
	default : begin
		rdata_RAM_mux0_m = rdata_RAM0_m;
		rdata_RAM_mux1_m = rdata_RAM1_m;
	end
endcase

// Mask-share wdata: mirror primary's wdata_RAM* always block. At sampling
// states (where primary writes {samp_q,samp_q}), mask writes {mask,mask}.
// At butterfly-writeback states, mask writes the corresponding BU_m output.
// At decomp/quotient states, mask writes BU_m's decomp/quo retiming.
always @(*) case(state_r13)
	6'h 20, 6'h 21, 6'h 22, 6'h 23, 6'h 3e, 6'h 3f : begin
		// Sampling: primary writes {samp1_q, samp0_q}; mask writes {mask, mask}
		wdata_RAM0_m = {mask_const, mask_const};
		wdata_RAM1_m = {mask_const, mask_const};
	end
	4'h 2, 5'h 7, 5'h 11, 6'h 19, 6'h 2a, 6'h 34, 6'h 36 : begin
		wdata_RAM0_m = out0_butt_r1_m;
		wdata_RAM1_m = out0_butt_m;
	end
	4'h 3, 5'h 8, 5'h 12, 6'h 1a, 6'h 2b, 6'h 35, 6'h 37 : begin
		wdata_RAM0_m = out1_butt_r2_m;
		wdata_RAM1_m = out1_butt_r1_m;
	end
	4'h 4, 5'h 9, 5'h 13, 6'h 18, 6'h 29, 6'h 33 : begin
		wdata_RAM0_m = out0_butt_r1_m;
		wdata_RAM1_m = out1_butt_r1_m;
	end
	5'h c, 6'h 16, 6'h 27, 6'h 31 : begin
		// Stage 3.b.1: parallel accumulator for mask share. RAM_p writes
		// {data_mux1, data_mux0} (primary accumulator output). RAM_m writes
		// {data_mux1_m, data_mux0_m} (mask-share accumulator output).
		// Maintains share invariant: RAM_p[i] - RAM_m[i] = unmasked.
		wdata_RAM0_m = {data_mux1_m, data_mux0_m};
		wdata_RAM1_m = {data_mux1_m, data_mux0_m};
	end
	5'h f, 5'h 10, 6'h 1b, 6'h 1c : begin
		// Stage 3.b.2 (S3-14 fix): decomp is non-linear (Kyber compression).
		// At these states, in_butt is loaded from `din` (compressed input
		// ciphertext, public/unmasked) so primary's decomp output is already
		// unmasked. RAM_m at these output addresses gets 0 — share invariant
		// preserved (RAM_p - RAM_m = unmasked decomp output).
		wdata_RAM0_m = 24'h0;
		wdata_RAM1_m = 24'h0;
	end
	6'h 1d, 6'h 1e, 6'h 2c, 6'h 2d, 6'h 38, 6'h 39 : begin
		// Stage 3: at quotient-output states, primary path writes UNMASKED
		// quotient bits (because in_butt was unmasked at the corresponding
		// state_r3). Quotient is non-linear, so writing quo*_butt_r1_m to
		// RAM_m would violate the share invariant. Instead write 0 — these
		// RAM locations are output-only (m_dec emission, dout emission)
		// and not consumed as polynomial inputs by downstream operations.
		wdata_RAM0_m = 24'h0;
		wdata_RAM1_m = 24'h0;
	end
	default : begin
		wdata_RAM0_m = out0_butt_r1_m;
		wdata_RAM1_m = out1_butt_r1_m;
	end
endcase

// Mask-share RAM2 wdata: parallel to primary's wdata_RAM2.
always @(*) case(state_r13)
	// Stage 3.c fix (S3b-1 b): only the noise-sampling states write mask_const
	// to RAM2/4. State 6'h 14/15 is an NTT/INTT step (writes butterfly output
	// in primary), so RAM2_m must mirror the default {wdata_RAM1_m, wdata_RAM0_m}
	// to preserve the share invariant. Stage 2 erroneously grouped 6'h 14/15
	// with the noise-sampling states.
	6'h 2a, 6'h 2b, 6'h 34, 6'h 35 :
		wdata_RAM2_m = {mask_const, mask_const, mask_const, mask_const};
	default :
		wdata_RAM2_m = {wdata_RAM1_m, wdata_RAM0_m};
endcase

// =============================================================================
// PRIMARY share — original NTT_core_Server hardware. At Stage 1 with mask=0
// this carries the unmasked polynomial. Stages 2+ will mask the input.
// =============================================================================
(* DONT_TOUCH = "TRUE" *) butterfly_Ser BU(.clk(clk),.in0(in0_butt),.in1(in1_butt),.tw(tw_butt),.k(k),.m_bits(m_bits),.flag_uv(ctrl_butt[10]),.flag_mix1(ctrl_butt[9]),.flag_mix0(ctrl_butt[8]),.flag_m(ctrl_butt[7]),.flag_sub1(ctrl_butt[6]),.flag_sub0(ctrl_butt[5]),.flag_add(ctrl_butt[4]),.sel_a1(ctrl_butt[3]),.sel_s0(ctrl_butt[2]),.sel1_a0(ctrl_butt[1]),.sel0_a0(ctrl_butt[0]),.out0(out0_butt),.out1(out1_butt),.quo0(quo0_butt),.quo1(quo1_butt),.decomp0(decomp0_butt),.decomp1(decomp1_butt));
dist_mem_gen_5 ROM0(.clk(clk),.a(raddr_ROM_r1),.qspo(rdata_ROM0));
dist_mem_gen_6 ROM1(.clk(clk),.a(raddr_ROM_r1),.qspo(rdata_ROM1));
dist_mem_gen_7 ROM2(.clk(clk),.a(raddr_ROM_r1),.qspo(rdata_ROM2));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM0(.clka(clk),.wea(wen_RAM0),.addra(waddr_RAM0),.dina(wdata_RAM0),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM0));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM1(.clka(clk),.wea(wen_RAM1),.addra(waddr_RAM0),.dina(wdata_RAM1),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM1));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM2(.clka(clk),.wea(wen_RAM2),.addra(waddr_RAM1),.dina(wdata_RAM0),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM2));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM3(.clka(clk),.wea(wen_RAM3),.addra(waddr_RAM1),.dina(wdata_RAM1),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM3));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_1 RAM4(.clka(clk),.wea(wen_RAM4),.addra(waddr_RAM2),.dina(wdata_RAM2),.clkb(clk),.addrb(raddr_RAM2),.doutb(rdata_RAM4));

// =============================================================================
// MASK share — parallel polynomial state holding `r`. At Stage 1, r is
// hardwired to 0 throughout, so the entire mask path computes on zeros and
// produces zeros. Outputs are NOT consumed by anything yet (they will be in
// Stage 3's unmask logic). DONT_TOUCH and KEEP_HIERARCHY prevent synthesis
// from optimizing the mask path away or merging it with the primary path.
//
// Wiring conventions:
//   - Same clk, same control signals as primary (FSM is shared).
//   - Same ROM twiddles (twiddles are public).
//   - Different RAM data — primary holds (a+r), mask holds r.
//   - in*_butt_m / out*_butt_m / wdata_RAM*_m / rdata_RAM*_m are the
//     mask-share counterparts of the primary signals; they are declared
//     near the top of the module alongside the primary versions.
// =============================================================================
(* DONT_TOUCH = "TRUE" *) butterfly_Ser BU_m(.clk(clk),.in0(in0_butt_m),.in1(in1_butt_m),.tw(tw_butt),.k(k),.m_bits(m_bits),.flag_uv(ctrl_butt[10]),.flag_mix1(ctrl_butt[9]),.flag_mix0(ctrl_butt[8]),.flag_m(ctrl_butt[7]),.flag_sub1(ctrl_butt[6]),.flag_sub0(ctrl_butt[5]),.flag_add(ctrl_butt[4]),.sel_a1(ctrl_butt[3]),.sel_s0(ctrl_butt[2]),.sel1_a0(ctrl_butt[1]),.sel0_a0(ctrl_butt[0]),.out0(out0_butt_m),.out1(out1_butt_m),.quo0(quo0_butt_m),.quo1(quo1_butt_m),.decomp0(decomp0_butt_m),.decomp1(decomp1_butt_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM0_m(.clka(clk),.wea(wen_RAM0),.addra(waddr_RAM0),.dina(wdata_RAM0_m),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM0_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_0 RAM1_m(.clka(clk),.wea(wen_RAM1),.addra(waddr_RAM0),.dina(wdata_RAM1_m),.clkb(clk),.addrb(raddr_RAM0),.doutb(rdata_RAM1_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM2_m(.clka(clk),.wea(wen_RAM2),.addra(waddr_RAM1),.dina(wdata_RAM0_m),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM2_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_2 RAM3_m(.clka(clk),.wea(wen_RAM3),.addra(waddr_RAM1),.dina(wdata_RAM1_m),.clkb(clk),.addrb(raddr_RAM1),.doutb(rdata_RAM3_m));
(* KEEP_HIERARCHY = "TRUE" *) blk_mem_gen_1 RAM4_m(.clka(clk),.wea(wen_RAM4),.addra(waddr_RAM2),.dina(wdata_RAM2_m),.clkb(clk),.addrb(raddr_RAM2),.doutb(rdata_RAM4_m));
mux4to2 m00(.a(din[ 0]),.b(din[ 0]),.c(din[ 2]),.d(din[ 3]),.sel({req_noise_r12,din[24]}),.z(b0[1:0]));
mux4to2 m01(.a(din[ 1]),.b(din[ 1]),.c(din[ 3]),.d(din[ 4]),.sel({req_noise_r12,din[24]}),.z(b0[3:2]));
mux4to2 m02(.a(  1'h 0),.b(din[ 2]),.c(  1'h 0),.d(din[ 5]),.sel({req_noise_r12,din[24]}),.z(b0[5:4]));
mux4to2 m10(.a(din[ 4]),.b(din[ 6]),.c(din[ 6]),.d(din[ 9]),.sel({req_noise_r12,din[24]}),.z(b1[1:0]));
mux4to2 m11(.a(din[ 5]),.b(din[ 7]),.c(din[ 7]),.d(din[10]),.sel({req_noise_r12,din[24]}),.z(b1[3:2]));
mux4to2 m12(.a(  1'h 0),.b(din[ 8]),.c(  1'h 0),.d(din[11]),.sel({req_noise_r12,din[24]}),.z(b1[5:4]));
mux4to2 m20(.a(din[ 8]),.b(din[12]),.c(din[10]),.d(din[15]),.sel({req_noise_r12,din[24]}),.z(b2[1:0]));
mux4to2 m21(.a(din[ 9]),.b(din[13]),.c(din[11]),.d(din[16]),.sel({req_noise_r12,din[24]}),.z(b2[3:2]));
mux4to2 m22(.a(  1'h 0),.b(din[14]),.c(  1'h 0),.d(din[17]),.sel({req_noise_r12,din[24]}),.z(b2[5:4]));
mux4to2 m30(.a(din[12]),.b(din[18]),.c(din[14]),.d(din[21]),.sel({req_noise_r12,din[24]}),.z(b3[1:0]));
mux4to2 m31(.a(din[13]),.b(din[19]),.c(din[15]),.d(din[22]),.sel({req_noise_r12,din[24]}),.z(b3[3:2]));
mux4to2 m32(.a(  1'h 0),.b(din[20]),.c(  1'h 0),.d(din[23]),.sel({req_noise_r12,din[24]}),.z(b3[5:4]));
c_shift_ram_2 S3(.CLK(clk),.D(ctr_col),.Q(ctr_col_r12));
c_shift_ram_3 S4(.CLK(clk),.D(state_r3),.Q(state_r13));
c_shift_ram_4 S5(.CLK(clk),.D(raddr_RAM0),.Q(waddr_RAM0));
c_shift_ram_4 S6(.CLK(clk),.D(raddr_RAM1),.Q(waddr_RAM1));
c_shift_ram_5 S7(.CLK(clk),.D(raddr_RAM2),.Q(waddr_RAM2));
c_shift_ram_6 S9(.CLK(clk),.D(rdata_acc),.Q(rdata_acc_r8));
// Stage 3.b.1: parallel mask-share accumulator retiming
(* KEEP_HIERARCHY = "TRUE" *) c_shift_ram_6 S9_m(.CLK(clk),.D(rdata_acc_m),.Q(rdata_acc_r8_m));
c_shift_ram_8 S10(.CLK(clk),.D(fifo1_req),.Q(fifo1_req_r9));
c_shift_ram_11 S11(.CLK(clk),.D(req_noise_r2),.Q(req_noise_r12));

endmodule