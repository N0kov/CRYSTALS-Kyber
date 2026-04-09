// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:10 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20352)
`pragma protect data_block
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
UPNh
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
