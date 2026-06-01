// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri May 29 14:06:22 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_1
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

  (* C_DEFAULT_DATA = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
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
  (* c_depth = "128" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_1dist_mem_gen_v8_0_17 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12448)
`pragma protect data_block
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
f85Cw76tbpDkohmgdzhFiPaCpoTceQ==
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
