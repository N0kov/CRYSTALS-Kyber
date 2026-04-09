// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:54 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/dist_mem_gen_6/dist_mem_gen_6_sim_netlist.v
// Design      : dist_mem_gen_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
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
IwO3swj95Vc3u/DT9JPBnYtJkmfOaA==
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
