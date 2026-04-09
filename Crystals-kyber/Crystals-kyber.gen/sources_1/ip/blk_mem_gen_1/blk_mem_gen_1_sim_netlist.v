// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:13 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [47:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [47:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire [47:0]dina;
  wire [47:0]doutb;
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
  wire [47:0]NLW_U0_douta_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [47:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.4029 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "48" *) 
  (* C_READ_WIDTH_B = "48" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "48" *) 
  (* C_WRITE_WIDTH_B = "48" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[47:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[47:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31488)
`pragma protect data_block
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
dWlYxGi5wg+Xm5COMDX3bgSG46Bdlbc0
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
