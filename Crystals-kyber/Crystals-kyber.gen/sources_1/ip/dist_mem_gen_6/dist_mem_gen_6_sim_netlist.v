// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:47:32 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/dist_mem_gen_6/dist_mem_gen_6_sim_netlist.v
// Design      : dist_mem_gen_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_6,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_6
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
  (* c_mem_init_file = "dist_mem_gen_6.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_6_dist_mem_gen_v8_0_17 U0
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
rsJ5p7SRvDWDYTCQEvIeDMAXBq/RhA==
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
