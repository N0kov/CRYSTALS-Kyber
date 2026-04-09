// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:12 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31520)
`pragma protect data_block
v7HNrr8nIEPjvsTWrPuNifXZnLj3aVloJIJaXsA5cvAfa5UAXDYOfmFufoWa2eO3cX5sV9sUXLmX
g14eovGyQ67C9VjS+z2XXkvBVngpYn3AIhmuslkhY0mtapAWCgxrc9GBaGhP3YX+G/y6+doiNfGZ
cFpRy/PAz8T0jdpaSHtQuB84PwiTc0DP+UyS0gpnkQl+699YoL2VxreibtZIkF7324ej5luQZK4M
JVseRVAoKXeHftJTk9MfMDtv0txpAoKfoXj6InLbX0ExoFCrpCFqxmtaZNLAjEvyMcnx4L67WX0N
3Kmu9+bj/BPK/ArythKS8Q2rhb/ot6Rh8enYzIatpRjN3aNmZm1VcSRlpBttdJ1lMPZDqJqVRVwh
rpJlNaSaFQoIpgpR1o47DPyXIO9jxdjt8xQbm3ACAopRz2DssTN+e1xBj5VooZkp/Kt4sS/KgLIW
celvC+D+fPSeBh052zZ5yqImyxmmNZz7N7/pof9vYHQorinT0NRWJ4/krywgv1ri1jULi80q9TJE
7g4Ss4p99c/SSiuO8546fSNKlqmmcpKvvdU4VR8Ez6QUCTjkE59/LlO2XZPXbVroYqcJ9NvEIedm
hDV6VlHCSGidI79+Yf9kmGz1Q6hZzrbPnc9KnJ84L7vIDtxaXFFXZEHMK8gDY5+qa460dF0JVHTj
/t1De8PFzSzWJCYr0JclRNj1EKdS4mM1u+9wfxPyapd2109gWaFcGgY7STxnI4ZKBjcb+IStgRCi
P4CmFx6w/nvIAJayjjqsERnMWvQp/vIi8K4cDt6Pcwm4qlymXH0Ws3tv9tsw8royYYhfpDS6rPSy
HL5kY+VehHSgmPcHEcXjCwfY0keUumB4W6M2KomdGLdxWdNhtNo8y/ZexaM0mc8AlrZ7A4IYGw/Z
LC8jiHBjXsgAXdpkNvy/51HhZm9/JwHeKLZa5OpIXwkRxkyC2tBoT34WDWU67VMt3QINTLmmxVrT
cFbge0UuwURDdM5X3hfmIXWY6rif3knWOY0QS47zpvzDmxq8AdxeaxouNmPIgg0sZgQuLV2RciAh
CniS+Cg+u08QYFODe7qdDJbJF1QaWp3X3mQs+8hkAU60gVUrrSfEujWbyfOojD4wthTOvU4n+MHw
Fv09BmL0hjP5H0mXaTcG7vUrDoRqoEAFcTQaAM3uKjnlDe9uJWTjNJDTFM0I2ZzHQXImC0WBK2S0
zLgQU5KKEbcvCpJDTsZycypDIL74b2Lg+MB4HQ/e/NXWL3AB4qWwT1cnajVwuR2mu8yH3tN8JpHS
dZGAcNCmoA+gkUAhaUbaf/mEyiI+yFElMYyal5Ox1aPBfJNzrAyaxIWo5Vv6dcUvgmUJyG3opD1S
dD5dMgWbACet85bQE6StJx+wV7tpMuIegkUh4AQLZWU4nZG1GXTFYmuIwIrsn2KzVakXlfcviGQm
19LE5AX8m4bM44cveDUjEPh/wyBnddCCpFZpE6hbicpH9fjuDWPUAEIb0wcsz8Rs96IIpFl0tCBD
YKP0ay7lpCps8lNEFCj4wU8Bj/kzEQZa76S0T5yC1dZNJ50hL0NIye5RfsseKPzziL+k6Tm/MTX1
2SHNqlSSttOmB3P/VSMLizFgqDMv6UUa0H8kadvyTwx3ocYLEvEkV9vBOJFJwcI4Ln3tzO0p6ZFl
pH/bLRgDT7cQ3Xz8PJEFKxi/uG/2g1QWTrcq+6OFdIIA66zdvBl0tDv40sfNb/RAXEXfbahEhofa
D49EEeYoYgFmWlAVoJQERPZD+SwIpkZHsNIdWARGgpGsG4BTzNsutkvra66xGUjAXv7YlJvQLO5f
Uhafb4a+NqnXKW8LPiEhEbEUE5JlpF8OIadNaACm4S26hA63av3Hbr7I4qbAN6awWAfWCSomAfEP
NPymtd/BDzo9PjRPN0DLCcuqnb5k4nnEDUmkuTEGS8xbRvXouFkGcnb14Cl9+RhGYG0uKDR1Nb8m
a5FmOCfx9nmuk6Cl+XsyZW6uuqkHpc2mNpxjubEJf8QFVFZVZ2/P0xf52S/fmifzCTqCBf3zyxgQ
D9y7jBoPwDnxQbxhx4FdbnuDwnRDVR5yBHwhvF3/9FrZz5+OSOR2uVHgreYLkhwcvutuJjLpBO6K
iUQY9+auKhJnwu2NZF1BhDq65HbedFsL6rQh4WqPL7xheQON2eHs0P/Sw7y1uF0z0UZPW2N35Y9V
VwGuc+4sN8Iw/irPbHFSHyD5xjTnAnQg7mZ6o6d3gitAfKZrzMArCdbmtNz6vA1OkH/wq3AvFKh5
48GD6Jm3X7o3DjSJSB5ckSq0yS+fWQQtnVSyh+SPsdlzHUmtwzbtMVUOZMu9SHd7xUy42qVAOGBB
NzDw9q53YgTCQJ7psV52xk5NgEFfy1nTRB9GFB7h2NJe0w+m3wKAasFx0ZH0Ym8PXPYjWXEYDIWy
LbK+eFXZdFfHsbIjBCSIq3LIwlq/2DXzWsJNYES9gRcva6TdR9TcJLXEVqaeBaVI5RFShgWQmoK5
YVVklJxe4rRhWp7GRf9+DVf3Ihn6R76Q4yZiuaneWWIhEYup+6dpvIzA+nc5AI/Dpo6Fa13cPRLo
nfpgeFGQTnPRgFK7AYNme3DNbKi8Dtbd3jCHrEAksXsFqCNO56LrGmCEJOz3lpkBJ0UWN+ZB1YjG
xtyRdOQGYQDAZhpwWooZ6mEXX5tPbyyEVrnmrgjjyQzQpgqReUdpRYIZdDRqEk78b3mLgdBdypfp
QIm0P3rq5Wgm42nzfjqSAXaL7ypIJmfScF0dDTZM3LyBwUjPM2Cxdggiml6WKcNBt9W5mBXjRIt+
RMpT0tOvPZmEAhObR6AFPjNHoSdTE+qvkE1++Q1HT4kSFS+wyuMnX3HGWPacLNhU9kiFRL+pe8Wz
vcoCrOjnHyFogwfe/hzRb0iTOnf9cpxl+jaCyU5Si5r+MA2lyEFE5OCJ7RnE88qM0TIQxfI57jNh
7b0Ar8FXKgWsuIDQnWutN3hPGPXw1yY9BF7Ng8K3E82eVUajayP1CD2vbXtSlMlL2f3dWKV1ECZ8
jmP9prz7EoibHhZGX2qJ5djTtbKpuOVlCkzDt6Lx1+6iXSlHUz3APMR0bBML9dHaj6twB4lTXP4Y
qswZhaeE6ePitxOm3TpAENEnGJrWeMDH7znIM68ebUxrKeExaX7xwjHgOvVPMH48aM32X4zy3JMv
H7FlkFGFDLkMswyvDfiwBNOzwrEO3AJw2LEa78tN2SoE88SDUrxSycCOiKDK2fvAJOc4VrPh8yeQ
jV6txS/Q/FHxRfbO1pCqGAZMiAmhJWk7v29n9zNiqI4B8n7CvGeVA+93TxbMcF1zXv+TpwIcTPZU
TZfv961389bn97Sx+Zeka1SHvexKogaBddhNOd2BVaU/NW0VtepJD+aceh9cZ878O1Iq36E9skQJ
F6s/nnGvcT272H1QwWCk1uuKK7qg/IOf0uk/JFq5AqArLAlBHOjkBU/SiHGsMDqZvE0e/yp4mCzz
AIlfM8kzIQ6gb5WuSM/BFvskwQqZBYserNoif+110pfay7BxRlowXt8N6W+XF5Q3qTSTGWqHtOsV
ZvfCWv0NvSdfFLu2PPSOew6/4zxOzoTOcYSkEvl+IHDzciiClzBSpP3HtdbpY//7eRLp013DeK8s
sL2KnhKO5iECimJP7k1X8FATQvNtlbhhdNxpksgJFaxPJxb5tsDe3G6+5LEbPLPGGBk5fuKYoeUs
4er4eAGL2Nl6APoFyBqz01ScJ2AyFWIl2obsE5F6BdtNFKoNImUl+WaOQSQzMSImQlG2lH8rQd+E
VdgctwTW7PmtbBcSf9F2xx7l/y9qI+giBjsmINUEs7uLOE+NLbO0G8Acca2CBDreInv01vYUEIvz
IvUrEMj/KiFOjP9xxxDlUdbd0KiqHYlpTXN80tKEa7TRYv468E3XO8XXmvGiTwLWFnNbY8//M/y8
fdo5cHmUfMHsNg6gC43FnvBN/cR4VwSrx6KXlpV3nNtYCq3Tk64Lbd4xvQPzJ16kuGK055IigDHM
n1EoCH8urEPljaNbEAAvXp2gOI5JPtWgzW/Ar6BWC7sdfws+IcwVqifmlHIl0soq312jv3j29KMz
/xmRSVLe3ksJWui6kr97lpSf/Vi0VlJ1r9VIsQU7v3GVDCHUeqRmAWr2ypyAC9sXlCeS/9LJcmUp
eAHWbGAD+uP2Q84LZNbJ/sO/l82EotBhopPEPuyFG9iody/k55i7nJ63d7Zvjl2YixsAci4xZ18X
M+U5lc5w3VLUwwxVyDnOJMdGlIIVRX9hGkNEhYvc2iN99tEhl7H+gBIt57GBkr3D2JiwlZdKo+Ud
XFN2bOxPxMHTts6929kO8nsJCSzDRPAb5ZqsuQOf4nf2PTHUNfd8sVx+U4U1gJB7QBo+xh+K9cjQ
fP9NjSudSAHK8nlGxg6RFb6310yoZ1QD4Av1jlG0GpVMj23XhSREjhy/HU+dEQsjn2+5xe41gi+l
EIEGRcYpKi9TN20FxEAn0Ci80/0GXMSY/mEg5wTtdL5479XHKRzzZJ/hy6venkCA07zT2z/vuVhA
GcAseypfgpumT1vzUjBYdAfI87x2Bx8UdXqF3Vxp5AIeCix5tpQHpAmdFo0WtpC2FGKV7pysYp1+
wfhDA25lWWprfdxKKRqh4dGykjEdJO3CCrRpTzDdJbIxDFMiTkoPn4KmeGDG0sMVyE4MbCJRLmSr
QvyDiFL/HW5AjL+qnbz+sdd+EnmSsOMDeAm61dubCPSwN4qcmENaTcKTd2WOntJ5nTBIXdB70eB4
QarxJQvofuLS8fBg7bkNR2o0a1qA8jNtEpbgEinISdxePkqAgk3eRQ5KC3LJp8IijKaiwgsjQxK2
snHjHDjLg3OKt0kr3ftzr99gBOmkaO9RRHqCtmK6xoIjg6neMyePsN+OaHEz75W32Ov52CmtZ96A
RKj2vJwm4IV3CsDXBLQpVoMmiPM7JkNgcSMJftTQ8sC72KehYhHT99soLGZUrDt/bJcoOC5x+oVx
1jzOJI4WuCjR5E68F9LsOLUcNJsLKvOaB9+e12EcPF6G3ISsgjApfmG2860gTgoK5XNv0ZN/hXnu
7QcAt7EPuqf4GEDdW1ShSThRfANDtJXM1QJWtYWj/C/8wqvnUJ+9zICVjKy5snqeVKRUJ7iVP+qj
dNOV7kdMKSzCHz2TneT2epbJmfHCwXA0ZlQAp5E9riV2LOGWTSHnukLY92valG9IKywBBZszg0Ul
VvSG6f5YoQDWr/cBt10XpRt+vhPffAxa9yjGsmMKENo4/+dzNG2T3WtmzLJBRqTd9wd5nwfHxkTz
qte2Zs2sndZ52FtFr/SSKf+o4EZ77zqh/PMxS7xgUtUDBw1dq4LSLt8lJpLf1t/ug9oWpkIm622B
1wDDFu2cCdQjG8w4uiTI7E5Syil3AfwiyJqswxawfsSzJkoQvMSFY6aCAfmn9SyrAsLrhTa+/yLH
d6t9QcjBIOUfhbCLiKh2PO467+XJWotFjsomfJC4K+gqKPEBSmASCUavQicpVvhsW5b0SYOdUUgE
eJWR6MzDIgrK5VXdmUz7hVOz4+VzhUjqxlE0h7dGY8PdWhQKF7IFzVEp/Wb+12Fg04Z5UZcAjmwS
ABnwCIXX6ZpM6/CLlnEo4iCQ9zJJluU0SrYf/i3h+v4CVBnmXFS229dbHcfmV5HawLDvc/vdSRNG
4R2w3xzySoFwfimYD+uQVhSy0HDF+xnnC/zH4UXiI2hoOdRvYdss6HQJGN8RZ5ubrBp1WRIYk4Ff
ZumaOCOZ8/O4tU3bVodUR0EPmjC2z0LaJ8/JvAU2v5dDkD/XOVh3Tc5d2osTvVBlKw+x4gSAe+CU
2UJexa8rJmYgm5bwhMBGWP3ChY6HR9bQ12jVrMqcc1i27QgRLYOuJx+WYymmbgX5gwsfwGsyB26C
IXaXY51pACSz4nBSxTIrajRtgPHbQnPA4ZTfbhbB2kVkWghbIC3h1NUTLOrxMTM18iJkbinjigxq
NGSqG6K3M644ODXT8pCjz34oSegV41X5rl7llgQfRzb0spBYac+F6lwY2jLdBQvM+H97jIU36JRL
K5/QdX5SPxjReV8rqmabLLfGz5WkTOwqS8/q0FTzOeZigpdXeW0+QF32NpuKZeq6FqcOmFKy8Sf3
6LOIF1hEvvURMFYRWjVsGcP25HG664czcP7vFs4FrI4K4e1x4WTh/CdchWT5ttTYG2qa9wxw8TYC
v/UPOWV8vm2u61KAdNCtoH1F0BkfmXjSXvshxC0Ro2a1Q8fMOzC54RkOCVZusGbpLVeH0qNPK+mh
f9m7qdo2ywc1axycIozgs1PfENbxI3zBvX58jkNiPhcW1rbJYD8VYPtFL3sWZ118QEc9NU6vhMYx
wGu9nZyRvbrdUUYJrGw1IRXQofHCtzI/9o4TvwAkE1edPqhMkozW9JK9/dNoJteGJLHS+vcU/iKd
uYG8VeFl4Isy74jgLXgTSowR/YPUxagFp03T2HMRGDO1J3te8aAL1Q6Q6VAh+JCyH5kWp/PYFHpS
ijfCx66IMPJ6C03eohIVFoadjGfpKtKPMe8q2Qxr5qSw64PQF/lbzdKPNC7w9TWQho5SSFSlIXpO
BP8b4w37tTPC9lIctVG0sg0Bh5EQcXRUUvwaBHorF4yQcgyTsCMN5qZ0Qt1i4rxvB+nvMLocg7W8
TZ2aw8knw1X1s95fIIavg0P/4rIgzEU7t/qS7P6bZyEC6TilZSWeLLTAjW2kMahxHVangqautEly
TS97HY7Qi5HLdGZ2PfiA0yMpHjRM5ziDop93p85A4AqiZxSlgy5BRRYWk7QUDZH41lbtHZ3qhoQ5
yPKj45/eXme4W1RF77WHslZz48iycbndTvqMTkitFOrEYdkkAjZZy4y2XEoNh2c3wgZja7/QPFNx
VWTIDrfqmEtKnL3kJgN+5XjiwCMH+B2mlPSsDGlwBGx01tn1gfG137qaJCrWuJDSzQ5HaWfcYbfC
YVELSpMZ6tQGpyAt7Hw4RcFPzFG4ddO+wnPv4sBpmbeVxsiVedNcDgBfLzmm+8abAXOta/uv0IaE
RksJs6hsLMgLW0lh8PJ90DMTdNt9UdfbNxXjdZAW/uniFlOlQsXOlsVXQlyjcl0h6j/DfxwoGRkL
dIGTZo67MFg1KxiDUI+a/+wGDgs9iHT7v1Bl031FW+T5P/ZACr5XOx9iSI8zfIfJBWQdlAncrlHA
E6X7K/xaowL8vTCNIreiHkKhNxkdLPneNNfGWNRJsde2ljDbBiuVJN6WbAkVq07EPJyVZggyrGiL
dxJDQQ4YTFZlWQ+CzN9rGARtBS8ffI0jtLt52b+U0aZwAf5V9sIgkh8yEUtK/430zGjhChhG3U01
z25XTZa0r9qDsPfsxCYQLP85MswFLjnXUiXvBSLOySrGtbTSsxu7G5kwnQJmGZZHtOjDY4a8rrYp
GFlxQNr5J5Ejg0jqoZgOT23xLLYF47vUbO4f2UvJ4hLz14RkWwklyVIdfbcm4eL+fBel3+RXTd9v
CBLPS0ZO3bR0lPHNPl0ykUb6mHvZHod6s/mH/K3tQOgOe9om7jqehV+U+KZSgHwAO2n4HiRvF0LE
Q8JFpT/RYNEDJYD0bZo+nEetLdmql1nx9kWSJMIoN6Sagu+JwmLntz5vYuqcwIXcaiYRoJDuYCa/
qDK71JphPEPYC+okAN6KU99sdXfIdu+vJJRf6ebpb9hLiw17AzO/lJ9ZtY+2clwSnD7u3knS6949
GTjxxHTD4lvc4VqWsMSl+5MryhAsXdUdVvoGEJgATgKCQ69X9x+DiJxaoIjFmCTcVC/vqAW+ftV0
P+xh3Czz3TbqE9y7pe4YwM97NOl+0bzy4WvwaL+gYbaCWMbYnN1/iWX1RuBWXZRHhA8QFfMDnyxr
4m+AtohLDJk075PV7aL7UcN3PkWAxiZIgXBzXGzj8VdrGitmOW2bB8Dc2Mrl1lb28nLaUA4tpQsf
gogY6ppqahGa0LHzjx43JovsM6OF2HGCCtGTBtVHTebF+g21UE1C8kcu2f/PhZetKp6P4zLPkwp0
oj8KZFyLEV1G6BCqVX/Gq/DsjQE8mq8Mc8L64X1Q+Q9bWFZfwi7L+Ooxx1bRwHyJb2mmxrcNTfV4
+JJy16vLzfGPU4q/iBJpjjUVNGzCk2pRTHkSg+BGZltLkQRjnVLnhKKODKDYdQhfkO7ZKNMp0MQ8
qubtCYAzzpEV0Zu2fP7G8x42x0g+DjaFZNNlaygoXr0iygEmlLrnrOcokf0HaTV/T0vTFrFsTUxq
oDcF7890qOGKUU5FxQnsTHnxtKxSL9wQaVoUglvsu56QfMFbaTerAJRejpnjBMRERjwQVl6vbUy6
EpHeQKH9ZvwG8M6f//PSsHUJ18bN0SzrJdF8yT7uE/uO505bSmvMyihm8AdQKPY+z6cBlWBdl6xt
NMENQaYw6qV5wLunyEibsslfPmMvXg45Tf5H10B1HG5Z3Sn5beRmzFMCvg4iM05dWfcwN6DC5Hu+
Ov3AnxTSWvpZfuY5pCdP/iiBzSzvM0mLExDuscCVEVdDrjjbueQLG81hu+wrpwfinYBWIa+oKHg4
1BHvR9vidM76IpFSiD27mQ/vfxDKST2++na1nnqgJpW22nas0trAGmb6XmEnYGQQn1BHrf8+ZRKK
GnOPypFsvu73M0W4RvHQGVBvnJ8zZyers3NNdJa6Y1zvPIwVG80aQrf79pZByR+lowI7Gi5NWp9X
T9R17T2AyLCDx69tl4x1R7ye0gwQGbZshZ5GVsh+ADwz6/jRJaD9h6QrrE7lZncsHS0rMLfX6wDp
Y3VmaAPu5bMEbD7f2NpgNabUQbHtkAQGkwOU+r5q0eNwti+Dg/8MHdOMagS5ObBplq/biQlCISk9
B/nKae3h6q5jPZGrGNKVCMEHor4dsDcC1vU2peL5mFlqzmNucshqsgSf7a6W5pUMaqA+HuBsBl0M
BwcjjkOP0Gg5w8aAciXfbLqUCWp/x655zvhE8CTekZgNkBNbVpUi47nueLl5LwQCSdF/tAy7d6zD
440J7fcEkytBfHf67jCnRwG47Tb1/E3l12hDGLCk1I/L5ko7r/purZ9mrJo+gEolghXw9dZDvNUb
g3dcH2TpH2tz9bvqNyuxslevpypQWUNXnHdzA9gxLeTGqfJSGcx5fCcAyHWCLPAUTffVWpcPaEa7
rV0ykvCEOImMAaV0ViMfHh70Enekg82NIoyITOLmJGmRrY/yWCrX+SP3gf+6i3F64cxqoEo2B0ri
Zq1/ChSZBsQ+TODsH0hLWimwYAXZYhGBv0W7BlXJ107QOhozdVKn0BImHDNuLrCLuc+9uH8eQ2YJ
PfSTCp1hyGlAv0dIcuTgT0G46Cm2OvklS3hZzaHIlPIVPl6wOqgj1EXUUgMSpWGZ02g2OlqsOY+P
11PKIGVHH1bukfpYufN/ZtGerIlo3lKUSUXJw0iJGmPC9J6vci9DgEpYJR7Dbx4NPfQDUPlhEdkj
dJANNsX+8hdizdlvUKSakMrgyMwFWB/EXPingHO8oYTJeUju44nzgDkMdndEu4CZL0PJ/Wm3hryw
h16VzXA8NSng65IO+bkh+Rn8hG+onN5OUJC+MkSMxGuXCou1xZ3rxuktP8VwN6yu1skXNHfCW17c
4miDMeSAbCgapjbU7c36HS6pkPBZ1daSIdsCKsujlqDhTLr36BmepZsYy5/XHdykB2hv1ody+XvG
i9iVvgC8hes4LqsLwqVS9U/x2xcayLz9HM6DT6rb3xQQgH6XoRPzK2MKuhUBOQOpfFzJg2URT5yG
1zuXUzIvR1vkpGJF+xvr1FVV3wl6FfCu4JZYpO0TFCEn/g1fvKy7YYjxgwLARJP6mHm+Rkv8wjb9
+C0wTocVI3ZHJ/gaISs4kbLAdOlgRDSJhs6M3NttSoqMliOPhiDRJqD3ZBf1NvgiOt31GMNb5LRx
wRCR4yi8FtM8Ux45SGAyMVgPu9m4+1VDHfBCJATRo+LxSIa4V1xu0lVzGnEfTmD7V9A62RwbGNnS
IyID9vjyIr5G1sMQ6xILgMBjHvDILRQns9ASUQG8iYdFB6j++rolUbcp1+0Mni+hcALSJDUUK+W7
VDucelHXKci2xPf0Ks4k1M+2t+8XqXPBXgx2ipQXgITCr1XUks1ricdsoKJxq5q9hmt9AKl8wCCB
2Im6f/nLISNMKUJOMeY9WVpPhprHIQsxp5CTJfcdD5rdveQHFMf4+eMK8sL0tCHCmaL48yn+CAVu
O7CSFO3qieTkdMHA0q6UjEgqgMn1IGgSQKCvwgIGWwjebHI3ShYLWB3Gic3cooNOoTZIwG2BbbOC
LH1c+yQ6lWoWMHjuUrh41dcl5h26lZUNHI94PgpAbKV5gp7A9LEa4ou+bQM6wcOmf26FWGrelLMX
bh1dZXsY0iDanlZkYbiEyNGaWn4rDAS9Tu5ZqvL1wn32bDFSIn1CeeCUWTXZ+Hi4nRDZBEWo1DUi
dCvXmkCtkNLVGlpB5U7ufo665AIfAk5av0LeJxJOHL1G4UgR5bb0R6wItIcC72QY0Y63adZIphC1
yeWbas6qkQUfNfETdIQQYUaMO+ULv+wKLlvX7jh9TsoIQ0gdlekQekGe1ABOv53zO57/axwKCBkG
bjlwST8qd6DACDe2xK43GwDcwlp81k6yEo4B9RYudIJNBy9tK4IKRuwFiH9PB/SUEkfgqNc6OV+/
ID1Iaoc2fywyUz0wLT203Tw75vE6YqvJ9zEFSFO0Dv/CYcOf18+V280bno2vpY19HyigH+ICVPJl
tkB9iQEdOIzk78d+a5Y4kfBqTdT0yXYCCTO5yyDCQ8M6TjA1BstmaPPWFeZarz6Suuwkq48QACUH
sQHjYaOiiMRIBoT4R8uDRxf1soEQEmmfBT7fG8/2oWZET7UdwP+Fx6IO2YE+mvRs27W2QeDzwNqm
P4S2jSqPjVC7Xyor6CL8B+IvpxDQJqqw8v+RlOgXsWUHVlBpGhPhaA33M6ohdDtEi35SUPgZeC50
7xyu+9YS5q1Ott+qsHZ/y6HVWOm27oW+ToxcqR+ZWYBHREEilBkM2Y59TOUroTDTqTIarFTdAEE5
kcxfwYXc31xNshsCWLkYCl3BNbsb4kVpeiS9N58A5g/P+aiKwZK/9dIPx9y/fKNlPeX75iXcna7L
WpyeB2upaZ+QveQCSoLXOJPkMjbPIBi3hhpZI+C5urDNa9rW9Rhl6mL6egal4oEr6DMnyxem7ODo
7OVaRk+LFziV8QoACsBe0TCaWvGam0EzVTn+Y2ES7ei8bxIxV1rMfLaURQAOq9GPpcwRdRJxFWVl
oJAFhfilLtBwBcxmqaASjLqHedB6j32xIeZUBa/uGavswFTOzSdkPRhEWCTztUy6waKZeV+4u7DD
NRDZ4QSpQV/e9urO1VhO4+vh+hxSph9Woq0ww4j4UCtyoDgD1XzsFUe+3FJXgiuM04ZaJDpZEAwf
J6+KwGOvHgGOZ0xBkNuvvFNMDJ0zEPs0mH+/wmbPUMM1ONetdIrp55RZGBAQZdX0edSxcFoDcNpH
ZYnmOUfUIUb282riBpENsWjcAYU57zkC3OAmpZmpw2Ywi/0BGv/pjypQZZJ76nJXWgqZs418uzlR
yESC8dWLEO2uW52ZPIr8AUB7v7/BFxKGYdes4/nAPtQKCVIRfm9ET+k8MBPZHuwwegZYC7L6umbe
GOQxVzL6x+TQm2aqHyVc6S9DNmm/Xq9vg+6/OLxJctf/zZXcFqyf3vJGu8xYvQhNZPozZb2rakeR
7IlTCGRmImIkSjUO84N8/lsBHJiSC37nSlCyldOXgUv3oiq6cYvp5B30CtVaCv7Cwzhwj0KQbIBV
u+Rxvhdk500gf4IzIscEuC3GgdO5X6TBgS7TRNdm1BbH85NVXv6txi7RXqXW/E96e9f8mTDgm9lk
7+fuvJjAi9UIOhV1hs0W1pDy7gpAWscdW19tEsis7doJYq3fhTvHfBosTuGxwUNnEBQASATtdtC6
RX7dOYlgjMhmjatVRjJrNRNWvLpeYO+M9FFzNjWMGzzM1kKS2eQRzN7SF1tkJu8LiJzbtvrd5eoH
PgOli0VBV4828LATHZQA2By4KEN0cHFKT7xJhcQgIMwn3tX3IZXH4LwdnQahrtUE5USfOsxZvq06
3P1ma1RBvUctmDpM95qEMFkYRCUwrhmvUE4YLyQ0oLkYNkmdb2AUCrNu2xwcWaIznBxYcM/SOOWT
/PuB6PUsDR3amULEnrwol304u2uA8qdO30Su3ew5qzI6QgKbse2PvLATWneBD4bQCGaxmloMHN26
pJkw/YvaOVVau6xSdy+PgJDcHAhfSVGmc8goxea1EOd7Eh+4TBY0umXlw6GfKF1rQYoH0ZwlH2q1
aCSqDmB5gcREuN9FdUp6K+ucJR1Wxx51lbo3c/U2jr5OX8J2n2hv6dK17slqMuSuPfxRLT1b7k6y
aFGeb9s9hRGNDDCG9D4K3I3lg6QCBYaDnEH35cipUTc9NOxdV2NzbteL9xkwcp6Ncsk507w3fePn
/byWQ7InNtRW2hOgq/mFYUY2LKIiPW5j9qDmt0WD2WP4/RmUDO/a1b8UBiQh+1K8EtehGaKWpKyJ
y1Gaq4L0vFrULipV8RhH7DZahqkIPDLSChdbha48KwMGipUEOL37urmX5GQUr/kZDlCM1zWTrvnx
4Qdqh8RlDovV/Z6V8k9oY0VRO9f/TBN8eHjmSncxKr5ZDIEAseFWvQ4MqZrktE6uHg2HZXfEe5tr
hjyNXc7b8XyuovOLAaKgoZsoUzcrw/cdiXONGs2rBfYTSJQI4/NCUW4sYwUDnHsTg2TSLKf9ecgT
Jr/Ksl/9EK+eEGngY/BUamHmLQzOF21BkYHFkM9PgGVSu30Zwiaxzw/+7sLZkm6qcC8pM9nyKdDu
n3x8eAxslotMQ65E8JZdRKNa0kZJ1N6/Uwtd40nmBb70aLbNAmPVybGNZ1n1SRuYGSfNLQKev3nB
VgbCGfuVXsuIVNCsHR3biasXdeB9/ID3WHKFHIGDqj551rwQH6C45HGVO28Zm/3t6ORoWOeGWsIV
WqPCKUQ/MrOxnPQ5+q1c7qwGhyBREzi3Na9lk2YCoW3fQg2Q69wXeUVftEfObg2cXanax44ySEro
3HkseQ4xS+Riw54ZOxhk/pKCbXV8TTyWcFcaxQCE4uhbH0f08951fTjLiz3RTFGHMOf0Uz6qamjj
ZngWgWzxHo3JyWzYKpeEMMg92/db0kV2nXgjF6K5HSfOHkH8tndZ5+g1r2wmOoUdJ+Ww6CgQfMgP
ThTmcTZlVcpNgZgnjxJXQtNvMqyWFeGTIAC9M5xeVLAussOlFO5G+jl6MmLQbCjLUsUBtW7bl2bn
3Qac9bz/XmAfITg7dekOFWUbYNx3KobWLFg07uGnWE5aaAp63Syomtk0lEIKO+hsTVVDpv4F04EU
XAnwVpic+bkLquSxjC32tkZAxyzawRM52BK2y+nYFWAIex/gsgEaAruKVJFk0T5BWvJjfC8ndUqn
bGda5ziwrXbrzKX7GZ8dIsbA1h7MP09kK4x6bP0K761FQRY0xjRvEJXa6QUoKHqve0ZMfnD0jSPU
eJfEbULMmjLRnOo+OcTRH+zLos+fb8m2Fmqt0WCeTTYYxpZILvXwdyPNswSgwN0gI4juE/acV98h
WEGmlms0ok48BBrFVpKdLUU76pu+fGOhqyGCnzITaX3By8o6WDslm++aLRjCIjeIz2xQv2si2rGj
xEBhBavi4KRF3veQM9jp6T2dEIFF6o9OF8i9Ve0023EpzaXYpZRFIgkiZfgTZwPlapdnwbrzd/mw
krJdGLeFXvpOviDxTE/sh08ytYzUjclzIO80UUlj6835QorkpxHv+TIr7T3IAImM1PB8ASDa6kAs
iBn5wiDzzEtwFwZ+cH5hnWyKSN5/UMyyl8gV6OqOGync9rcNNPLZbuZSaz7UEnLRZl+A0oVWK/w6
w+lLHfJJN0kqH6re/PUqepVS8FmY/5EjgVa2glj/JbBl7z9HQXzZ6k87AhF6SzP+qOvDkP98ek8D
vYkWisei7WhmNWc+oc5axn5/Z/x+dKFR2O5reGAj3jUhhgi8AULyrBZ7DOWGl8AMSDZb0qyXUfYH
LZHHQi2fzPkE0Y4whEdpBzGLzqmFJ86P+Qvaoj3ECWZbNqQwveEcvCeZ0XTIkFBrbzkXg4h0ts9F
1YPlup4N+UXVo/oKf/UbegIo8k8ylAmwOQsOqdxn9memKPmhhZ40AiVrMu9vJcoiF5I6V7oK8s54
abqEMKROTzMJVlZG6BMCQvB4MJSgiswPfdbQ8/Q4Yf6Xk0YvAy3YSzJNeVDvFdb1x1k2aanu+ACd
vU2xgKt9HmJQccD588hXGzbLonUlh8SViMrKtWp3X1t/NYg8ZIK4/WHtwIshuXWH+/ZXCWxXBveA
AvTsHnAWZLeKWq1IjD7NYkPKQn9w3JEpHHpP0UM4ATaqobFZuw2ZKy8B1NYZ+KRICwn2/QGautPn
+wbb6CFmp5YXWMIbG7nbhQC9HeZ771C8gxdyABKr5Iinpydefc8h/dNAdCbGFNTKtlaSkRgC0K+d
C/XfDMzAuDdPIKlMMPlnurNQBFJW6u0Ieci62xH1BnsW/dob5Gim/DhmwahC7cPPIaWjUCcB5yT/
fbf6G2kkfsXhKnwsmXWhabKcaYKnUGBzbr9j1+MV84icZnl4EvHZlluHBsSu6syeSSxdGfNARIuZ
Maj0El/sEsXWwzO/h5soA+NGiIV9oAlxELblq5DidEc6BxSOPjuqePRJDcP3YzvwH1gDCzbUF83q
q/Syj1/u444gPhRcwh7rVWP61Q20VFZd2l11Tvt706S1MSejWvfMb3XNwczIR8ite47DCvWu0o6+
KPgV7WmtYT2G4I94idF5CHaaL2cZmvcdf9GdGzF/agZRxlg2YpKCCtoI/WUMAI3akoF6vixb2V4c
Z0fgvDj2rjN32nU4MukmhpCf30xQlBPSkHJsF0zgJd+T4lV65b80vXWmUZRo8GSBNPD8tXFntg1j
ZyxJrprJd+vTIW+I0vdJLB0F2ptSIohLNOud7ZYSGMQ1T8pOL3goNnz7n2s3Q3m4GPwgBT0nxE2P
gjihMWbcWMO16SqbgAaGAOD4cgD08gHcFIN7K5h+dIetRambpgeF7Vbar/xkdpoBO2MFWMNzBCnA
qutsSjSpzUM6wbDYVifP7cg8eJGxNSq94+SkTwfRIL6h71LV4A3FWO+sXRrxWFRm2pkIVeqHP9eo
IVySatSnIVhFKcmfBuCRso3CsuHI5Ve2I0za76T0vd9lf89rP9VJmCQ3iWFp8AQH4yG4yo54C5y1
YPrtzWbA83GebQ7erKE0HmcWd/vyKJygELhFe6Vsde8SWtiqUdnTfin4r2wog/+n2NH1CTbD46j/
WC2wvvzm4ha/A9X76gjxSSgZUyt+ZpIqMh4eEeTAOGNlbvHzrqGiwKT/Y0qGRYZf7JxCKWkl4v5v
sSzyRg0ybb8zbuneaBq691TrPesv7buJXOpIX4CKz/xft3UsgLaGFyivBiqDX7RBmg+JFYwuF/MO
ZTk5CCEUOkmUr7k5Oq9LT252sc/whbaEGAAF3LyloHLs7kFsqS9WSA7DO3Uf58llr0+VQNpxcI0H
5pZ2LmQolN8i4LuB9y0pRuc0xNgNMcWTkYXaotdDUfnDM2CDSKcWXZLOLL/+MgUzLp/Q/DA3D6VW
JWZ3cy3viRNLwCmoNUziinsGYAxMyxklv3MrjEggOFlTilLQWtMd/qt7FArhALUPA5vUYdpuu1D5
SrtufbFF4jl+3KtbTOz2mty45W/ILpIgYPGqTpsFK0bV3a8+PoX24vCyEGxwPSZAI/wbV3v3Yi4I
k/J0ECIFbbG4woN+deetrEVEUZn2ibILWqmMpB2rsbvRKZKuiVyS7NwgqKheMsKI8XtwHwDULTOd
Vsspd4TlpgHHMEFa0rDgFzxP3BRgKy5uv0HfnjRvgpsxfRa9ZpaBeex/2m/yAPdlphPiQbWdLlRo
uLAcwuhfOrdMXO8kYGYNqWFvm9SGEPEhlpwdCwRh5si1Yn04ZDnACNIbz2hMf0qgJhPwY8YaHOq2
b/NCZnT8GK7KD+IKx4W8lZfGc40ZecrkdfkO5/3Q6wLeNEt+V3zPjExv4RSq15LVVYql9ubkDYIf
gRchmAggoDPcjtgDSDNfMZKzphTPbsGnTQvSt3H6yBygat1hsnSoQFjrCDGk0jG1ic2fC/Yiw+bK
L3d5EgZiOOOcdJEa+E1ZTpKJhbogouger5x1P7H07HAZiN06SuPIRpQ5t1QIROPFBGQ0gqSC5jL7
dBc6haYMhuyxb4KONYmB/SixKEyvtl5buPru2C6ELmwunkLq5jNCPhNFFozqnDEzHQ0sTfQNlEbk
khild0hm+6R1OfS84Jah6ASH0fT55WxaGeGWJbZIUmZYE2P9ZLgqymeeBpNOr2aAEKgnlnUllHV4
puR/7OhnG4E/wlIZaLQPyclvtzhPvtKZ4F1Ms8XB/Pj6OcSr7+NAWkdguNiozgNmbtrp5s4azPCT
LcNVm/sDdiN9egYw1dp1FIy35i1ilgGgTaqFetTnt9/NEU25IQD4lHZhBnLCAl+jU0bgkJm9XgQq
Kjqh7Q/MwZYFWF8pJ+OiKbLnav/9OoCKT1JANGesukZW9MikIB5IEMm53jFV3FyqO1zNktcNfAjb
ZNZOOYZ8vM8eFmFyotYHyNwtZo1K4hvt5E7oW7Jn4K3skng6+isWMkmJTynMCX+DOyD2YzPv7S7I
yCJJ1rz8j7zZsrElngpDd8OKmH+ekXeHRtPKB5AUON9P/MQdnUQ1mACWkw8RlVttX4poRD/DbLXq
7mi5CJlW9Q8taYYbYxVTAglL6Ja1taWtI9DrEm2a1ulS6pkMC+sdA/Nvyo0+m/WHR9MBmjlM64Cs
g5Zw63k77FrlNmnfHJoIyY4WhOHlb9NZVzv+t1IZddo3Icp2dQwz+ocaWJ2BX3lDGFfXB8yg5ajB
9GYwVvcI0sU7t3bBjpnCKyOwe0fW7NE581cDO6arAQkoBrQIyLKutQHDL4ACX496YWR5lqC8oVTH
BXAEBozQ+4ICrwmnfvcUJqh45Lq10ipeuzZf1PP73G8iPB5kllULFayy3x/nJLtINi3U960sqxza
ls3Sx/2USIBhbH3mjusUfGhXH1oo7ed1A5spWqOBqpYK6nETKAHJ9pdVPyP9OvIVfPei9cHtXSmu
3VtF18Fhlnw/RcC+yKTnwOnQR/ZdAfa0IA3vnkT6aeIiVyGlcub6M6v5qxzquEFAj7H04EhxNMPN
yBcqTejdH4C1Mappi0AJLLU+k/nPUGU3qt1MmmhhJrfPsrZVk+LSfa8HCjCEwFZcRfuBYYiU+jzt
XqPoMIgIB4x5uj8DOK587TRGUpEivCEfpC9EBRlaW+CqEfhGrKiHSYs2696rixvtxlHwqoeRqLzk
O7t0n6rUWT4R+Hno3GFWPJzRgGcx+Oml4Xtz5dwrp+UjauL+oDkPGy9NQlQo6R2ctZp3Zt6OcVJ5
h62C7sSVTNHrlAbvxOSc//D+zQr+ghpqVtokIPyiXVeUUdUh15n3/HOBlmt3zzWozpX6ULh6LTq3
csAEeAeBtcJZFx2/Vg4KKhncYC75nynjva+5xml1ev/YqCCbhwbcY+isp+2esijRNPpCozee4mtm
EP9hE5XI4GT4F2J0dwQQEzwgLvqZPk9tyc4ibzINU/vjPryv5+w+RZ6/ZNSGJt1nOPt3CFGe9gus
A2zYgJCQVkRZYScPzJfkRt/q/0HEsp6TRSpeotqPCWROAsKczDWmrrKa5ODRVMvtqDzkG7ZqLJDs
G3MEeDGNzo6WnBCEm0D6+eMgZSRNO7St2sp3cnstXazZrxqR4D0h/twMybrhtvmLEDuTthIkglbJ
f7u59lMwMz4hLl5GRN1NCYeJC6+U4Q8D6vEh13GDtDgRuL67gX7okAtcoyIwtVgcHs05p/Q+C1d8
nCTR3ndWhKh2+TZ9Cr3D3efAQcepLf/1LG/77WRqmYggnU6V6TAtD+D99kReXTKxo4r+cGCAv4/o
a5PzHjvuIDEOQg7KzcHclb1FdqD/7KLfyaHC1UZu4sJXaOAjd1wsy6b5M7eBUMmpWQI4j5uH7NZT
zYBhbH16wL+kw/9f6kF1n12AlEjN3l0VDRJGpVfY3yK5k0vP1eHEma7FO3/EVrNXrrGOJHPefXVw
uykIWoEee2DKp2C4AooaGr2u0LE0mKYlqpVdiOiuTCUB/U9duC78X3eZsjL4WZTbLLN7NWCVz39a
vRDbsSXNbYzP4CoPAABMMjAv27l8CUeUz7lct/KUzEdYqMAmf3qKCb/iGcPlHafUMy8wu23U6j5O
xdHaohg0dvF07ZiDo3YkNPVen6uNC/T1cTzKXNRhF7mYIlsbhLqpuYGnXN0NlAp+fDNwN1PZPPn5
Sz79+E1bKZHaPYjt9IhS0D/MgjXa3nl7zze7eK5dDUu5eC/waZQyawLWSttW+itCrWG/YvBGaQBx
ypC/3d8nEm+Jv4UghcIF6m0v9OHocdKpUPPcwWeFaJ1ImI/2/MGMsiOVqK8C+ijwj/lpqMeFv16+
lxmIbMlk3gJ8gh6SINFoOuOX33ak5ZA8YTN8H5cHDxsOf62n+aMKzLbzISAeXCfHnSQ8gNPP3/dE
szBq1IyygXe8xg4GuV+sFj8SDsUm4n6fCyGEWFHp2vJrMTQWNLskM6T/mvmCmfVIXtg262T6jXc8
WZYESmF5y1jsojrmgoYTeBTyV7Fdvj/C26cS6Y6mTfws1HBuGRruAk8Y86i2R/xFq3f5vXaJQjr4
quxkOsK0zdU/jyZrBEqYQMZGRpPiXPICcA7HEY4pcT3fQH0z+qFv31gDIcSv4LyS76RAj2WG2Mee
sdKbWh6bWN6w2QEuHWlG2E0dh8OGvE9RG2U6yP6Wy+qDcrgkJTG8XbLDBBv+X4vP7C8HkFoWH+ik
0q3EKu9txz5R+xU992a/zclPcBX+jS2uTQXy/1eiNW2sPqDyqMkHLcDAwCkNY4cTV5ofjAP9n8Ys
pmNoe7YOYlhMqrivT5KgLoxZjpEerIdwiuCcQ74UlVKhinIot5MJQtwe+Is2caWXX6g9GIqYRHwR
wWcr8JBUuSGLWbDvanYdm9N+OINGJ/tBpK8eUmRJ3M44jjIv2h2Y6lO22LJQtCGpjifJtdN2BTEt
+g9+PIGVD6rIApy9LR2picZCAfDNmnoDPV5ESIJ1LjLtLCnYB2RZ9rzXyLOi8GYlpwnKyTpQNzjI
mdoMHArzZ+VvvdtzGPxdJ1XVZsA+XlQbpQ+rVW5ypUYeAvX7XXXeqpumGiPFtsJqdMQuJwndTWxt
xwOwa0KEWaW9RyImPloPx/RMKGH+ikXELmqXe4I6g0yhz6Lw1kcD/ILKPb8iikygA8aotEebLvPY
F89rAo8KqwgeFBLhwzSJ7M5jlGR5YZlNvmjfa8WeRCkKA5iBedAGNk9S5fMGhML3CDEobTUaszy0
1dlwInDagJvj5PjTVVAzSSJPPwKUUDNtCoM8o4xP7EZZV90eU77aKNX2NzDGu71cfyQDzRWMlDBi
RyELKS8p+mPW6qCz/NJ56TxVjgvAWVIgJ6qOZ+XxkA8JpPBiVKnZcFwXN7BofkTMUYsXvdDDH4wK
2uRJeQlPOHRZhZP5318L1x3gV9IpDofDNZJLXOmN+aqCmI+wqNzhIN+G68rksgoMbk2HqLBgfMCL
sqZqQYGW583TQHpW19iY+WwdYsyAOlCUhnYvQ3/ky7lcsddkPJrKU/lElx6MBOtiylWsun0vWMbH
n5bH3D66+861fzLACMUsp+E0puzunV2VYOiiT0VG+np0mi6D7wMpE088IRWNWkfDG0Onah/YVott
rLLn4B001Crz9ddDkDHhm2v3g4A4h5DBkqyDIie1Ybi7QtAXfsymqkw5O7ciPpZAZh0NrCyEC+tZ
V0zmKlOIAjO95qpghj1jb/bNlvvtwLyzDFAY4hRvdrRweP3psIToLBHuMfwl5ctjnVZxCXmrakqU
zW3Rp5MGtHiic4v4eVLPPZJ2S4Y5oyomJksl1c7zpL7O27H4ClU4zM+F64S7ONHxEaMCj20iK8gt
BIVmG+g7RQY30KirEB8KFRXm36EeDOMWiSzDp52kdiZNggPZ13ykVU+xV+UDtJX80+VS2XQK+WnY
wgd6axH25j0uaBX88SW4n+53ZBA62uon/zKNyAV62wMGypRpJEIIMmGoghbaCUv1rGoYp2WBGHdL
/z3/RfMoiGJf8h/EsVR+6eQyI5gw1LkSFVd/hRbwn1BsyiR2VECw8ZOFujzdBvAnLgIm/cuCBgN2
eHP62FY/4mDKnYG2wCsDmkSHl9lkM+oN18Dx78hbw3gdpmXQkL/i75wZ4P7w4gdBgOxbdusTT1HC
guTASnn4qTPDJLxgmlAElEMveeBB/jgsPdfSx0OoQGRR6I5+KvIrJRO/1eLoQCdPxPHs5xi0mmKJ
rV9cM0mCoTw7RNcO8sLaPUDvCBdy5EyXOcakCPq3VNFvYFUQ7VhNk1wDYpyEvpatT7itP49K4p2/
cv8T6E8+SIN14sqwcZERSza0kXOQW82l/xqIanx+HKJFMR80YT/ZH+zZqVD7JUeg3iPqzqUA2sVi
Jue6AKXnQ1IhNIbID6qNxzNQ34ab4KbBpIlxjZOpl/zWaBBtUf1rra3jlbFPSQ7BmfG/FXzGV1K9
m9OjC4VGWIp4f7gTOgkxFk8V7OIampS37ztjjlXBGNVjk6/Z1fQaA+yuzyGnSOd0Mw+ZPGE/BPsW
NpZ/vFdtguWaupIT75XKtQyEd1O5p/8HIFdRcMOOeY3VVtx3bwKn8udZ29dpodb9MTb5j08xuPrW
W8/YWXImbwhdOzaZ7yEjVWXTV74aRHE+fPNyyHWbHEDjoOgQVzmuF0dMsr+3kdpExQxhLeFD3SN9
d4OBvlml1XKzsTXGzbi93QbPzKGyRDmjSTps/l5aoBWqAkXYH+954G49JEurGRaWK8BZHmV0/3tt
IUqVLTa8DqdGeCsXwg46yyvjCR30m1ciDOaMqienUq28P96ndAGrF1UoY0SOnSdDdgd35qyW7ntI
AttcuRrt+EWEkCuPe5kdsWA5STUOJISySTlBEfofo5FtEWbscJ6r/N8jLLT2kpi6jL+U1DgTdLIw
S25UYQmU2w0//av/e3VGfKaLzdruzmfD9MzIE6JFjbpvctEwy+qjxN+myvCrSMqVRFgW9qAeqmJk
iuqXvYJ9QjpJd5i6mMIVTMCyYQXgdu8PC65SjST8IieBAd/0xG1/2Yw2z1C+o7eLSDYSE9b+VXS9
xW0oem6hgCTnSZaqzXyvyYk/RLREjsb4dS2A0TxcN+71V8wyfyYtCIfd/IEaoPIki6t2o5yObNBc
qqh79HXGjnyJf5KtqITg53X3hRHGC3BcTsBdrqxfCwQIC3anAUZeHkc62ZeYwGmd3lHDxkAjk6/9
07GondvZHb0C5CzkpapTAciSqxXJNtAfA3spuDzCw+yscpkYsJP4kjIW/XYeVf6EZuENGPrrXD9F
XOe2nxYEgkPkUdFLCezIgccIlzdgLFwgsolTWpEcXV9VSP8U4edfl0XsrSzpsY8qCR5sm+6EOGM+
ClxnaxAjaBIKOUCEA4z+NZDyZCBRTtEWBYNQHBSxnTVkPHIOtFZxodRDYUBIkyWB0ucuPEDwMK0R
5oFq9eJoWYHlK15xojXYswM6RhbhdBqEUCWqnaR8MIWd1ehSPogvY+IoysO4gU/QcrzTnAwKfe1Y
YdeJDDZ9sKqDuqJ4WiHyoO2Luu7HvOmjzEkA7qd4K7fpcSfvkbW3FOgbf4ZnMOxtLhvln3+dhlmM
B3VRn70q44ZvQ9wQaDPgkihVZoRCjdjMxG2U1To6/YthkmlYqyiZKxcYab1h1W34rjrNDbRaqD1o
nElUU4kgwqY9wE9/C9ZjWVuoMflkdBDtlGWca4RIZYGxx6CE+P8xh/ABkOtWm/wSRTt1zstLfHVo
DOhlQS8jyDD67T3H0xaqKCLEIeC8ec8J18o/HI89Tbj7DjoyNrRR2Zlnhsob3igIetzHED6Uvkqx
H2zGzf1XUfzdEw/uaRg61tYej4EvEIxcK8p/YGI4TkNhUDXAEGTbkzQ3W9yAH5hNSGjpYn+Yc/Xp
45Av2vCzk45RrnwdLxq2CxWOntC6SBlfLOXgwMNDT9N/z6VMMV56OLjVesXJVrMQguKhHgH95j38
JHWfOmem2hZRxWW4U3uos3jRP8uv25zb7A5lVoPWdnAG4DYwUblLd2KwcSV62E5xmsuYiqb0hyiL
ESjedLtri+NXFrXpH9ZLtmaDW94SeT988TCVJ6pz0w+/35Vi1RPHbWPotIMExYKKa9ULmeVHq+Qi
I7BYcOzIvBIt7i3hkJu02t09Sb1OPMj0wvuFg/0OXAnd5sqXzfvZSmjFwYUK8D7p/Gv8dX2mAYQJ
OYvcZ9MtUbx793oYtyoNSRwiHkK15ip5HWpj7ZaA0e/kmQfDK7meetDB2kLr+9TeN36p+fj6MUmM
Ww5fTfK41AMG8ezb+vdT3gtZJ+84ACM3ydHFfVvu7HZBrUsqFXJg1CdkPhtpvew2Gt8vWx2FwP6Y
ZhyYiEhmlxi/6x86eOaQzv+FY4krVlZfg9zczj2mxHUCFP1NvYSRCJUgbQnRgcValp27ld0Is3j9
vOPNYYQ5UZyBcwmdjiX/aq7vJs5KLhcxif0ge+Lht9ySfL6UaR/hyEjjj1GmCZ4CdBciF7WbUTdF
RjzEbhkDlCm49I7v+/KQEMlyPYCZkoihzDfI4P948qlUMfsaiCEW9sZVc/WTDlCOB9w5ktEs80Xe
HTo9qxZDzUCg7LxKunZGUzxxGn2IKNS06NuXeMSCKplHjrjrF/H0O98dVtEtsBlSskhRfpFjVALB
eBv4IkDvGA/sWbAtA4/igRn61sE0djRbztyL6nQKVC06sPXc1UEWqCKJfZEy4FEe6EaX+LaEJopA
wIsBybp/BkP+dqauRI2MKRB0Cm1sRVYQB6PmYqCd1K477UvNUxQLkotrwLO/wHFP3JyAKjJy8JhG
mjHcyw5yCs91yT1THoA0ay3GUHH12UbR6hG9B4/F5E0eUWz55LGrVuOeV0hs56yhk9xW/Sd49obv
sWlqb9mo7nkpjiyTg6Tid2OZ8ZUc8FKljPQS5hdCbfzsKxICBDcd93HJ3VylUDvDFBtBVxqn/lFX
Ps57xVYmODrppFmSBg0+NnMANVlvjrh5VBQwhbRSKirpvo0kJJsDGEeYaouiWoJ1KZXVQuEASb4a
AKV4cqPFyQg4mDoMzpKlSZqoefU2oMStvKIq52x1iQw7jiq/7va3HJKJl17+o1cM9ZlDLmzMiMSK
WT0o4cCdRkGTPS55FBLkyESAfuFU00Y+85AG/qBouio/wQNJETuHg9aepmT6XZO9ff/ihs5eRFPr
8UoO6KycQlROLZBBUc/32ro9T8ewGCBURG8ZoCqCXcHX7Zjtu4sMUyK+npwsNDErGJMnDZAtCzKj
KIEYsETRt8siqMfLEdBtm116oQK/xwbKDC5FVMiSvbmGjOBy6C2uXMnSKVGu7pm3sO7PtCGoGDYg
W30SsmoO0o79rRMIJK7LjdA4OFMgkk0KbvNW64il+o0zUSt8L35CoR8N7FfIDOBW6RKCU61rj3eo
ouhvNZS32I4pDd2c8tMreQJERKy3ctpfPLtpKH5Kpcq6rK5o3vlp4vTcxknPc444ReZ4f+sAKhXl
VZhj+lVNDwMobOyvM4U0MVZezi6kUYg9EnN0ndTOcYjEjHljkC+zkKrd2GBSOhdTEna8Y7XLbo4i
A5mGwDT6byI5mBAJd6oBbrtjD5QjdnVLhy4iM+2xFI3GStMYxjj7faCpYXnDQhURH3tRvrHxursI
ysKlFMkN0GeEj9AwLvrVjIzeln593XK1BeivmIc9Ro4Jn5FTE3lXpTsNdYz6KFvz+f1NXD4p+xDK
FwFNCTuHZPEGisVw3CYiAgciS3vrjR/mfsG+AoQNf9h97+uS0E6+A/uYVkRhA+It/aH6lLME/2zK
B7Z83iKNNlqI7cS8VhZUkKWEoPjO6rFvuh0HKhMQWYfO0lPCKS74adI6pqbCZrUCpvHfj9FmN5jh
Ljckg3XHcq7X9pwiVJ/212t2Ps7dq/jJoruFcQ5VYGkztCXIOkSN4PkxWphuQQu9BV4h1DAn2qxF
6VamP8Q5Hv+FBxwGRHEwsOviKA9OxLwUI5NmaIvlXwzLwWMtukCkMJwqwfy4t1r5AYHG1Ixqee5s
oEcfFp3fkoFNbteQVmj4z6dDI0rhuLSPF8ygTvjqHNXRgrxz8oLCkXOIcRUwzoZsFjaGHSQMgWw7
43cu1SBHDkfpoa8oYbucHSYQnutkrPKPF7RnnK60Z7d8+kJFtU3nFX8AjP+YtDdJ6ll3165kuh6U
nii1FfOjL+IsE2DIWNV0SGnZ/PY2lPq9r4UukhImUagSSJanmMFmszHScthAP+8/QbmSDLqAXgiZ
K1vhRsfmoON/YY4PAy0W03dZyEgFzoE4+bCEg0wP3u6l/mO+MtL07XH77jgLMcUpHqAQkGCqGIGE
2UJjp3r2xap4XrfQfmZUkLgf4P0sDuQiQie6nlkYhIEW+PlLAg7aiUY5+QnKUHdOzoDijVwZntgu
0TJ0DsVVPpSvzg1qLIIM7QjbZ7OUl5D0dnPB1K8spkxHCW4QNe4BUcbiHCgT1JLm+rlon8aHeE5o
e7mA6/FpgO4B4GMbByaaxWjuC+NtytupOR4RWN+EKFcDNc19H5Ci2KHrY/pTHHUPYxLeB7sqS2v5
pJJS3g1YFVhJtLXnxG/0ltUydcaVI2kcW6r9yne9ZJa5lAbZcdUo+vMTTuISWvUmNQYFkAb9Lkfv
WHVg9agnzR8ErGttIS+G/YUT9l/y71YATUBrohrfUU8N0UiBXf06w/HVgKjKpX0v8Nw2TAhGcK6n
NwBqxsCRYGWZ3yxUKe09l30AUcZ+sV1Xqmab2zlmmD8VaTX7fersEPHITS99JrX8Se2CM60e2Ieg
/1gbmGj0+te39H2PGszNDz9uxJLn6eFKWop3K51Ddg51MW1HaoslUNvQDiW/KTIcR+AWDWyFIKmE
1tvTifSTWf7b6DqObkMfV/pC5/33sWk8WbNK07G6++IDDHVfGKDjGmSxUMe58xCXN98BP9b8b8qp
ku4yJ+TppnhMCSEjCYVWnm/CDimMOWoQ6KSq+LpGm6Hj5lleOKBuvXz3tuw0gSgJNbUZbtyXseGs
Xp1wrrYemz0udSA3RXGCihlirMSC5rfNXL+NSKdnHlAFBeO4yY7ZL68ZS/V9tyteRjdWdqYmv00r
sICx+pb6OxD9XNvE5HLxT8E4KSykZZBK+XMia6Kqgo14jb22uq+9+M5Rp5fFWDFCQD+YdC8aeoTX
RiFGMSF6ryQBTRvxYQ/1jUMbQtuUPA4o/aKGi3bWwoxORYZU0XFOEGuvjp4bScXht2ro5GT9D6hG
JmFuj+AkDHx4WvRvXG3HPbsKfJNuVrxBm6OJ0F/MCZyi5IYgoPa7Ejb104accNLv6ps3/zBAEV0r
0Zc6rh8psK1pyAWWChjT0lzawKSiN/Us9Y36KuWchdBAlutrYR8y7grD6BQNmBlfPcRP3IqlmYdu
WeRfdBdh9MpqbgSHesvVTPNzUBK+ylYQgMrySDGvzhuCadGXx9I2l7IAIvaz6tQWo15F9cQ3uBdE
MJ6gud56pUZlocaTWwrFQnj9FIubsNc25/3gn5uPgZdho95IiLni6y0A23v3xqB14WS4Bwys5VQh
hykE6vHJ+CxEehnxahnNSvoufgulNZsoAESXpMb9tfEr4Nw1Lg1nn5U6+rn8INkrMv/lA23SBfUO
iws9LgV/VrOtrftjKwMAjiyYFJ62n1IDeQ2WbNV65M4QZNxmO0yhS0pdFze2Bfiltbh+Ga0pjsS8
w1xsqlx0ZnFq2eqwMekYrv0PkVwu+++qnGvoe3nNVxinnpXvJT/a6D5NOMDKaEHZV6Wb0x8fRjzj
xlANVG7Su0Tqwhr8Zpel7dfxUVxMNxi0oQMr6V9Rnr2uw1VA4t0AhC9FLoOURZnHmCf1ej/EP3M3
dm6YnO+1EwaRKL05t679p6iVKrc3eJL8AzFf+yHIXiHoEVkp7jJuoVGl5tcsidnY+qkEEk4CZFzr
ZImH8W8AvroJabkZ2wqvWv04SvCBIZF7zFJjYvPdNknnHi+W4B/f6c8b8D9sa7tzdoLonMZk7WtO
nE69HHvnLZSeQiSVYAXYSnEP/nrQTzQI0nOLEMYvzlwr/Q9VKyVC8K8dv7oiuoyyBzzSPIWU3OY4
56ewvfcMUu8zw5cCJ7+UxjuWystZUajxd3+KFFMSXAO3/oQtiOFA8ZvLaejhmM0kevueYgGlsbTb
poGRB2lXuXnh5xc/ER7QybCm3/gz9mynaJQuZlCCV+wDTVzgNWdlRUfKNTaAZY/C23qHwxK4yNUj
fuh2/iSBPZRmG8egleWQuAWnm+Da2y8M+tkR+Dr2fSSum27rVXqW3+tIUGbc+v5CxI/PK0OYKKgf
jNeuOeK2VH0Nz/JXOBouaKc2gso42K4FlM7axs5j2SeWkQ+ZPiwkQHBQXT18HHqaYeNWC9Ii/fWD
k6LobWA5+oMtklVRT/HEooks7FMsJ67VeYjcJop3GnvBpbxZHHzIkeqII4qqq8wNM35uvQ2gdztd
zP0ANym1cscc4LeRFQKzyOMeT+XzA8OGDpttRgn3OJIy38ttk4zu6Ur5+vBDOI2jd42yMRaALhAP
5dIgQx+xwaruElBOPsSO6nPG0T41udsSzGmlKFpMpNtfez2IyktgwXxN27fpTo44ctfs3+H54Sc5
xd9Ao/wdF7UbwGrAL00crw1Vf4tyR2WL2lh0l7u40KtpWQsznvayUlnmUBrwfA5ZaX1VQyz5LxdZ
7P0QAu0OnZTB1n1oEhE4YtLqfI4Tviof2ECfBotkhCSb8A2z7rawNgttL+AY8q0KfBwTComEWY9E
cVTvMbqsnwD9plbcJA5ubwisPxuYOEMrCM4Ta455wAniuikgzktLu+qbyJxixxKWS41XNRhcbUAb
lpa8TJ5WUbmX7nTxs+9muC1buPYblDmJhDyyeo2CTbxwpPO5T/epTytO2L80f2qsPRH0PPho2b88
3f6M1TdPe16HlKDUv+qC61oMJqROijz3eITtki5YJ86hoE8g1vATUMWtkivC/BkGi9IHzgUF4g89
kZuhFL1TzGAlq6VJK9ohp1zAsok+3kjJ6b3OnczqMEe4XMQvG9gHQu+XlS6dN0BX7sCIRPk6I++g
Qy9NAIf2sHm0Xom2VfSB4wg19fdr0mVr9JHSj6j+JaIj2o5QG8fW4IHTZlen59YMrQQGwpiQCPy9
6gx+xzrL7srfdekCQuuy8FULlo1wIXljDtgoLktSLX48smBKaDAoJserWz+O2OywAOsrJBS5zGJy
HONHAwYCr7B+u2HmVBV4zBHQ2lKXFQs5llcOaJZlyAnNUGyHzk98whn8faqA6mmtMdOGpofG/xgL
ttOQrldNE0TT0+IgfUZZXs1Kv2W++95/SYOMOXZlMDjtVwU7TR+9tdpDAsnfLoFNlnePnJ5pTYvv
kRPLGTGc4dzTILCD1VnmtTSiz+905bjxWTiNgF9KcKK1alDAl3jyOPvgkMBQYzjAGzAiGMtu4OOK
VQw9R9AvheVygwZTloNO+1gWCqar55u00oNOAyyeJXQ5Xx203kdGYI3+gaGOEjYm3oo1Lv+Z0z5d
QMDikYEdMYHRURNzB+YhT6TkCTQ1iOh0H7bsHaYsrcaLvf1Q7x/a+govf4s+F6e5WOQAGQXv+HZK
xpNws19CTHeB54pm6bT++4EBwa5R/3omETNF84kzNTGV2VSr63LvbsClKsxWw8oCz1tJZ/HW/HbE
Ba8cHCB24o5RNUsoUZikE8y/kyASwxZPcpLbsQpxG1Ba8PiMsoNL6D0205vo0j6yC9wu4FkE+mxk
wLfPwsJ+QF1J6NPzWLGmeeDDTnJUey+Tb1cSyIIsllRs55gCLoLI8tNeJp9kRXeMDZOZESmgTEN1
WaGX4/Ym5CbDcN8PjCjRXecbtEzHAQDG4AFpoXDpH1bNe9LmSlvd/smRMekRSwCjVM+iKpXN89MZ
BqZX/i4U8ILUp7fGRQfgNASgUA0+vRipLlbprzYLULEPW7ksePfv/P10ixPNPas5eCdbRr8BsV1e
m5b954V/kPKYwDRtWErRuZPOEndDgXAtbjxWB/5PlX42uwwficolwH2kLYdOEHFfzxMMYoaKkDca
2YDCXrtJHNTDKE9XfGt+02QHcZAVb5EzCbqMukiZyMloD4dBjqLC4dbEV1hybc9wuycOASA5YBGY
qK3ASpGadDxbnmIbQYVJ5boHMQMilymeAdumrcKECo6pFHU9C7atADEfFAGwsB5UJP2tsEUwFsIR
giepXqE/BTzkKmDmU0pmjA7pqFQ7zXQqhjyKoZa7CZwAZH/uE/ZFMReqrs1Cgf59h3wmPTvFWY39
JJfqEq+oPxqlpIPnEg32Emdv2Cbg9X9m9vdyu1D7iHq1hXYx+aHPre8NufOACT6WeWBxGam2f/NX
Dfnkhn8D+fbea7tg4mJq8fwVzkJFOxymMq4ACcdWkwol3NHyBsLCujLxBAuiPYxH0un7UB392QSq
a6Q2Tr+f5L/CIMFLpd55meOvYULleLlkZmE9PMZJ6lNtAI/Ufb8bm/s6U+zhoEfgHvRWVVs3+06d
2OOLyOahju1EU6oBALJ9Y04MgKPLHH4sNeZ0tmUn+nESbzQ0O/8oKobbuXRSOJVb5nALzqkJ6y7g
x/vBZ5fhdXboJXU9hhtvsPhrKEVjLLWjtksAx843oOMCaso9vX0MzjFkpWZSvqNuC7XB/JO1kHeQ
t4mbt+8sfhxVtPEajh6/Xvvp4qxypZcjN3gNa8mTgtekrWuLWex5bKVQLrS9WsIpHXWeesanMwPH
rr0hkl9LBRFiJvWxUjuDT6JGN+yjcvTfOjMp09iuJG1XnDvSh5kTFPyRojdfLaSsAfnfiiNPz/kt
I+9AXrkRwhLWuLXIvzClum6gc9ZbF0oRYlB4laSSf/BAG0Zdp+HEj73ej0qUWN4xaHhrWHrfZkDD
r6WgBtW8GvRFYuBfKftGDOVVe4r5bCCXzBORH6YjUBbDRyj2HNaudo2X6hHlFNDiPe+O1hWEGS+o
wji6fPlumf14qcsNH5NBteplCmv4Dp3N9MgMKyuXnDTLw4I9TJcNkwFrwkyG5XZLS0VWWj1K7Z3F
5W10vAe+hR3W79zgqoJtkpaMZTuzkK5y1LUQW2uC1uP3hzPkPQ8aHFbK2uOaCI17EVDjzIuEcXm5
PLPb6oEccC4WElOlbzvBL02cmDBlWWFlHu4Ge1KQCGBYMQm1zov7aB8W4uGmkOsGjLeqJYiqFnT5
2iRnDkxXY/cBe7zmtd5VrMkiDmRhX2VRwhCqfudRl3GL4GAo45z21JH1gDydtOkmVFR0YyrXx/lg
HTKCUwdkvDqd6dHTbsHIc1PBtDaeJswDeFnTaJJOseZLzjVn9etvNjKe+cIfQEGUEUx0/UxkkY5P
no+S3fWyTjvhwxs4YLKgyjjsBUqn0m3yH9qnKCEgqEpNitIGV982IF9rNDkzh6SJ7n9ERbxNp2HB
6xf8498P14KQC2THOGTEvC2qpERrjW3pFIa9q0zF7mZAkmsxDpyIx4Ua6UhqhwlsdHtz3kM7SQ2D
M5MiLxTjWQIS9NT4ck9RDpBTPlwm153vC4PppGXBmgfPCu8nzKAymM4B/gHwHVqifTdy+smkASz8
6szIfGHWfyEALxD8OXLgwDpg91RncH8ioleQZN1P5NvCmrfDe+7iDGtnzqvgPv8jo0NcFgGX67vT
WBjjRVaJKygE5U8aG6IKHUG1GuRXeh/RzoEy3AzQWigImum2knnY4e+7OLLxuYZkYEV800T8ylDx
JQUnBnT4dTU94L+K+yA8nUuwa8xXU/C5iK+ogMiLiNGUAPPNxXI9fbPfBEmWQvGWkUa9vg3iEW0x
U3oa5XndK1GA3vftXjJuRhAgB4kpWNb/3oTi7K5FGj+5oh6GPUsz8+qsoQSnKBgSae/la/ORyun/
PklfxE8roqpsSF3zcFDmXSMHStWbaxPLG52c3DjLkAnzVzjS2q/O07/IIMk3Zxc4x8EWfiICaYKA
7sonrElyOGDTcGmIU4Zjlu2f08l6lqJYNIkEQZFH09oz+kN4pa/WOXiEhSUMKyFI94XFIbU8FbBL
QcIH+e10pyihZ/JvKY4AzDUCsNPHhZSgDGjuRZ3OFsjbqjQj+Y/mejywVsklhmESSHXygDJAYIQ2
Csrmz6jb4A/hba09EPzP54mxdqD4CB+PpW299GlCM0yKTUQ7poBjASErwZQs3ItIMHM5zXsK4HW5
Eh7LP+0LOYuswwNI56b4hLrSrCfTAzRteBfYBdOwLbkhYNFOT13eb8/vdhXg9ln356v5x19/mhFe
Q3HRcPUZHAqnJE+mjem1RUbx0J6DDIIxPwHtEyKnGD+7A6/9Lgjrn4xlD/60kSB/X6VK7XYrwwIm
YRdaTv4ADUXewdh3xdTg4wKbkE7cGx98+jraxtUVKFXhGFYR5SxWGMjuUPSJNcJ3kgm9lphjTPoe
WiK991osiRAMOCQoMToaUSb8nmJ02ryO/occWshMGflbpyY/ybJe7IyXgWnzPxCeowqTPTKXA4t1
xvvYFhOH0g3ePfKI56fA8z2+g5kyQT/woDklJFJZJ7Ug/mL8R3MNb/Wgy7YbCbqt6OVkz3dGLK9y
jIBRhQWnEIGQLsPd6CArdoMqzVAxYy/YXr4yybHSFMB9eKAQNdqV4UPsTI5VX6GPlCNEtM9Wnb/r
BL2L9snohrdLeWNsFO7FCSRoEGHxj1iPwTRVxEoWajAeJqpgYVR4b1s+OWKz0Vi8uV57xnmb32cn
yhJrkfeV+EjYgXRo1ndLIevLYY0Xz0PWSFWgq1h9nFUGImiDG0G51UZX68Dga+KmTjDyfEYOdZNw
u9vFieIgbRNu9UrKUIDD1v4wuHvBoh1NQVDXcrgHkzJA6K6dIG8TDGXtFLvF3cp6BWpxys3bvXXK
VeIeHbKJD7PRzwEc/Cq2u6mxb4y9tRLYeH2ekVBER8hS3aknC7W2C/OSBr0OCG9Ew2zOGDZJryJB
y0nYuouJFXopW2X5DNM9oz7MQsOdzKiNt44XofD9bbkBVWVtJYQ2MW6DhqFgUtU3QuFS2UxqwKRb
4NV8ncFQP8Ot7yvGMiTzox/fSP1sZXzg9LjJxiSAYKtdz3KiANmYfQ3H/gwbwpYba/nyW/uvqKIG
px9wDVxBYykWoihQLYi6RZUHYsM0btNIt6D00bnWSlWHRVhj+y32lrfk//+HxoC/q+E9Eu1I9QAy
mnNKcZRqaFB76PobvrQanEmkPeoGdlL0bMzuFG6ni9D/1MQOFjAzPgYRBFNcwxmC5ouJCplF06wX
I2yFeAtWjNhk9kQflewQZoeLWUF46pBor9Srytt7vcoCHF7MsaapnfY3eC7yr+Wqt+a9Wdewqq1k
h6YmaRnywDk6mPaKZyXPVoqLI8eSEjn3ltE9sCjzI+HnmkrOikSQywTmVTYdxKFJE2xLj2p6jG8o
nykt8WZzPyhUAk1PorTJklTy7f/lGH+mOHZOtaMOap2wEuOeE7GbZ+HyoIuY19AIAjhulTRTJlSj
VXxgW8zSOTC1phsHxKRMp3PydGmh1sL2b5PpZ9okdWB+g9tt2+CCQLJwvYOqLLmEn/D3Ald5hzS9
Icxx3g2Ze1qsvrR2kVUoLmU1hyglJIE/s84jVisWLY01wPXLUqbXkSE6CgSOyl7/wk8yEtIBSS5Q
y7XuD5WK+ZEUVWsKT/aBnLbatWEotqXU0D1Ul5KD0Ned1I7ZUjeDkfIXrDe5iMzXbjZ57dcFGJPM
C/qb9f+ikjA6ZEY+hqVfdoi+pH3S8tn9q3vyHGlgKj8bN43sIPKqMIzEe0AnW5NiPgTq5+3RVIBX
GUE94IHY0Q2+k7XNTj86p000ji7oJ1y84En4kqh5n1m5xBdZdEloiRyRs1pdf9rSBjBX3tVF1KDY
G1Y2PrzE9DDCdDpsRLPfQftLZQ0quqMDCCw0FITUABXST/rUv8nsrR0SRkVAb0pkOjj2v+/R3fX0
vUra0qEiWIB9zpvYiWdQwnda74+ldnLxg+P+gQn0uZLM2NbG/qQEc85etaVNl7sNdm0GCqzpvmrK
8J3lB2T/8aIlxigYVItG8tUaZCGuA032Wsnd2jE4gxo64U01go6vvjXLziYj1cYk15iC6rZz2L86
nixNSGkd73TLAZ90knA1JND4ZFNlX/UgcJjEqIF9idOKN/VgIHtciQISudNYIV2pXcmSexEu8tAx
hRcT3gib5YaXgWjuLlJblohfPYi/ZZEx3DU6vMs6YNYUkBwKiiBwiob1iPnjI2LprrPc1OEUiO/5
azrW0xclUY532O6dX48JOv5ky98HnZ///xUtuHaTizzmT81E5Zn0R2YwYwBRl676eeI3IZ1FFcEV
hZqLp/sp00esvyTrs+WisDtX8dDMUPlPcOO2eKCjbKYI111l70bOYe6dLmjNCm4EfEdKOobP+sTH
1JwLEoae+4/VFxT2rl22VY5HGaLmw2LiBMhsR7X8cukgb+Z6BBT2zzHSfsiV1V3MXYccC4o8yqFe
1RQub0eWihhmwWMHMfP3FTVu7UVVRLy1qr6i+hTBcxeNadYrY9RVGjbxhmjNsImyvLTgzK6MGTk9
pq7koj0xy2iJ42l/l7woY82IVQdXeph9HMbTLaHXpNAcYnTZm6Gnpg+eQr9Hr+FYEufynudZ1Bxj
VgYlOPG1q94Re2NR5ccr+SgfuTszz9E/PwhY0NE1tEJ9WlrTEqJwOCIJlwLGCQbD7Nidl24leBuE
MFAyO07J0uaCg6l/CSsZ1fK3DptSY7fFr9iPjv5Ohz+MiSTiMQuZJpbK+SzExTzf2B/zMwQiqz2P
+8IjbntLxf1bRNFe7WoZdv3Grm2THuhh6HRqLdS+Kj93t8BI8JLW/MQM3SJ9b18AsEAvrXmX2V4l
LneNpYR4DHtUPxO3dq/c6KtVe/udiRC2XK16zQv+qz/O0cBLGEEnZYbuiBjCrm+tUwwkfjGB4zhG
WQ5mES1WO4kVPbySUeBHDJNN/oloZclLX0IdHinYuJyZc51KzKrfUxVkaovI2Ep737kYPTA0ICbO
NaZ9acLX3WAQdJ9+SgPVkyvhZVDeUUswRooCGcinXsTxh/EjjeVl83oJSWeMWVg04U0TrlB1kll8
4LPpTrOeYPnCzUACatVonmJGX35kGn42Ide7WuSyTyu0um0d/Qjw/i5zqtw+Zy/Ln1NxXSEDuyqZ
zVKmfZoSnj6Z8dQU0lfIEjjEY1LlHdyv1q8LJZTzVMpHs5lwCWJreimAElw/pcfv3W864BVY3hJm
NYDByGBjXlPcxV67UywxT+wzB10RUmJpnc5LUX48/kAujC1/eluTbhDTQhG514Ktfzv/Bd7JSma5
1fNELHOZi+Ylop4aDph2eA2miZZ+RszWH11thEXq7rQi4EIbaL2na5t8dd21JHIEc7HC7myFdlM0
PG0+o+UEgVSRQeYJbFBk48YsPpno+eHmGBIz+z5dd6R2RP0AZxuhkSGLCni50l9KWTgOu7Yh3ZXQ
JQSYMuZbZqguu0v1T/bxmdX8TlHMw7oX05tvaIX+Md640YOKRdtIgbUsBeKsLgxf44B+KDeHFLSu
rEb8h/pPYkyclGP1mIAnjsWvTzkdWLjejjtxOgxt1O2videFeTVI3lMC43ccKEtzGG3NsHiWPDjD
Pwi0+4IgEQYNlDWXn669uhNoCi0+2LHh/Z0BFox9u1RpdGGdP2R0RZ6AvB9eXXRZMMiCbh+r4v8a
RB/08fcZoE+ibkGiGB44wdve1KgcMQ2z2W5aN0Qehn/qd0MTrIP7fwS8VXzaR3RGZsNkdt/1slsL
0zICWg8FdwHEow00BpOx/Pr3oY0kXjIJ7zOx2x/0h7ZAP/C74byjbxx09FUdd+lpBTM1gItt8ZLN
yslJz2MILjvs0Ssm1X9vnSV0Wxnn3AmaYAOvBaQN2jq2XuaNEL4f1oFy1mAjONDcLA/aTABCqH1Q
YyukeY0UsPlLi5bLgTlR1xgt35BrIIQgN2I3VLtHx8rcqTwSFuZQ4633T1VhGtBVCurW2xJC1w2Q
DBhzqEMQj41I2dGNyuGFB+pQ8mcozMpexh4pOm1+0y9rRmFuVxXt67KKwFTVVrIsPhg3TDEW0MIa
lGu20oYmJAvLE/AicCaOYZkiwsWE+Qu3cjlkb+esflZkaaBmjX2T5UAQQFn1r9hw5ax/mXHUJvnZ
Caho1MdLkacdjuqHCOQj7OgeFqzxpLa59DmCfVUmpbv4Xw5lg6sVlqt/Ifm5vQ57LjMxgoDun1py
JAbN3cB03tOu4RZrUJW1PzM5RTUjCuzK2ohPdz1BPhazAql77PremhEg7+hhk+V8ejRgVbAC7YJL
zc/XbZ0FuJ9C/wnK/yUGAd74QiIrREfipdv1TCI2g/2vNFWcBvwdhgtp7nHR9xyWg7owIdz0bhNw
+U7OdfwJwHatB49MKBWnJ3ciLxKxB4VZgUCMw/v3UtnWPYbZy9p9r0jHGtiwb51A8XelvKoJ9zSX
kf/OTfjAd3fZWcBmcpof/vkyKzuC1Okc5l29dJ3DhIX7Y37eqIcaGFSZRENFWzEq6gH/Gb7osLkD
dQyOTF92sJEg0NHAKK5SAIz3N7SiRKO+nsrlva0+SrNpWdxO4Jl3i/p5Yr812Enus24r0mYLL9J2
sRsYbygyOIWxqMtGBQPV18y2VBf5oup4PwUCQ8EHw7kUPlv7+mvTb1Hl+p8q6e6uRNTHcWXmLI2d
sxsGQo58+h4FSE0KqeAsY/CnXUiYbuy+vuh8QxYNaL1pxxwrsnDoFxvszYKMtYFQn4plS20Br5EN
4e5fjpu3CVbP8a6xu/rk4ys+tmy+hmQt3GxVSxER5XvGFg9Mzd/32Vo1d02hOhsQlpe1GXXx0hHQ
nNjeCGAvVKc9CdRMODXxnuuDTUtx9H8++x+xGsU3618PLk6RBHqoCuFCWkaFnpgX8tBWi8hTlg32
Vatk4LprmhFBxWS25lPN/UuEFhrJkC+JV/Kddnlk+MYWVfH9s7y4mCwTVBJIfBsUNt3P7Go3RHwL
sFPw//VAUVzym4PoNQoK3r99s7TlHc6eRfoW4gN4Ru4F/MDXc5lfNmWcHVduZE4ixWpFdSrrTIQC
pQkbQZHWB1GDX2fj8lLt7+OQ3JkPWyQiTGOQXf9D4ERMH5BiLxIYi0SIZV3ur6UXGWlcDtY79/nj
gHPLD0oT90yCR76dhvthLjPV/gyLTO/auoyKpy3PFYUtLPLbWJypvS9UN+HSMaS9Kbdi4EOvTb2S
6NMugxeDTYd76gYts292ViQzUL8l8MS3EYEl/BD5opOZXHv5cv8Z0MBVa4hpkSwF2cyMwYucVWf9
UPVi41LPSJKJU9tbKNodffiPODjVNR4zUjeXg/KjdeGUlMAKJAxASiYiwddO3LRFzFBNFFZEMfhy
7zvFTbTUkYJBVaktcxTDaAGHTVaGyGGiv6eDa3NnVBI3r4pqn7ne58Jud6Xdq55izvEbYasgsJk6
Ypixg+dNMdC5Pum1oLiJduWD6cttMvtysNbWkYCHGhiuJtpoTImYW47Ab7Deaf/xRoCrGk6rzqKt
SihYNHEO4q9ObalIPfxjqXjkS9PhQDivKHd4HzHhdWbqzQ5IdSuH/dAnwe+URn+9OYfy0DK69IsK
r4i6sevEhR2k2hbVbeS7EfjmcoGIUgVVDjg0exDWgDdYAyPRl7KcETAHGCyqIaUxl69dJdgC2EYX
rP9Kb5YLvUkq5ooZ8FiXOj38LWF6BWz3R6cHs596VG4MTZXTAFkN5dDYMWg9gCsUt1SQzSv1zLvf
hTAn9Z2q/dgokXGxBsBAwfNSVsC8VUvuob2hawLuO+XAldUHUxjK071qVe/o5lMpWlnWgQPq7030
lLW553ki1ziiNlyDrOdyPKm5zP5o3rRHNFcdCOyzjbNjbGdaGoqWjSy9YPr6iLSpwrhUJQWhyivm
m6e5PlS6UN/FBSXw7qgPFBy4KSOdPjC1pgXZv0NRJO9cPn8PBYib9bL+Q5q88cHs9Q/kftwrdAPV
T3nt66/ZsGzb9lpcM95d93WvpDG6g34cqAfH5pjKnC5IehCDLXXghbUlLT5FOZ57Y58z7QjWzYUX
rVd65a9oEg46QXUF+EMbsOS6sCQk7dbltnIeL/xaoXGQpjJJOqBAMOJej5a/LcEi6GsKiZWinoxM
ywtI6YMAnAxuKatlxqqz2lcxPB1tkCaJ4TpNHzIrDE3pWqholuXXXnjp2aHV7A59Ti19yTMb+90u
6HIXnmPx0XTIL4JyIaQl/yGNPaMWgCGdVJ7+J00I0WGlRwuNw49vLial68Vw7vobOKHUgYAPyOKM
TIA9HiHK7qNUzlk/ciwvewgam1SM9BjrPMuuboISrztL8GOHQGD4zdlhWIZSNF0C/UyBIn8VS5bB
KqwpBNxdACbDaEcpIsH86Pyl+NKtyOSpjtbRRRNYNUYwpGmUmxhGSOsRFmsAiTetCDjdttV2hXe5
hLb2W2jB9pf7u96u+0nkhCN+6L+a3NSWtjz2ktPNLh3ZvQcJGNcnLnJBF2ZFiUmc82piq2i2IVMe
+VcD3Hq0K4qvs21AEb4EPvpdIdujPNE9AzF+hbQGvD4J0syHxG5WpJ03x5BhiRqW4gNAkAhmt+VD
+ssrH3qceYBSyOAgGe04vkcDNVBbh0SB+ZR15xlZkxlQTJxwbHpmAAHqfrtORWT1/KPruZRIGGRx
BaPSccdSRj951f1DutnunPge07dUodQbOIo3HDGE2M5vEuUdjzjUwG7v2GmYrv9QTtGU4McUYqT2
If69R7Mw5tc/BWHNfja2n+ZbqMGWD+//kyvXXO8gUiYEeIygB9+SzmwLQDcinVESoAVtJ28lspjP
rCYxaB9+Sbu6nP6IXsWbQj+6MCRURmLi/wlLnmqeolF2GwIhaesqg6NwtYOdoHEjk6jBB2+gk/hN
baHa6Wy1IOFWLQSyHrc+950syQNnEAKNfVxeTcZ3qE+he6nvWs7vU9flTJt/k2pFbDiEn8XHoGuE
UPiCXBNKtlniq/nHSC1i9ddsX1fPBKMeBpz55gZCn8iiZJMVdiRV2osTCB29oGw3RO9NBpKKB7WJ
BAYFHbFIQRfs/qwTaO6b4R1OGZCgvOsdCYzE2osUkg4cB5LxxmU2dRPuOrH3vQpZ7geP3PT4uJuQ
KuXKIHlUXIjBRr1A9lnM5LevDpe5dGb3L70JsnZf0pjg7W86ataT86/XbYbk7WSoWjbuUg0Uymsn
BtB75EqN3GUH+SERjW73HMLNkFZ29vPjYIIQ+kxIboU2HEm5WNR4opZXTeovCpVin6iKosY3qYsg
+W6Cyh/EYktLMpFqx70wqKA1iRcK6P1bKp9YndHAk9cWz92VOKXTd0ZNiNv+O7RP0cRtAVgZHktZ
l7/8bMeu6sV5ACVsIuBd01+JBv0au9GXcZAF9SLMHthH3Oa7LJk+G59j0HzXni6sr0GwvLEt+dr+
GDc5W57KqHq1AY2D+6+EgtbReiX0kGqK5YEykV07LzyCp5JTKbn1N5zgnP2+qZB/FUOqQwa380FG
mSwDCCbQgkbWV3t+lSaulZEqIASUPBgPl33e3SEar0IHPHhvTDXfupkFAvr5qM9dcSBX0JIpaxtN
u1FqjZ7L8DciyTVa4/auQVUWxvBr+/hzc2glYtHIy+WGZFocE+L3vuIcHEMVaqBHgCgSLbGDeCqX
N5D837RWIIh6n8Phr4oYB0ka2IFDrlwGfHBGqwhqxJTmiuPtIjxZyw0let2UDhECpFZ+bc/qmAuq
+VOdJGs7XUgzPM96lLYMfcFE3NboesW1xNeevvgfww3qYLklYHtpLs5KtE+fg05nRP+efUmeq94G
nTsyb1ug0mc2Z8E7/jxuODBXJNs1BXeQ4UkedMYZqxvYd+GC3De4gCe4b0xINAFm2KAmclrLuIQm
0mwA7NpJ4TJwcFizwuDQogKuzHvPic01iioIst5/fKy9tLvxnh7KwoTSOUSITBXTrocOwX0pns+3
Zd9wjPEzg+4qT3iVvDx3bAz+Jxg5yzT4sc3IWK2trP44E+D5hju+/WQmA7Nw77ZFLwiwy5scCF8y
0jL1nn3ikbhP/iiFh3UefXc27rQ/mTwrIMN7/cbMFfhgeXSeTSEsrZ1wsrTu3Macd0DQig78Ia01
nl0Gx68uhHIWhKnCrW/Ersrg54egk8DTVyjAcBaBwZSEjtxFSFGpSe+aKj0TvCi9+MJF1OxC4Ge+
w3kdFQzLNEJs1k9ehVpAWNC/LGsmwyR7oUzmMzsmRlFe14ygbTNA3OIAto/gZjfT+y+G9BZDR1eI
ZeOrkUenmUoX0GdPbT7e08zJTEeasWmiwhi4Ysa7Z6wIh7auB/1DRv/MGSbbjoc8GeUVT3CAjBEU
W49IxJMVCBc5CfqAnwAi0KcyiQxHibt8jQQ3V70Q3X3xCBUA42GXIvUC4zH3jd47b7NDq9hEOIes
A5AHWVT9NxtjnQDsMpdPUP8qLHsvKJ5Ih+ovfRlb2VGDHjQOQ1VjWricutrL0/Kacl0fEQt3Nlh5
9WNrLiMUz+X/intbhX7tMlvQR3jg6zrtpYHOM57mkomoz+Q+XpRjyaTWdup52s1qpaXiK8bKPk2f
R+CJx6hhJ4WEb6Lh1oZouBaOVJiLcqMRda6QpBTCsRNfX3UG5rDZ+Yrqjhml/ND8HclMxp6JSU2M
C4ARNusIwKLKXu9Hq5UF2u2675W1ethfDEjuh4dYcBqZ/Djm2eeSSIOGWcGUaG1hTns8W9DUrimj
Fa5nYI2DtpdEpTipUyZSBHWExiF9QiKrwl/KT/xcVDudQJixY3YIGOZSQjxULNr94caNt5Be2hFl
6n6xNBghpBoQ+8VfKqvoCL/CYBqH/wOsTg49YHGFpX47t2SX4c9/JO63tvz/I6xeh/UcgN/TXD+D
J1/d3nxmpDfC0Czj0hlIEpzn7hQoY2kjlNfkA2jvY18SW25iDbUTEQMVZ9ul5tJcuVollg8zaBh2
m7LofnKZvFpqV01FOw3W4q/bHxES5FxRUPQphlpS6rvH4qRM4dG3GzRT57DIAMyTrZ0CBvyCQszu
OGTDc6UNGZk8bylwT1g4durrxTzWoSk0N/zq3dxQsoN7uRDhJuj5Mm5QeCQSq/bvA+AW7D5QiT7l
Pebk5kBuGEfDEDFJz9scLwhEtsRENCEz/xagu1GLJHClzYBQOESbsYUy9aDwdN/A4s1PVsukVykU
akHeoNLLwUQdBVRODBwW4iurZ+Kxx2fVTqM7eYp29NvTvix9AAYW2TK3Jc7P8Q44uqE3St1x8/fc
iVhRxaX8j+EJ6Y838jfIXrjTq4wblW202x+sSCFtjXJ+qLPrlp2edj9eVtUUYJIGQ/SQmFSbTf3G
t44cWbeK8rXSkFGPrNBH3TBGc7jnNziioVaWITSW6I3wnphgBiyKBimPHuVs+rFXJcfUbMdaU/18
MtKJpezmuUlHSJ1LLjAJtoCS87Y6/6SREP98Ll/NVZzJbsosjwNOCn430A5z7SVAIFLMMFoMTwOD
NamESWLAhNU7+7FaA0IR5v/nRR4mmJOqyX+hYfF6CPo3NSElmDVbiSXH6P5ffLdbX1cLPXywUmAD
s+XsCUej6uqZeEpKqxPWNT5uEmTGJNtegUip5lY4wMP9+aWl1pWsfB2i+3aKOrKMW5xAAF096ZTR
Ct6s/vfUd+caVFl1ruCiwYjropgxfcCTO+9aWrNQ/IXzdFdM4JvFn+Eyj59pOAVrsKMeFMHIa3Iz
GPK5XaeBi4t+9NVNKz/mAKsAO4VBlle77fYbsHqUMjXmCLuYBAYhohPpke1vmVNdgYes/ZZVX4Ug
SdCmGy36f+fbmOjwSlNu3WlHS/nA5sfMXJ9h5XI3WBZIqUYEmvhKH2TPmc0ut5Q97EODI28u3566
Oe8NsuH4fHOdr0jfpTN9Ntz4bAkPznLv7XY1E6EtAZNjKRjKyrWWy3aaIgb7KRKaZMQeJ+0y2K84
CVdYNEBJ9ZjWNDHxUZcxcUvv4qdtx2NkUTvMhI2frRXs4RjnYEfVzyuat8+TcGDbMCbOtcNL6cqA
L6SaNUzCOYyRo19Y/3ZY8+Ylon5uNta9QcsG8XMmX6Bw8hoteHIwTyPn07ZKn0OHUrPwc4tTU8p7
sYYtXGhZ5bJbWteNPzEA4EZzJvRo0pWXpC60y0DSliVAEs07VqXVUjfSFXiNbv+YvkYWkGcXZOdQ
tUcfxT3sluzahRrOhf1oFuMKnS5AXYud6sgz1KKs0AvjOtkHpGFRGCKgJOUer5R1bB8SfFgoWZtp
Wu0VW+MGDKPPOEGuE80RRfkY2oxepLEAC7flvK3emUfu3OO7jCQo8Y1EOviSnDjjNW7bfJmNqENk
/cvXmcPZycmngA4kqiCuo+5bUHMxCcEKarEKP5hVoS6r82+S7xufTuqvJ399mVSt4CqR7iInooxk
msaaarwnG+gk3amB31UgrDRvp+jB/PpG5uolCHGj64zJ90PTZke0n7vBnvCZ3AcuOK71mRd/5Wko
nD855rlEpo/CXifBugzifbWCsxinarClBYd2sa4MvJ3h05rwXAGG9xp2aUoU6MIacm8ZnSL2AZH+
RWwMWLX084TS/pXeduor3w0x4v0xlaerapmBsWwRSJsmgJM2zABqSer8mottWG5qlaUB8p1sy1NN
jdnLjvIDpRL0Gzc7EDjJPOPcbrq+kaVYrTSwocEfznTwEysSbd4a29p8ZvBid7C5eiesQEBs88YR
ZBdPYFG4u0ryj5CNZMbTHKVfx+KH7k92LX5+PS0smjdx7xsPjYAivAXl821ivRfX3Lj8zLf495J1
H13oYwcn4tTUg2kl3ypVywVN5YkRixkpSLujm0j/3vm1rE23bv5A84GghnmgOMF1VHgxnVQr/oDi
1DXt3i0pUqMm0GKG6V6jOqwkJVDog+c4NvQrBMgAE5JzXEIEge00dKO0iIbXEzNAQbIUagBznmTG
du47fM7PQ3uJuKHusKo+FL28JCv1OeqS7SQHliHfgS8L6odNh1+t6aIBAqYJJVGMAGQW+WK/5NjB
SZ0JeXaujuKO+lJNEFEXsXkQdGs0SlsFmRGXQhXA6D+MY0mdh4YnZpipNm028uAqX1ZFTGckUgKR
yDQ+osTc5AQCKoNe7vkPSnUu7SFBWkv/i1TQVFP0lGGchXCCftN5kuBwfLmVWWYy8fxCKWTXMGeH
WEYKBfd4ng9i8loVE9U1Fv0l8UQDOMkmeBoVAjPC+ScCVe3vJAaTeesocAlJf8acyORW9JCJqiw9
p48mrPLwAon1Riq7uscpczGgEjdBdYtgrm2PQncCKTHduSyaCx6ai/y0dkkYnowATrSvvTSYp42Z
frkM3gDbwTNPAF4ORN3T3jPeJ3CWbz0CC7sTCfaruuYaxCjs1uBeI9uBAIrU1gRTOsX5pvdqSC0t
fhe2rsDVQdUosRmBMIKIQc3zdsUPHW3U/R7o1g+rY8oJBm/4ecj39d9oQw3bHeIpvu5Xa/ojM1AJ
Jb86PujwIoHetAmfJRZqgcxpklv1A9XZHCspqrRX/e6R4q0UohYZT4nloyYsr9Ia3j1+2EO+sQyg
siFSYk1GETEGy2z07r7crFZr5fBExvsP8ycYFPIb9BYY91hjQkBuUOUOiSIMLB8hh/30KyBRFIlN
NZNI4S6F9dEb3dzM1qIkQcYL/StBkrPBHB8NWRlvsiFbMvw9hPQaHUy6waau/q23hgd5TDBTOvnz
2X0saZDLyZU+34yzylK1cABRvZyNwEq5ZsYJdSqzOu6obyu0fRdDXi4IHX0MwKKLHVpFZkXMlVQ=
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
