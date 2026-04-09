// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:56 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_7_sim_netlist.v
// Design      : dist_mem_gen_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_7,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    clk,
    qspo);
  input [6:0]a;
  input clk;
  output [11:0]qspo;

  wire [6:0]a;
  wire clk;
  wire [11:0]qspo;
  wire [11:0]NLW_U0_dpo_UNCONNECTED;
  wire [11:0]NLW_U0_qdpo_UNCONNECTED;
  wire [11:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "7" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "128" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "dist_mem_gen_7.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_17 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[11:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[11:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[11:0]),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ucFC30e5vmQ8oT7umG3Y1D8Yf5e1cD8sjdBGUk30m4Msp+M3x9Jfhf5iTAerlLiDyp3QEkfqov3Y
YJq0CR7Sz3GY+nY+5RiwWa+uxdDUPnkBRwT4gTwFCNVGDXwwS5DGL6vZnCiOeDm+kJRjJa6/7uZa
k0A9XolySvAgOo3j1yQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S+12WmwsTd8fioQZb2sFiLm1ThDeamghqcDKa1U/ehDWrSFOkixn/eg/POIy7VE5v2AdNLIy1s6r
hNWBUfGndqx9I8caB0ZpReTzabt5P5Ziaqv3ZtN+7P4YTwy3tRuH2lYlRmtzgZ4PtnddCUcNu+tx
8uODqSimbZVxO6YbkxVeA27NKrn5ErmD4xAuEGT0UPPIFRA3YUzIsZitNmkgCH9C7GuPnHiPqEvf
tknGzsX2eVLzN2CDDFE1URrTHTc71nECncAZ5eHNuQrdJUrACdcYOTVUvAHX9p26Nh6tymz292To
2E5Mhefra3H93CByMSickNWOsFY4yHS6qKlWyA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OGEvdwKFMPAWmnpx1WZPCcSQQ2qQrh1fZuiLzgb88mhp8angXVmgXc3YhiqAtKMqKBg5NtgrWwHA
rpWNudvOEM/INlt4QOpNI3Ppikq80Qlipe1t3/sJ9G+2kkJ2LY0DpOxP66odtxMk1IT59oz/6NYC
Uo11QKeec5anOI0rog8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y6i1ZuSETAM/aPTjnnuScDD/iJVrSETtQzMkOG/DuHCTT8e474a0cqw4N1b7r+wVyy564aT2zcvi
h5wwPIc22zvXRHDkNSb4H1RikdghWo0+agXqiMgBo7E3QSpEE+WTbLwuxquMPy9+MzfWhy9BoFB6
3U4Kna2Qio/eOIuHccRwgrFl7JA8Bgckoy5TO4yim071FDvMfsGlT78Ve/Y3OnCBjISFhLAMdXJy
gLRUSsm8EWukc0fMjEabyyrmfopwHmM5gQLNV73erxaAGs5deaMwy2wFczRmT2mjqZtLa+hdDKgP
NPMqrPU/Pblsk+gC1nbrPcWnYHMgPGUekhhdPg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
znHYjd0VJwRVyT8hEMYYFlL4e6XM8IN4b+IdEpWMEgH7/VgvYUGhq/HU/EXZmcv2K+U9rgBt5l7+
rEgiHyXflmVTYYDOsU9MQR2/iBsCMNQ3KQkG7OvAbpIyb3F0RyNwO/tQB1EzEWLSvhJIvk9vC7MT
uVTov/djK56ZUTocA8v4ZYiJI+4iQ7rkGE+z/zcMhABO0YGw6SrYQfujml6J7G8H3AsbwULQbgld
EbltU4BsDpB4ZgYkkHIkQ+uBiBLexnNtwXe9ELODzKZQEkDhyB9JTRtC6Q7Qy5nDKUsOzKT1ebeO
zz3qrnaNE5IvfIOvkArLbwfeJ41HA6flqo/+4Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iCPGk8mJx8Dx2yHya1ZtUq6Fxx4fyMZ8jj3CDSrCKl1OIbOckEyqTxa/d2eodlRYyk1R3HtsYFca
fHdImbFibMWe9HKhpGCaBo4gB7SJGKis6YIJ5dJV/138lOGwI0/KHRKmfYMBQIgE3Ph4ScV/c/cI
vOu34MFDjS07rV83GKGYs4/R7KrEsoM6n9h+m33A1I6bVxzHQa/1AESsxh11yKRqI9GxYa6rm6DW
7icE60BEPiPxg2gqdBdfaWA8R+m6cgDO4mzbBOgr6h1YntqQ+WQoMVvs4hIBO5Af9Lncmv4jRIWQ
NcpdlzoOBlbfhGRlU7CM+fwczWWZ29W2NvGPbw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nR00e06yXtTXePTzpCXLZ6h6cpQKxaytl+tmUHYMrYKI54i9FJbkvmPZo8QQBINyqhV0rYggxiC6
ZRIMpSvGIddhduMoJMncbT9T0pQwgZ3oI7K8tx4lysPp0banhV47XhR8yC0IpvI2zZQ5h+WR5Xzg
6weS/8Cbr3Drp7TbM2TEKUoCcPW/WmqJ7hdfHQR2Y2IM2G0Xt/tEOYQ7/sGIyX5/flLfKu1yP8/M
Zg68tboAarqnCYiHtosJYwOcBYnXbCMXuSE1VP+7XG5h0lZLER1m85pi5CPpnu52sXHTPRzYopNX
meyWo83j5hqMejdk9bRllOLgjs9DmRpOX4bppw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
PNSkIJ852qBwC1XfxbU42ajBwUi5AfdUVcRVXY4zOaGqSRkM76JtRXf8GSAiKv6+XCxwdYYsw0lo
gL5kS7ybYNmzoMeqahTCmviCLHzF1VZpoqzVudzgsg58nqtlM+KRtP8xkYqYj/zfBOX8CHJLKK1o
A7HEvX4310AHmSHCiyn9142+egHlVPDqcRwdP2MbGKM0D77irnXGgcArbuLi4Ii1qtnFhTdJ9K/X
8eQtexFAF61I1neOOIlBDzXI7uRzK1MNPmBsad/mqz0KBsEzmjlTrHI4b4C8RrZ1B6Hx6nLu3sUU
RPed/B84EW6PFPPzYbqwOPyVOTTgq3YYhZdiVR0I4TMxSFxdm35PB4gFUKpPETh3oM/oyjSjnZY3
VgoU28LdHArC6fKCvHSQlA+oGNSDMhjw/yNfybSvHjN3bfyUuIwZJ4cBES+bRl53otFiHqotzcMw
upsJfXaZBhZYpQIztnTLlXj0DBBOGpKl3kRgRBDcOt7VdCOjFnZVaM22

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BqVxcaoDWqd+XbWvX4s/vXBF2RJH0EXUJifZcoTrOxrlDu+c5Q5ectL4zGt0j084tLGyfOwDXzEG
1pfyuKUvf4p907Wr+f8yuC6YbnzW3PdsSpR0AHb9Bd9EYKdScy1i+YD2d8OI5Rkgn9Sak5xAvbxZ
SVcRMQYbwOVC7DJXfYZN26acMboR3HGEhTVkIcZHsjteI79SO2qttsbrBTchzax5jcSgUtFI/DZM
yiWjLLVP+KXXvpV7FssH0er13NIH+BZHGcBhLH6rlAlcgeNEPVWhVA0bIuTQULJ1WbOaG7MbmWYZ
wmyTNhWycUIz5BXbLG2XkqBy1wQPv/mYf4MwXA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12352)
`pragma protect data_block
+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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
