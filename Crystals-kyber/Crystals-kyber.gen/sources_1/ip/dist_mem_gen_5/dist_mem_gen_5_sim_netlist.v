// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:47 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/dist_mem_gen_5/dist_mem_gen_5_sim_netlist.v
// Design      : dist_mem_gen_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
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
v148Qgc09yk92sfvIgN+otj+GuZ7xw==
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
