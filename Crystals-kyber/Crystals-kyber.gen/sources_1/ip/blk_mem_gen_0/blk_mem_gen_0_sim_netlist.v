// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:11 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
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
