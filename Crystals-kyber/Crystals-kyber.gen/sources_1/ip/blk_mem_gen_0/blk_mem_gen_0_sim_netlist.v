// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:47:36 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [23:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [23:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [23:0]dina;
  wire [23:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.35015 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[23:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20336)
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
