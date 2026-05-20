`timescale 1ns / 1ps
// Phase 0 of plan_masked_ntt_option1.md: scaffold for masked Kyber_Server.
// This file is currently a VERBATIM copy of Kyber_Server.v with only the
// module name renamed. Phase 2 will swap NTT_core_Server -> NTT_core_Server_masked
// at the single instantiation point near the bottom of this file.
module Kyber_Server_masked #(
    parameter D_SEED = 256'h 2D7F73369973CD2D0348B1CC251AD82FDD1A6BDBE4106D0CAA9476B0A035997C
)(
	input clk, rst, start,
	input wen,
	input [2:0] k,
	input ready_c,
	input req_pk,
	input [31:0] din,
	// output ofifo_req_t,
	// output [31:0] ofifo_dout_t,
	output reg ready_pk,
	output req_c,
	output reg valid,
	output reg [31:0] dout
);

// assign ofifo_req_t = ofifo0_req;
// assign ofifo_dout_t = ofifo0_dout;

reg [255:0] d, rho, sigma, hash_pk, hash_c, K;
reg [255:0] m, z;
wire [1:0] m_dec;
wire m_ena;

reg req_pk_r1;
reg CCA_enc;
wire CCA_enc_start;

reg [5:0] data_ctr;
reg [5:0] din_ctr_end, dout_ctr_end, u_ctr_end;
reg [3:0] data_rnd_ctr;
reg [3:0] din_rnd_end, dout_rnd_end, u_rnd_end;
reg [2:0] rot_ctr;
reg [5:0] pad_ctr;
wire [7:0] fifo_GENA_ctr;
reg [3:0] nonce;
reg [1:0] absorb_ctr, absorb_ctr_r1;
reg [1:0] row, col;

wire ready_t;
reg [24:0] NTT_din;
wire [23:0] NTT_dout;
wire NTT_valid;

wire [72:0] patt, eta3, endp;
reg [72:0] patt_r, eta3_r, endp_r;
reg patt_bit, eta3_bit;

reg [5:0] state, next_state;

reg keccak_init;
wire keccak_ready;
wire keccak_squeeze;
reg extend;
wire [31:0] keccak_dout;
reg [2:0] keccak_ctr;
wire [5:0] squeeze_ctr;

reg [31:0] ififo_din;
reg ififo_last;
reg ififo_absorb;
reg [1:0] ififo_mode;
reg ififo_wen;
wire ififo_empty;
wire ofifo0_req, ofifo1_req;
reg ofifo0_req_r1, ofifo1_req_r1;
wire [23:0] ofifo0_dout;
wire [24:0] ofifo1_dout;
wire ofifo0_full, ofifo0_empty;
wire ofifo1_full, ofifo1_empty;
reg ofifo_ena;

wire [31:0] IFIFO_dout;
wire IFIFO_full, IFIFO_empty;

wire [31:0] decode_din;
wire decode_fifo_empty;
reg decode_sel;
wire [23:0] decode_dout;
wire decode_req;
reg decode_req_r1;
wire decode_valid;

wire [23:0] DFIFO0_din;
wire DFIFO0_wen;
wire [23:0] DFIFO0_dout;
wire req_D0;
reg req_D0_r1;
wire DFIFO0_empty, DFIFO0_full;
reg DFIFO0_full_r1;
wire [8:0] DFIFO0_prog_thresh;
wire DFIFO0_prog_full, DFIFO0_full_eff;
reg DFIFO0_load_b;

reg [9:0] DFIFO1_din;
reg DFIFO1_wen;
wire [9:0] DFIFO1_dout;
wire req_D1;
reg req_D1_r1;
wire DFIFO1_empty, DFIFO1_full;

reg [21:0] cmp0, cmp1;
reg equal;

wire [23:0] encode_din;
reg encode_wen;
wire [31:0] encode_dout;
wire encode_valid;

reg [33:0] OFIFO_din;
reg OFIFO_wen;
wire [33:0] OFIFO_dout;
reg OFIFO_req;
reg OFIFO_req_r1;
wire OFIFO_full, OFIFO_empty;
reg OFIFO_empty_r1;
wire OFIFO_seed, OFIFO_last;
reg OFIFO_tx_done;

always @(posedge clk) begin
	if(rst)
		state <= 6'h 0;
	else
		state <= next_state;
end
always @* case(state)
	6'h 0 : next_state = start ? state + 1'h 1 : state;
	6'h 2 : next_state = rot_ctr == 3'h 7 ? 6'h c : state;
	6'h 3 : next_state = rot_ctr == 3'h 7 ? 6'h d : state;
	6'h 4 : next_state = rot_ctr == 3'h 7 ? CCA_enc ? 6'h b : 6'h e : state;
	6'h 5, 6'h 7 : next_state = rot_ctr == 3'h 7 ? state + 1'h 1 : state;
	6'h 6 : next_state = rot_ctr == 3'h 7 ? 6'h a : state;
	6'h 8 : next_state = rot_ctr == 3'h 7 ? 6'h f : state;
	6'h 9 : next_state = rot_ctr == 3'h 7 ? 6'h 8 : state;
	6'h a : next_state = 6'h 11;
	6'h b, 6'h c, 6'h d, 6'h e : next_state = 6'h 10;
	6'h 10: next_state = pad_ctr == 5'h 0 ? state + 1'h 1 : state;
	6'h 11: next_state = state + 1'h 1;
	6'h 12: next_state = keccak_ready ? state + 1'h 1 : state;
	6'h 13: if(patt_bit & ~ofifo1_empty | ~patt_bit & ~eta3_bit & ofifo0_full & ~absorb_ctr_r1[1] & ~absorb_ctr_r1[0])
				next_state = state;
			else case(keccak_ctr)
				3'h 1 : next_state = ofifo_ena ? patt_r[72] ? 6'h 3 : eta3_r[72] ? 6'h 3e : absorb_ctr[1]|absorb_ctr[0] ? 6'h 16 : 6'h 4 : state + 1'h 1;
				3'h 2 : next_state = 6'h 18;
				3'h 5 : next_state = ofifo_ena ? patt_r[72] ? 6'h 3 : eta3_r[72] ? 6'h 3e : absorb_ctr[1]|absorb_ctr[0] ? 6'h 16 : 6'h 4 : 6'h 2e;
				3'h 7 : next_state = 6'h 31;
				default : next_state = CCA_enc ? 6'h 2f : state + 1'h 1;
			endcase
	6'h 14: next_state = squeeze_ctr == 6'h f ? state + 1'h 1 : state;
	6'h 15: next_state = 6'h 3;
	6'h 16: next_state = rot_ctr == 3'h 7 ? state + 1'h 1 : state;
	6'h 17: next_state = 6'h 10;
	6'h 18: next_state = squeeze_ctr == 6'h 31 || fifo_GENA_ctr[7] ? state + 1'h 1 : state;
	6'h 19: next_state = ready_t ? state + 1'h 1 : state;
	6'h 1a: next_state = rot_ctr == 3'h 7 ? state + 1'h 1 : state;
	6'h 1b: next_state = data_ctr == dout_ctr_end && data_rnd_ctr == dout_rnd_end && OFIFO_req_r1 ? state + 1'h 1 : state;
	6'h 1c: next_state = ififo_empty ? state + 1'h 1 : state;
	6'h 1e: next_state = pad_ctr == 5'h 0 ? state + 1'h 1 : state;
	6'h 20: next_state = keccak_ready ? state + 1'h 1 : state;
	6'h 21: next_state = rot_ctr == 3'h 7 ? state + 1'h 1 : state;
	6'h 22: next_state = ready_c ? state + 1'h 1 : state;
	6'h 23: next_state = data_ctr == din_ctr_end && data_rnd_ctr == din_rnd_end && decode_req_r1 ? state + 1'h 1 : state;
	6'h 24: next_state = ififo_empty ? state + 1'h 1 : state;
	6'h 25, 6'h 26 : next_state = rot_ctr == 3'h 7 ? state + 1'h 1 : state;
	6'h 28: next_state = pad_ctr == 5'h 0 ? state + 1'h 1 : state;
	6'h 2a: next_state = keccak_ready ? state + 1'h 1 : state;
	6'h 2b: next_state = squeeze_ctr == 3'h 7 ? state + 1'h 1 : state;
	6'h 2c: next_state = NTT_finish ? state + 1'h 1 : state;
	6'h 2d: next_state = 6'h 5;
	6'h 2e: next_state = squeeze_ctr == 4'h f ? 6'h 3 : state;
	6'h 2f: next_state = squeeze_ctr == 6'h 1f ? state + 1'h 1 : state;
	6'h 30: next_state = NTT_finish ? equal ? 6'h 7 : 6'h 9 : state;
	6'h 31: next_state = squeeze_ctr == 3'h 7 ? 6'h 0 : state;
	6'h 3e: next_state = rot_ctr == 3'h 7 ? state + 1'h 1 : state;
	6'h 3f: next_state = 6'h 10;
	default : next_state = state + 1'h 1;
endcase

always @(posedge clk) case(state)
    4'h 1 : d <= D_SEED;
	// 4'h 1 : d <= 256'h D926F38A65787A0E173FA91081EE6C40F33731730BFCA67B1C8C1D2A49930BD6;	// count = 1
	// 4'h 1 : d <= 256'h 4533512FCCC71CC864BDDF8C139D750AF55DDCF32E2E9F5AC4190135E12D624B;	// count = 2
	// 4'h 1 : d <= 256'h 2CFC4E9ABBD12698060B47B36D58B3BBF506B808380E18E8C1ED57F7F9580D05;	// count = 3
	// 4'h 1 : d <= 256'h D33388FDB134F0E2F81FA7F601606BFE46AC618647E094D6DA2A0C4E849BB766;	// count = 4
	// 4'h 1 : d <= 256'h 53B34A48F5BA0BF65A21D07CDAC9E64C5F2A6887991DC4D023A79A2CF508C47E;	// coutt = 5
	// 4'h 1 : d <= 256'h EB33B41AE6E0081B74C6AF5925DAABF91842A2F5E2DA77C1DFABF6FE5B9121C1;	// count = 6
	// 4'h 1 : d <= 256'h 5A1C14719C53389E4686F47F4EC6DECE3467E3C084E2613760C26CF9EC3466D8;	// count = 7
	// 4'h 1 : d <= 256'h 92A4831640ECAA903B94A14DD9FAF820C292C15D919F61E12831DCF48F671006;	// count = 8
	// 4'h 1 : d <= 256'h 97E61C6A761399B6C1AD04A354EFA6F36DC5B99224C9241FBA67F08E6DD522D3;	// count = 9
	4'h 2 : d <= {d[31:0],d[255:32]};
	default : d <= d;
endcase
always @(posedge clk) begin
	if(squeeze_ctr[3] && (state == 6'h 14 || state == 6'h 2e))
		sigma <= {keccak_dout,sigma[255:32]};
	else if(state == 4'h 3)
		sigma <= {sigma[31:0],sigma[255:32]};
	else
		sigma <= sigma;
end
always @(posedge clk) begin
	if(~squeeze_ctr[3] && state == 6'h 14)
		rho <= {keccak_dout,rho[255:32]};
	else if(state == 6'h 1a || state == 6'h 4)
		rho <= {rho[31:0],rho[255:32]};
	else
		rho <= rho;
end
always @(posedge clk) begin
	if(ena_sft)
		m <= {m[1:0],m[255:2]};
	else if(m_ena)
		m <= {m_dec,m[255:2]};
	else case(state)
		6'h 5 : m <= {m[31:0],m[255:32]};
		default : m <= m;
	endcase
end
always @(posedge clk) case(state)
	6'h 6 : hash_pk <= {hash_pk[31:0],hash_pk[255:32]};
	6'h 21 : hash_pk <= {keccak_dout,hash_pk[255:32]};
	default : hash_pk <= hash_pk;
endcase
always @(posedge clk) case(state)
	6'h 8 : hash_c <= {hash_c[31:0],hash_c[255:32]};
	6'h 2b : hash_c <= {keccak_dout,hash_c[255:32]};
	default : hash_c <= hash_c;
endcase
always @(posedge clk) case(state)
	6'h 7 : K <= {K[31:0],K[255:32]};
	6'h 2e : K <= squeeze_ctr[3] ? K : {keccak_dout,K[255:32]};
	default : K <= K;
endcase
always @(posedge clk) case(state)
	6'h 1 : z <= 256'h 4c71f20323f542376b995b3b1f9148a4aff672a336d78b38b026951e9f92e8cd;
	6'h 9 : z <= {z[31:0],z[255:32]};
	default : z <= z;
endcase
always @(posedge clk) begin
	if(start | CCA_enc_start) begin
		patt_r <= patt;
		eta3_r <= eta3;
		endp_r <= endp;
	end
	else if(keccak_ready && (keccak_ctr==3'h 1 || keccak_ctr==3'h 5)) begin
		patt_r <= {patt_r[71:0],1'h0};
		eta3_r <= {eta3_r[71:0],1'h0};
		endp_r <= {endp_r[71:0],1'h0};
	end
	else begin
		patt_r <= patt_r;
		eta3_r <= eta3_r;
		endp_r <= endp_r;
	end
end
always @(posedge clk) begin
	if(rst)
		{patt_bit,eta3_bit} <= 2'h 0;
	else if(keccak_ready)
		{patt_bit,eta3_bit} <= {patt_r[72],eta3_r[72]};
	else
		{patt_bit,eta3_bit} <= {patt_bit,eta3_bit};
end
always @(posedge clk) case(state)
	6'h 0 : ready_pk <= 1'h 0;
	6'h 1b: ready_pk <= 1'h 1;
	default : ready_pk <= ready_pk;
endcase
assign req_c = state == 6'h 23;
always @(*) case(k)
	3'h 2 : begin
		din_ctr_end = 6'h 16;
		din_rnd_end = 4'h 5;
		dout_ctr_end = 6'h 1e;
		dout_rnd_end = 4'h 5;
		u_ctr_end = 6'h 17;
		u_rnd_end = 4'h 4;
	end
	3'h 3 : begin
		din_ctr_end = 6'h 22;
		din_rnd_end = 4'h 7;
		dout_ctr_end = 6'h 18;
		dout_rnd_end = 4'h 8;
		u_ctr_end = 6'h 1;
		u_rnd_end = 4'h 7;
	end
	default : begin
		din_ctr_end = 6'h 12;
		din_rnd_end = 4'h b;
		dout_ctr_end = 6'h 12;
		dout_rnd_end = 4'h b;
		u_ctr_end = 6'h b;
		u_rnd_end = 4'h a;
	end
endcase
always @(posedge clk) case(state)
	4'h 0, 4'h 1 : data_ctr <= 6'h 0;
	6'h 1b : data_ctr <= OFIFO_req & ~OFIFO_empty ? data_ctr == 6'h 22 ? 6'h 1 : data_ctr + 1'h 1 : data_ctr;
	6'h 21 : data_ctr <= 6'h 0;
	6'h 23 : data_ctr <= decode_req ? data_ctr == 6'h 22 ? 6'h 1 : data_ctr + 1'h 1 : data_ctr;
	default : data_ctr <= data_ctr;
endcase
always @(posedge clk) case(state)
	4'h 0, 4'h 1 : data_rnd_ctr <= 4'h 0;
	5'h 1b : data_rnd_ctr <= data_ctr == 6'h 22 && OFIFO_req && ~OFIFO_empty ? data_rnd_ctr + 1'h1 : data_rnd_ctr;
	6'h 21 : data_rnd_ctr <= 4'h 0;
	6'h 23 : data_rnd_ctr <= data_ctr == 6'h 22 && decode_req ? data_rnd_ctr + 1'h1 : data_rnd_ctr;
	default : data_rnd_ctr <= data_rnd_ctr;
endcase
always @(posedge clk) case(state)
	6'h 0 : rot_ctr <= 4'h 0;
	6'h2, 6'h3, 6'h4, 6'h5, 6'h6, 6'h7, 6'h8, 6'h 9 : rot_ctr <= rot_ctr + 1'h 1;
	6'h 16, 6'h 3e : rot_ctr <= rot_ctr + 1'h 1;
	6'h 1a, 6'h 21 : rot_ctr <= rot_ctr + 1'h 1;
	6'h 25, 6'h 26 : rot_ctr <= rot_ctr + 1'h 1;
	default : rot_ctr <= rot_ctr;
endcase
always @(posedge clk) case(state)
	6'h 0 : pad_ctr <= 5'h 0;
	6'h 2 : pad_ctr <= 5'h 7;
	6'h 3, 6'h 3e : pad_ctr <= 5'h 17;
	6'h 4, 6'h 16 : pad_ctr <= 5'h 1f;
	6'h 5 : pad_ctr <= 5'h 0;
	6'h 7, 6'h 9 : pad_ctr <= 5'h f;
	6'h 1b: case(k)
		3'h 2 : pad_ctr <= 5'h 1;
		3'h 3 : pad_ctr <= 5'h 7;
		default : pad_ctr <= 5'h d;
	endcase
	6'h 23: case(k)
		3'h 2 : pad_ctr <= 5'h 9;
		3'h 3 : pad_ctr <= 5'h 1f;
		default : pad_ctr <= 5'h d;
	endcase
	6'h 10: pad_ctr <= pad_ctr - 1'h 1;
	6'h 1e: pad_ctr <= pad_ctr - 1'h 1;
	6'h 28: pad_ctr <= pad_ctr - 1'h 1;
	default : pad_ctr <= pad_ctr;
endcase
always @(posedge clk) begin
	if(state == 6'h 0 || state == 6'h 2d)
		absorb_ctr <= 2'h 0;
	else if(keccak_ready && (keccak_ctr == 3'h 1 || keccak_ctr == 3'h 5)) case({patt_r[72],eta3_r[72]})
		2'b 00, 2'b 11 : absorb_ctr <= absorb_ctr + 1'h 1;
		default : absorb_ctr <= 2'h 0;
	endcase
	else
		absorb_ctr <= absorb_ctr;
end
always @(posedge clk) begin
	if(keccak_ready)
		absorb_ctr_r1 <= absorb_ctr;
	else
		absorb_ctr_r1 <= absorb_ctr_r1;
end
always @(posedge clk) begin
	if(state == 6'h 0)
		row <= 2'h 0;
	else if(keccak_ready && absorb_ctr == 2'h 3 && col == k-1)
		row <= row == k-1 ? 2'h 0 : row + 1'h 1;
	else
		row <= row;
end
always @(posedge clk) begin
	if(state == 6'h 0)		
		col <= 2'h 0;
	else if(keccak_ready && absorb_ctr == 2'h 3)
		col <= col == k-1 ? 2'h 0 : col + 1'h 1;
	else		
		col <= col;
end
always @(posedge clk) begin
	if(state == 6'h 0 || state == 6'h 2d)		
		nonce <= 4'h 0;
	else if(keccak_ready && (keccak_ctr == 3'h 1 || keccak_ctr == 3'h 5) && patt_r[72]^eta3_r[72])
		nonce <= nonce + 1'h 1;
	else		
		nonce <= nonce;	
end
always @(posedge clk) begin
	if(rst)
		CCA_enc <= 1'h 0;
	else if(start)
		CCA_enc <= 1'h 0;
	else if(state == 6'h 2d)
		CCA_enc <= 1'h 1;
	else
		CCA_enc <= CCA_enc;
end
assign CCA_enc_start = state == 6'h a;
always @(posedge clk) begin
	if(state == 6'h 0)
		keccak_ctr <= 3'h 0;
	else if(keccak_ready) case(state)
		6'h 12 : keccak_ctr <= ~(ofifo_ena&~endp_r[72]) ? keccak_ctr + 1'h 1 : keccak_ctr;
		6'h 20, 6'h 2a : keccak_ctr <= keccak_ctr + 1'h 1;
		default : keccak_ctr <= keccak_ctr;
	endcase
	else
		keccak_ctr <= keccak_ctr;
end

always @(*) case(state)
	6'h 1 : keccak_init = 1'h 1;
	6'h 19 : keccak_init = 1'h 1;
	6'h 22 : keccak_init = 1'h 1;
	default : keccak_init = 1'h 0;
endcase
always @(*) case(state)
	6'h 14, 6'h 21 : extend = 1'h 1;
	6'h 2b : extend = 1'h 1;
	6'h 2e : extend = 1'h 1;
	6'h 31 : extend = 1'h 1;
	default : extend = 1'h 0;
endcase

always @(*) case(state)
	4'h 2 : ififo_din = d[31:0];
	4'h 3 : ififo_din = sigma[31:0];
	4'h 4 : ififo_din = rho[31:0];
	4'h 5 : ififo_din = m[31:0];
	4'h 6 : ififo_din = hash_pk[31:0];
	4'h 7 : ififo_din = K[31:0]; 
	4'h 8 : ififo_din = hash_c[31:0];
	4'h 9 : ififo_din = z[31:0];
	4'h a : ififo_din = 32'h 00000006;
	4'h b : ififo_din = {16'h001f,6'h0,col,6'h0,row};
	4'h c : ififo_din = 32'h 00000006;
	4'h d : ififo_din = {24'h 00001f,4'h0,nonce};
	4'h e : ififo_din = {16'h001f,6'h0,row,6'h0,col};
	4'h f : ififo_din = 32'h 0000001f;
	6'h 1b: ififo_din = OFIFO_dout;
	6'h 1d, 6'h 27: ififo_din = 32'h 00000006;
	6'h 23: ififo_din = IFIFO_dout;
	6'h 30: ififo_din = m[31:0];
	6'h 11: ififo_din = {~absorb_ctr[1]&~absorb_ctr[0],31'h0};
	6'h 1f, 6'h 29 : ififo_din = 32'h 80000000;
	default : ififo_din = 32'h 0;
endcase
always @* case(state)
	6'h 2, 6'h 3, 6'h 4, 6'h 5, 6'h 6, 6'h 7, 6'h 8, 6'h 9 : ififo_wen = 1'h 1;
	6'h 16, 6'h 3e : ififo_wen = 1'h 1;
	6'h a, 6'h b, 6'h c, 6'h d, 6'h e, 6'h f, 6'h 17, 6'h 3f : ififo_wen = 1'h 1;
	6'h 10, 6'h 11 : ififo_wen = 1'h 1;
	6'h 18, 6'h 2f : ififo_wen = 1'h 1;		// squeeze final SHAKE128 data into ofifo0
	6'h 1b : ififo_wen = OFIFO_req_r1;
	6'h 1d, 6'h 1e, 6'h 1f : ififo_wen = 1'h 1;
	6'h 23 : ififo_wen = decode_req_r1;
	6'h 27, 6'h 28, 6'h 29 : ififo_wen = 1'h 1;
	default : ififo_wen = 1'h 0;
endcase
always @* case(state)
	6'h 11 : ififo_last = 1'h 1;
	6'h 1b : ififo_last = data_ctr == 6'h 22 ? 1'h 1 : 1'h 0;
	6'h 1f : ififo_last = 1'h 1;
	6'h 23 : ififo_last = data_ctr == 6'h 22 ? 1'h 1 : 1'h 0;
	6'h 29 : ififo_last = 1'h 1;
	default : ififo_last = 1'h 0;
endcase
always @(*) case(state)
	6'h 1b, 6'h 1d, 6'h 1e, 6'h 1f : ififo_absorb = 1'h 1;
	6'h 23, 6'h 27, 6'h 28, 6'h 29 : ififo_absorb = 1'h 1;
	default : ififo_absorb = absorb_ctr[1]|absorb_ctr[0];	
endcase
always @(posedge clk) case(state)
	6'h 0 : ififo_mode <= 2'h 0;
	6'h 2 : ififo_mode <= 2'h 3;
	6'h 3 : ififo_mode <= 2'h 1;
	6'h 4 : ififo_mode <= 2'h 0;
	6'h 5 : ififo_mode <= 2'h 3;
	6'h 7, 6'h 9 : ififo_mode <= 2'h 1;
	6'h 1b: ififo_mode <= 2'h 1;
	6'h 23: ififo_mode <= 2'h 1;
	default : ififo_mode <= ififo_mode;
endcase
always @(posedge clk) case(state)
	6'h 0 : ofifo_ena <= 1'h 0;
	6'h 11 : case(keccak_ctr)
		3'h 1 : ofifo_ena <= 1'h 1;
		3'h 5 : ofifo_ena <= 1'h 1;
		default : ofifo_ena <= 1'h 0;
	endcase
	6'h 19 : ofifo_ena <= 1'h 0;
	6'h 30 : ofifo_ena <= 1'h 0;
	default : ofifo_ena <= ofifo_ena;
endcase

always @(*) case({ofifo0_req_r1,ofifo1_req_r1,req_D0_r1,req_D1_r1})
	4'b 1000, 4'b 1010 : NTT_din = ofifo0_dout;
	4'b 0100 : NTT_din = ofifo1_dout;
	4'b 0010 : NTT_din = DFIFO0_dout;
	default : NTT_din = DFIFO1_dout;
endcase

always @(posedge clk) case(state)
	6'h 0 : DFIFO0_load_b <= 1'h 0;
	6'h 30 : DFIFO0_load_b <= req_D0 ? 1'h 1 : DFIFO0_load_b;
	default : DFIFO0_load_b <= DFIFO0_load_b;
endcase
assign DFIFO0_prog_thresh = {k[2]^k[0],k[2]^k[1]^k[0],7'h7f};
assign DFIFO0_full_eff = DFIFO0_prog_full & ~k[2] | DFIFO0_full & k[2];
always @(posedge clk) case(state)
	6'h 0 : DFIFO0_full_r1 <= 1'h 0;
	6'h 23 : DFIFO0_full_r1 <= DFIFO0_full_eff ? 1'h 1 : DFIFO0_full_r1;
	default : DFIFO0_full_r1 <= DFIFO0_full_r1;
endcase
assign DFIFO0_din = (DFIFO0_full_eff | DFIFO0_full_r1) & ~CCA_enc ? DFIFO0_dout : decode_dout;
assign DFIFO0_wen = (DFIFO0_full_eff | DFIFO0_full_r1) & ~CCA_enc ? req_D0_r1 : decode_valid;

always @(*) case(state)
	6'h 2c : begin
		DFIFO1_din = DFIFO1_dout;
		DFIFO1_wen = req_D1_r1;
	end
	default : begin
		DFIFO1_din = decode_dout;
		DFIFO1_wen = (DFIFO0_full_eff | DFIFO0_full_r1) & decode_valid & ~CCA_enc;
	end
endcase

assign decode_din = DFIFO0_load_b ? OFIFO_dout : IFIFO_dout;
assign decode_fifo_empty = DFIFO0_load_b ? OFIFO_empty : IFIFO_empty;
always @(posedge clk) case(state)
	4'h 0 : decode_sel <= 1'h 0;
	// 5'h 17 : decode_sel <= 1'h 0;
	6'h 23 : decode_sel <= data_rnd_ctr == u_rnd_end && data_ctr == u_ctr_end && decode_req ? 1'h 1 : decode_sel;
	default : decode_sel <= decode_sel;
endcase
assign encode_din = NTT_dout;
always @* case(state)
	6'h 0: encode_wen = 1'h 0;
	default : encode_wen = ~CCA_enc & NTT_valid;
endcase
always @(*) case(state)
	6'h 1a : OFIFO_din = {OFIFO_last,OFIFO_seed,rho[31:0]};
	default : OFIFO_din = OFIFO_req_r1 & ~CCA_enc & ~OFIFO_dout[32] ? OFIFO_dout : {OFIFO_last,OFIFO_seed,encode_dout};
endcase
always @(*) case(state)
	6'h 1a : OFIFO_wen = 1'h 1;
	6'h 1b : OFIFO_wen = OFIFO_req_r1 & ~CCA_enc & ~OFIFO_dout[32];
	default : OFIFO_wen = encode_valid & ~CCA_enc;
endcase
always @(*) begin
	if(DFIFO0_load_b)
		OFIFO_req = decode_req;
	else 
		OFIFO_req = ready_pk & req_pk & ~OFIFO_dout[33];
end
assign OFIFO_seed = state == 6'h 1a;
assign OFIFO_last = OFIFO_seed && rot_ctr == 3'h 7;
always @(posedge clk) begin
	if(state == 6'h 0)
		OFIFO_tx_done <= 1'h 0;
	else if(OFIFO_dout[33])
		OFIFO_tx_done <= 1'h 1;
	else
		OFIFO_tx_done <= OFIFO_tx_done;
end

always @(*) case({req_D0_r1&~ready_t,req_D1_r1&CCA_enc}) 
	2'b 10 : begin
		cmp0 = {DFIFO0_dout[21:20]&{k[2],k[2]},DFIFO0_dout[19:0]};
		cmp1 = NTT_dout;
	end
	2'b 01 : begin
		cmp0 = {DFIFO1_dout[9:8]&{k[2],k[2]},DFIFO1_dout[7:0]};
		cmp1 = NTT_dout;
	end
	default : begin
		cmp0 = {DFIFO0_dout[21:20]&{k[2],k[2]},DFIFO0_dout[19:0]};
		cmp1 = NTT_dout;
	end
endcase
always @(posedge clk) begin
	if(start)
		equal <= 1'h 1;
	else if(req_D0_r1&~ready_t | req_D1_r1&CCA_enc)
		equal <= cmp0 == cmp1 ? equal : 1'h 0;
	else
		equal <= equal;
end

always @(posedge clk) begin
	if(req_pk_r1 & ready_pk & ~OFIFO_empty_r1 & ~OFIFO_tx_done) begin
		dout <= OFIFO_dout;
		valid <= 1'h 1;
	end
	else if(state == 6'h 31) begin
		dout <= keccak_dout;
		valid <= 1'h 1;
	end
	else begin
		dout <= dout;
		valid <= 1'h 0;
	end
end

always @(posedge clk) begin
	ofifo0_req_r1 <= ofifo0_req;
	ofifo1_req_r1 <= ofifo1_req;
	req_D0_r1 <= req_D0;
	req_D1_r1 <= req_D1;
	decode_req_r1 <= decode_req;
	OFIFO_empty_r1 <= OFIFO_empty;
	OFIFO_req_r1 <= OFIFO_req;
	req_pk_r1 <= req_pk;
end

// Phase A Stage 0: NTT_core_Server_masked is a byte-identical-port copy of
// NTT_core_Server (no parameters). Subsequent Phase A stages add internal
// masking inside NTT_core_Server_masked.v.
NTT_core_Server_masked ntt(
.clk(clk),
.rst(rst),
.start(start),
.k(k),
.CCA_enc(CCA_enc),
.CCA_enc_start(CCA_enc_start),
.ready_c(ready_c),
.ready_t(ready_t),
.fifo0_empty(ofifo0_empty),
.fifo1_empty(ofifo1_empty),
.fifo1_full(ofifo1_full),
.DFIFO0_full_eff(DFIFO0_full_eff),
.fifo0_req(ofifo0_req),
.fifo1_req_r9(ofifo1_req),
.ena_sft(ena_sft),
.m_bits({m[129:128],m[1:0]}),
.req_D0(req_D0),
.req_D1(req_D1),
.din(NTT_din),
.m_ena(m_ena),
.m_dec(m_dec),
.finish(NTT_finish),
.valid(NTT_valid),
.dout(NTT_dout)
);

// DIVERGENCE COMPARATOR: shadow unmasked NTT wired with same inputs.
// All outputs go to _shadow signals (dead-ended). xsim will run both in
// parallel; we compare internal wdata_RAM via hierarchical references in the
// always block below.
wire        shadow_fifo0_req, shadow_fifo1_req_r9;
wire        shadow_req_D0, shadow_req_D1;
wire        shadow_ena_sft, shadow_ready_t;
wire        shadow_m_ena;
wire [1:0]  shadow_m_dec;
wire        shadow_valid, shadow_finish;
wire [23:0] shadow_dout;
NTT_core_Server ntt_shadow(
.clk(clk),
.rst(rst),
.start(start),
.k(k),
.CCA_enc(CCA_enc),
.CCA_enc_start(CCA_enc_start),
.ready_c(ready_c),
.ready_t(shadow_ready_t),
.fifo0_empty(ofifo0_empty),
.fifo1_empty(ofifo1_empty),
.fifo1_full(ofifo1_full),
.DFIFO0_full_eff(DFIFO0_full_eff),
.fifo0_req(shadow_fifo0_req),
.fifo1_req_r9(shadow_fifo1_req_r9),
.ena_sft(shadow_ena_sft),
.m_bits({m[129:128],m[1:0]}),
.req_D0(shadow_req_D0),
.req_D1(shadow_req_D1),
.din(NTT_din),
.m_ena(shadow_m_ena),
.m_dec(shadow_m_dec),
.finish(shadow_finish),
.valid(shadow_valid),
.dout(shadow_dout)
);

// Compare every wen_RAM0 / wen_RAM1 cycle. The two NTTs have identical FSM
// (same module structure), so wen_RAM* should fire on the same cycles. wdata
// should match cycle-by-cycle when mask=0 reduces masked to unmasked.
integer cmp_w0_cnt = 0;
integer cmp_w0_diff = 0;
integer cmp_w1_diff = 0;
integer cmp_w2_diff = 0;
integer cmp_m_dec_diff = 0;
always @(posedge clk) begin
    if (ntt.wen_RAM0 !== ntt_shadow.wen_RAM0) begin
        if (cmp_w0_cnt < 5)
            $display("[CMP_WEN0_MISMATCH t=%0t] masked.wen=%b shadow.wen=%b masked.state=%h shadow.state=%h",
                $time, ntt.wen_RAM0, ntt_shadow.wen_RAM0, ntt.state, ntt_shadow.state);
        cmp_w0_cnt <= cmp_w0_cnt + 1;
    end
    if (ntt.wen_RAM0 && ntt_shadow.wen_RAM0 && ntt.wdata_RAM0 !== ntt_shadow.wdata_RAM0) begin
        if (cmp_w0_diff < 8)
            $display("[CMP_WDATA0_DIFF t=%0t] masked.waddr=%h masked=%h shadow.waddr=%h shadow=%h state=%h state_r3=%h state_r13=%h",
                $time, ntt.waddr_RAM0, ntt.wdata_RAM0, ntt_shadow.waddr_RAM0, ntt_shadow.wdata_RAM0, ntt.state, ntt.state_r3, ntt.state_r13);
        cmp_w0_diff <= cmp_w0_diff + 1;
    end
    if (ntt.wen_RAM1 && ntt_shadow.wen_RAM1 && ntt.wdata_RAM1 !== ntt_shadow.wdata_RAM1) begin
        if (cmp_w1_diff < 8)
            $display("[CMP_WDATA1_DIFF t=%0t] masked.waddr=%h masked=%h shadow.waddr=%h shadow=%h state=%h state_r3=%h state_r13=%h",
                $time, ntt.waddr_RAM0, ntt.wdata_RAM1, ntt_shadow.waddr_RAM0, ntt_shadow.wdata_RAM1, ntt.state, ntt.state_r3, ntt.state_r13);
        cmp_w1_diff <= cmp_w1_diff + 1;
    end
    if ((ntt.wen_RAM2 || ntt.wen_RAM3) && ntt.wdata_RAM0 !== ntt_shadow.wdata_RAM0) begin
        if (cmp_w2_diff < 8)
            $display("[CMP_W23_DIFF t=%0t] waddr=%h masked.wdata0=%h shadow.wdata0=%h wen_R2=%b wen_R3=%b state=%h state_r13=%h",
                $time, ntt.waddr_RAM1, ntt.wdata_RAM0, ntt_shadow.wdata_RAM0, ntt.wen_RAM2, ntt.wen_RAM3, ntt.state, ntt.state_r13);
        cmp_w2_diff <= cmp_w2_diff + 1;
    end
    if (ntt.m_ena && ntt.m_dec !== ntt_shadow.m_dec) begin
        if (cmp_m_dec_diff < 6)
            $display("[CMP_MDEC_DIFF t=%0t] m.m_dec=%h s.m_dec=%h | m.quo0_r1=%h quo1_r1=%h | s.quo0_r1=%h quo1_r1=%h | m.in0=%h in1=%h tw=%h | s.in0=%h in1=%h tw=%h",
                $time,
                ntt.m_dec, ntt_shadow.m_dec,
                ntt.quo0_butt_r1, ntt.quo1_butt_r1,
                ntt_shadow.quo0_butt_r1, ntt_shadow.quo1_butt_r1,
                ntt.in0_butt, ntt.in1_butt, ntt.tw_butt,
                ntt_shadow.in0_butt, ntt_shadow.in1_butt, ntt_shadow.tw_butt);
        cmp_m_dec_diff <= cmp_m_dec_diff + 1;
    end
end

// =============================================================================
// EARLIEST-DIVERGENCE TRACE: capture the FIRST cycle where any key signal
// differs between masked and shadow NTT_core, and dump full context so we can
// trace the disparity back to its source.
//
// Hypotheses to confirm/refute:
//  H1: External inputs (din, ena_sft, rst, clk, etc.) are identical at every
//      cycle. The two NTT_core instances are driven identically.
//  H2: Internal state (state, ctr_*, raddr_*) diverges at some cycle T_div.
//  H3: Raw sampler outputs (b0..b3) diverge before samp_q does.
//  H4: mask_polyfifo's parallel keccak somehow perturbs the masked NTT's
//      sampling state (would imply shared resource between mask gen and samp).
// =============================================================================
reg first_div_logged = 1'b0;
integer early_probe_cnt = 0;
always @(posedge clk) begin
    // (A) External-input fairness check: din/m_bits/CCA_enc/start should be
    //     identical at every cycle (both NTTs see the same wires). Print first
    //     5 cycles after start to confirm.
    if (early_probe_cnt < 5) begin
        $display("[EARLY t=%0t #%0d] start=%b rst=%b din=%h m.state=%h s.state=%h m.rst_chain=...",
            $time, early_probe_cnt, start, rst, NTT_din, ntt.state, ntt_shadow.state);
        early_probe_cnt <= early_probe_cnt + 1;
    end

    // (B) FSM state divergence: state, state_r1/r2/r3 should be identical at
    //     every cycle. If they diverge, the FSMs are not in lockstep (could be
    //     reset asymmetry or X-prop).
    if ((ntt.state !== ntt_shadow.state ||
         ntt.state_r1 !== ntt_shadow.state_r1 ||
         ntt.state_r2 !== ntt_shadow.state_r2 ||
         ntt.state_r3 !== ntt_shadow.state_r3) && !first_div_logged) begin
        $display("[FIRST_DIV_FSM t=%0t] m.state=%h s.state=%h m.r1=%h s.r1=%h m.r2=%h s.r2=%h m.r3=%h s.r3=%h",
            $time, ntt.state, ntt_shadow.state, ntt.state_r1, ntt_shadow.state_r1,
            ntt.state_r2, ntt_shadow.state_r2, ntt.state_r3, ntt_shadow.state_r3);
        first_div_logged <= 1'b1;
    end

    // (C) Raw sampler signals: b0..b3 and samp0..samp3 are computed
    //     combinationally from internal sampler state. If they diverge while
    //     external inputs match, the sampler internal state differs (H4).
    if ((ntt.b0 !== ntt_shadow.b0 ||
         ntt.b1 !== ntt_shadow.b1 ||
         ntt.b2 !== ntt_shadow.b2 ||
         ntt.b3 !== ntt_shadow.b3) && cmp_w0_diff == 0) begin
        // Only print before the first wdata divergence to find pre-image cause
        if (early_probe_cnt > 5 && early_probe_cnt < 25) begin
            $display("[B_DIFF t=%0t] m.b={%h,%h,%h,%h} s.b={%h,%h,%h,%h} m.state=%h",
                $time, ntt.b0, ntt.b1, ntt.b2, ntt.b3,
                ntt_shadow.b0, ntt_shadow.b1, ntt_shadow.b2, ntt_shadow.b3, ntt.state);
        end
    end

    // (D) samp_q (registered sampler values that drive wdata_RAM0/1 at the
    //     sampling state). If samp_q differs before samp_masked is computed,
    //     the divergence is upstream of mask injection.
    if ((ntt.samp0_q !== ntt_shadow.samp0_q ||
         ntt.samp1_q !== ntt_shadow.samp1_q ||
         ntt.samp2_q !== ntt_shadow.samp2_q ||
         ntt.samp3_q !== ntt_shadow.samp3_q)) begin
        if (cmp_w0_diff < 3) // limit to first few
            $display("[SAMP_Q_DIFF t=%0t] m.samp_q={%h,%h,%h,%h} s.samp_q={%h,%h,%h,%h} state=%h",
                $time, ntt.samp0_q, ntt.samp1_q, ntt.samp2_q, ntt.samp3_q,
                ntt_shadow.samp0_q, ntt_shadow.samp1_q, ntt_shadow.samp2_q, ntt_shadow.samp3_q,
                ntt.state);
    end

    // (E) Share-invariant check: at every wen_RAM0 cycle where both designs
    //     write, compute (masked.wdata - masked.wdata_m) mod Q per 12-bit half,
    //     compare against shadow's wdata. If they differ, the share invariant
    //     has broken — log the FIRST cycle this happens.
end

reg invariant_broken = 1'b0;
integer inv_diff_cnt = 0;
// Per-half diff: (masked - mask) mod Q
wire [12:0] inv_diff_lo = {1'b0, ntt.wdata_RAM0[11:0]} + 13'h d01 - {1'b0, ntt.wdata_RAM0_m[11:0]};
wire [11:0] inv_recovered_lo = (inv_diff_lo >= 13'h d01) ? inv_diff_lo[11:0] - 12'h d01 : inv_diff_lo[11:0];
wire [12:0] inv_diff_hi = {1'b0, ntt.wdata_RAM0[23:12]} + 13'h d01 - {1'b0, ntt.wdata_RAM0_m[23:12]};
wire [11:0] inv_recovered_hi = (inv_diff_hi >= 13'h d01) ? inv_diff_hi[11:0] - 12'h d01 : inv_diff_hi[11:0];
wire [23:0] inv_recovered = {inv_recovered_hi, inv_recovered_lo};

always @(posedge clk) begin
    if (ntt.wen_RAM0 && ntt_shadow.wen_RAM0 && inv_recovered !== ntt_shadow.wdata_RAM0) begin
        if (inv_diff_cnt < 8)
            $display("[INV_BROKEN t=%0t state_r13=%h] m.wdata=%h m.wdata_m=%h recovered=%h s.wdata=%h | m.dmux={%h,%h} m.dmux_m={%h,%h} s.dmux={%h,%h} | m.out0_butt={%h,%h} m.out0_butt_m={%h,%h} m.rdata_acc_r8=%h m.rdata_acc_r8_m=%h",
                $time, ntt.state_r13, ntt.wdata_RAM0, ntt.wdata_RAM0_m, inv_recovered, ntt_shadow.wdata_RAM0,
                ntt.data_mux1, ntt.data_mux0, ntt.data_mux1_m, ntt.data_mux0_m,
                ntt_shadow.data_mux1, ntt_shadow.data_mux0,
                ntt.out0_butt[23:12], ntt.out0_butt[11:0],
                ntt.out0_butt_m[23:12], ntt.out0_butt_m[11:0],
                ntt.rdata_acc_r8, ntt.rdata_acc_r8_m);
        if (!invariant_broken) begin
            $display("[INV_FIRST_BREAK t=%0t state_r13=%h state_r3=%h state=%h]",
                $time, ntt.state_r13, ntt.state_r3, ntt.state);
            invariant_broken <= 1'b1;
        end
        inv_diff_cnt <= inv_diff_cnt + 1;
    end
end
hash_core_Server hash(
.clk(clk),
.rst(rst),
.keccak_init(keccak_init),
.keccak_squeeze(keccak_squeeze),
.extend(extend),
.patt_bit(patt_bit),
.eta3_bit(eta3_bit),
.absorb_ctr_r1(absorb_ctr_r1),
.keccak_ctr(keccak_ctr),
.squeeze_ctr(squeeze_ctr),
.ififo_wen(ififo_wen),
.ififo_din(ififo_din),
.ififo_absorb(ififo_absorb),
.ififo_mode(ififo_mode),
.ififo_last(ififo_last),
.ififo_empty(ififo_empty),
.keccak_dout(keccak_dout),
.ofifo_ena(ofifo_ena),
.ofifo0_req(ofifo0_req),
.ofifo1_req(ofifo1_req),
.ofifo0_dout(ofifo0_dout),
.ofifo1_dout(ofifo1_dout),
.ofifo0_full(ofifo0_full),
.ofifo1_full(ofifo1_full),
.ofifo0_empty(ofifo0_empty),
.ofifo1_empty(ofifo1_empty),
.keccak_ready(keccak_ready),
.fifo_GENA_ctr(fifo_GENA_ctr)
);
decode_Server decode(.clk(clk),.rst(rst),.din(decode_din),.fifo_empty(decode_fifo_empty),.CCA(CCA_enc),.sel(decode_sel),.k(k),.dout(decode_dout),.req(decode_req),.valid(decode_valid));
encode_Server encode(.clk(clk),.rst(rst),.din(encode_din),.wen(encode_wen),.valid(encode_valid),.dout(encode_dout));
pattern pattern(.k(k),.sel(CCA_enc),.patt(patt),.eta3(eta3),.endp(endp));
fifo_generator_2 IFIFO(.clk(clk),.srst(rst),.din(din),.wr_en(wen),.rd_en(decode_req),.dout(IFIFO_dout),.full(IFIFO_full),.empty(IFIFO_empty));
fifo_generator_3 OFIFO(.clk(clk),.srst(rst),.din(OFIFO_din),.wr_en(OFIFO_wen),.rd_en(OFIFO_req),.dout(OFIFO_dout),.full(OFIFO_full),.empty(OFIFO_empty));
fifo_generator_4 DFIFO0(.clk(clk),.srst(rst),.din(DFIFO0_din),.wr_en(DFIFO0_wen),.rd_en(req_D0),.dout(DFIFO0_dout),.full(DFIFO0_full),.empty(DFIFO0_empty),.prog_full_thresh(DFIFO0_prog_thresh),.prog_full(DFIFO0_prog_full));
fifo_generator_5 DFIFO1(.clk(clk),.srst(rst),.din(DFIFO1_din),.wr_en(DFIFO1_wen),.rd_en(req_D1),.dout(DFIFO1_dout),.full(DFIFO1_full),.empty(DFIFO1_empty));

integer ks_wen_cnt = 0;
integer ks_dec_cnt = 0;
integer ks_d0_cnt  = 0;
integer ks_d1_cnt  = 0;
integer ks_d1w_cnt = 0;
always @(posedge clk) begin
    if (DFIFO1_wen) begin
        ks_d1w_cnt <= ks_d1w_cnt + 1;
        if (ks_d1w_cnt < 30 || ks_d1w_cnt % 50 == 0)
            $display("[KS_D1WR t=%0t #%0d] DFIFO1_din=%h dec_sel=%b dec_out=%h state=%h data_ctr=%h u_ctr_end=%h data_rnd_ctr=%h u_rnd_end=%h", $time, ks_d1w_cnt, DFIFO1_din, decode_sel, decode_dout, state, data_ctr, u_ctr_end, data_rnd_ctr, u_rnd_end);
    end
end
integer dec_sel_ev = 0;
reg dec_sel_prev = 1'b0;
integer s23_cnt = 0;
always @(posedge clk) begin
    if (decode_sel != dec_sel_prev) begin
        $display("[KS_DECSEL t=%0t #%0d] decode_sel: %b -> %b  state=%h data_ctr=%h u_ctr_end=%h", $time, dec_sel_ev, dec_sel_prev, decode_sel, state, data_ctr, u_ctr_end);
        dec_sel_ev <= dec_sel_ev + 1;
    end
    dec_sel_prev <= decode_sel;
    // Snapshot every 100th cycle in state 0x23, plus first 5
    if (state == 6'h 23) begin
        s23_cnt <= s23_cnt + 1;
        if (s23_cnt < 5 || s23_cnt % 100 == 0)
            $display("[KS_S23 t=%0t #%0d] decode_din=%h decode_dout=%h IFIFO_empty=%b IFIFO_full=%b DFIFO0_load_b=%b decode_req=%b decode_valid=%b dec_sel=%b", $time, s23_cnt, decode_din, decode_dout, IFIFO_empty, IFIFO_full, DFIFO0_load_b, decode_req, decode_valid, decode_sel);
    end
end
// Sparse sampling: print first 5 events, then every 50th, plus all events inside the
// 240-244 us window (where NTT's c_v decomp loop runs and sees din=0).
always @(posedge clk) begin
    if (wen) begin
        ks_wen_cnt <= ks_wen_cnt + 1;
        if (ks_wen_cnt < 5 || ks_wen_cnt % 50 == 0 || ($time >= 240000000 && $time <= 244000000))
            $display("[KS_RX t=%0t #%0d] din=%h IFIFO_full=%b IFIFO_empty=%b", $time, ks_wen_cnt, din, IFIFO_full, IFIFO_empty);
    end
    if (decode_valid) begin
        ks_dec_cnt <= ks_dec_cnt + 1;
        if (ks_dec_cnt < 5 || ks_dec_cnt % 50 == 0 || ($time >= 240000000 && $time <= 244000000))
            $display("[KS_DEC t=%0t #%0d] decode_dout=%h decode_din=%h IFIFO_empty=%b DFIFO0_full=%b DFIFO0_empty=%b DFIFO1_full=%b DFIFO1_empty=%b", $time, ks_dec_cnt, decode_dout, decode_din, IFIFO_empty, DFIFO0_full, DFIFO0_empty, DFIFO1_full, DFIFO1_empty);
    end
    if (req_D0) begin
        ks_d0_cnt <= ks_d0_cnt + 1;
        if (ks_d0_cnt < 5 || ks_d0_cnt % 50 == 0 || ($time >= 240000000 && $time <= 244000000))
            $display("[KS_PULL0 t=%0t #%0d] DFIFO0_dout=%h DFIFO0_empty=%b NTT_din=%h sel=%b%b%b%b", $time, ks_d0_cnt, DFIFO0_dout, DFIFO0_empty, NTT_din, ofifo0_req_r1, ofifo1_req_r1, req_D0_r1, req_D1_r1);
    end
    if (req_D1) begin
        ks_d1_cnt <= ks_d1_cnt + 1;
        if (ks_d1_cnt < 5 || ks_d1_cnt % 50 == 0 || ($time >= 240000000 && $time <= 244000000))
            $display("[KS_PULL1 t=%0t #%0d] DFIFO1_dout=%h DFIFO1_empty=%b NTT_din=%h sel=%b%b%b%b", $time, ks_d1_cnt, DFIFO1_dout, DFIFO1_empty, NTT_din, ofifo0_req_r1, ofifo1_req_r1, req_D0_r1, req_D1_r1);
    end
end

endmodule
