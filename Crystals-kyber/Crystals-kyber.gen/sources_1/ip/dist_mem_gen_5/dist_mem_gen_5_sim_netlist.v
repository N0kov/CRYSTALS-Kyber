// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:47:35 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/dist_mem_gen_5/dist_mem_gen_5_sim_netlist.v
// Design      : dist_mem_gen_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_5,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_5
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
  (* c_mem_init_file = "dist_mem_gen_5.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_5_dist_mem_gen_v8_0_17 U0
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
Aa/aae57WrHUZhFpk9YMYhQDICGzuw==
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
