// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:47:32 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/dist_mem_gen_7/dist_mem_gen_7_sim_netlist.v
// Design      : dist_mem_gen_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_7,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_7
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
  dist_mem_gen_7_dist_mem_gen_v8_0_17 U0
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
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
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
