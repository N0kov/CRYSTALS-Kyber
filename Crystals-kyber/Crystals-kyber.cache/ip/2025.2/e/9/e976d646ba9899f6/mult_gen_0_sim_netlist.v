// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:51:56 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_24,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_24,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [23:0]P;

  wire [11:0]A;
  wire [11:0]B;
  wire CLK;
  wire [23:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_24 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
I910e7jbNfN24pXwaCSMxqVj2Ezdrkc8axWPNPWLuy5wJ6bYPjUJrhdK8hBm+XPeTfSb0PTJnr/x
Krh166hfPPBlnnedvQG+2p32cWWYI3Jj65CR+tqidiJhdw+jpdAT0O+tDHpXQu8A715yy0ruF+zv
LSutZic4CGaPqXPBU+8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tOTzBjh2SQO+2QgYvLGd62ippBEfpJwpHWAs9rrdHUwvGwbeByaqaz/HRw7rWSQh2FikidsOXzr9
VD97c5jdR48paYWB1lmdqeF488Y2jMQc2CwReC98nLpXFukShKI4sr8QK6t5sXjT/4HYezgr4Xix
zIwRKQ1ReXHO6ZNomuErKJjpFX/dn+5LT6Db5SVulrxL68ljashRqDeA7GMw4huo8xcNtxNV7xfb
oM1HgdoJhhqlb568nKX6+jaWGr9fZIRKoMH0vO/miKYJLOeWxNZ2Pgg700CXwOC83/aikmVGhgh1
jM3HpBk8aDp5Y21A0Fpp3kUhyZs4OUFcsj/y1g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EdEhYfxGLALWwz2A8RKGvmueJD2fHEVu9+KVbTSsUS32VnYoGnc14W6BjgM+aVdYFrvvOwQeTUpz
FZfb+sLXywNHm+adAV+xzqk1XvcJNt3VN2sycpXJY+68+tjH7IHZQ+8yRbqaYWnZVqJ90vR6XR0X
740D0LE2a3P59lGmu8Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qt/YSLKDmd7omBa2uY94RAUTN1YLtqMWhKZeF+FJccA6f+2IUvNFUb8VA+KvnOSWUfsIQ7ouGGSq
YzcNlVicCVvt/gv4b6dmyYXQ4pL8mISaNILUIDeJNsWNTft/hNt9Bp0lHqYr11R1miAo9TtM2l3b
UyQMH1aTUeEet6GtapPYFdaHR2DKzB9jvbi88vlPO9oz+QLneWzbOIs1SzJ49DV8fgNn4vi2PFqG
ENgTkZlveIrHMdk6vzm9wQQXQaXCNfLgWB+Y40/wwfO1ZstKHKuradIIvAQhEEKN0IGu3/bTl90D
UZLzQQibBYsl2VYsSLXf0dIMGIckVgiTbJRSGg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u1LIH9BQ8X3la7q6da9Mzh6T4U6V+HvvkBBm4C+CQe7BF/eBwPNxSzxvZE/x0TG1c8bvOXRTxnmu
a+0ZGsqq5IqVTbQhfDEg9Y+gJz1IM8WMwqLVsmHSeUbpbnwngKoUbNQOQv1WRyNGnv4F/jI81nYX
HuXFyE2NVHTTMzCin34fKPiwVDQ+UzNTcayDrnU1CY+Udoh45KlE1l6+28uLuAnW4ACdWWr8ESLq
DR4dRp1oHvaNlXUK7vcnJ2+Ov/qLQc+1QeJeSM9svqPNs448IswOzIlk1ulhQh87kpwdHV2gdfSS
ekFaViYIKna0lus0TnUUqCwF9aOemBIgOBGm5w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ThGX7m1wupKmfjpeSuERSB+T7gquJSX6tq2xggUCrpUGHebhya8nWjMujArHTtZh6oUVb0QX8VDf
NRFTTfQ29w/ozh6fTrTQ/PrboWzdLkaABpPNVyeMStlulCCsemZUduRW3R2l8qEq44TVZcrL3NLq
NQtvyT88wqSWUs/Ly+3bbOMwCFcUyreYECd3L7sFTekvmjgOzseWEkUqi5rYpFaoe2fIKBy3/i1I
IEhb5HNd3/4wBVm4JzwGU7MCwr7IHJ+wDpOVyuwb3lRK0uCKTbMLrXrLR6ETYzaSjx46bNWzWnZS
2jU9OaYlTxamZSRRC0tPHBB4HPVPLAdW2y8kLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2BVuF6JPvdByoK1aCz7p5WLhtbYDEDat4vaF1+IGCqBNuCgU7ZEckdQrjRNgyLbBCuGUhV2/Z87
7zmLyvPKp31qiGE62Z1rxDDY/8uPTNJmHChiPtJdrxtM+doqnoh6vftv5e+5o/fBrPH19+yBL2Nh
Z5fckSgZhFQ68P5dQuOkyIC5tp3R/HOnMjpG2xTMeS1yDGuFnYHA32VMFhXbyJbD4Mp5jVlQzwLs
6CrhAWWd7oBlxQ1e6DiDkbPQI12utFzvD/zshqm0HKUZY7YNRVE4UKGU+0MUAEr2tYE/KkaHSWmA
hTE0pwWLvrn0T5ldb6JKisPFcCRFq1RseLqKnQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KkmCCcPhzWVUpuyH7mDH/kWvZLU9F0bZj+FB6hEDWav7aepDlW40mXmjmlsPTq6UcrVxN2LRWKt6
aT20LRSTKTlRlh29oiVlGDyITvP4mqCOoNs5Jiye2gmf1rtBW2DXoysXfomK0SypsNpy8fNr18hG
57a6lvuAP8Rh6q4wDGslM3Xbu71JJk1C9lVARGmzGP/mJtvA3iedWC4Tg+7BrLO09FZ7ldiVfJlT
0wy6cQym8l60VY5SIWLLj1XoUbZONTLU3WT1lFs/tFqN1JtonQ6ZZg2qYEghgeAPL9/Gl6cdPPu3
wM+ETD/nD5LRfYZVM7Lb0ejBBAeKcAOOf+zbgXO7T24PqmwUerrefHxeVSb3oha6vCHiAnoRYuVp
Dxfq2ra9dO9LNsuPs03zR7rLLuvCmwUWqSB0+2Z9pTbpt7A4T5Fd0OLa4rDFr3LbFDf16sdDy0pK
tatqXYi/+Ytep9KZh2jjoxEetd1MLAo+Wd8Diu78IMAH3TBsO6hlYVqa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HlVefHqF6PMcC1QL4S6isRBBHrYDmuMKO68bwPID8DHMq9J2gPyVJo7oVhVhhh/uz4wr3XtJJrKV
kdSwhQxSbtiGD1Kme1G1EM2+tBEkDFjVnc5txT6Yz39JXmjVlokngCLa0jPfnQEDMSQLLctVLqHB
Y71YHEhdjR03f/ErlbzbJzk4954gXndSJ8W1+1CE6C/Q7JLvBQOes3Wdhx23NEFrPR+xF1JYErJB
MujUqjm2zC8WprwOfluOLYlb3C28uYfcybHvDfG9S+h5HezEzSBVtUh+EUlY65Ug4b4MZDbpMdHt
514c4v/RlO+5c67z0QhV9n8iVnzPoHkifYzPPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GElKnNwHuDvUsC6n3ryq1yJlBpsGEgpqhJaMewBzWoI0ABOCOmkYXeVvVaght1MSSYlMMh/2kUno
8CMZ0oTtGoAOaDOj+2b/ipMpLfar6QSptPGGS1BDIyibKaIF995HpywP+JaSmoIUypZPu4EGqqUl
irumZXlXoi0CgR7fBMJk6fsFsv/H48YZEAvFSUqWN5RWtWqhFOCVJwjRB9qYv4Cz4znFjCSXHePO
3WhFhxbYdkg//WZm/i7Na8UEwV7skIyx4snZFQN3StEshEhlus9bZj0WaMhL/q3Qi5M5e0kvS+a2
TBIb31t89nzvzCVXX2TsVZQIOU1xjM22qEBd+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NvC4x0gmKiuZSBSnTCrYtP8VEcCHfYyFLPcOc7hcUGPwtoKZrCGumU4YJspQ4iyC4Ibe0vTPscVD
/EaTDg0G/qI5OV8V47s1r/8smLOrXQSKWcxqeT5UVy9c6GKlRKrC6ZskdRUI9wGVAliaeOeKbxqH
XR/4p0oMdtKBZdUEbyq2aZwf72LyBc6m5qbtV0bvdoCpJkLSCsRngzpyOKuDTUsZ//SwGnpt48W1
+Yrwea91WokwKvPn196R8ZLc0VmvRaNX+g8o4/P211VZMgur2tNI6ndi2tdu0/pQYQEHOxzwHvKg
qf9EnC05euLrpDCFshQjmyblT8x0L9rUTmfNSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5744)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
I910e7jbNfN24pXwaCSMxqVj2Ezdrkc8axWPNPWLuy5wJ6bYPjUJrhdK8hBm+XPeTfSb0PTJnr/x
Krh166hfPPBlnnedvQG+2p32cWWYI3Jj65CR+tqidiJhdw+jpdAT0O+tDHpXQu8A715yy0ruF+zv
LSutZic4CGaPqXPBU+8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tOTzBjh2SQO+2QgYvLGd62ippBEfpJwpHWAs9rrdHUwvGwbeByaqaz/HRw7rWSQh2FikidsOXzr9
VD97c5jdR48paYWB1lmdqeF488Y2jMQc2CwReC98nLpXFukShKI4sr8QK6t5sXjT/4HYezgr4Xix
zIwRKQ1ReXHO6ZNomuErKJjpFX/dn+5LT6Db5SVulrxL68ljashRqDeA7GMw4huo8xcNtxNV7xfb
oM1HgdoJhhqlb568nKX6+jaWGr9fZIRKoMH0vO/miKYJLOeWxNZ2Pgg700CXwOC83/aikmVGhgh1
jM3HpBk8aDp5Y21A0Fpp3kUhyZs4OUFcsj/y1g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EdEhYfxGLALWwz2A8RKGvmueJD2fHEVu9+KVbTSsUS32VnYoGnc14W6BjgM+aVdYFrvvOwQeTUpz
FZfb+sLXywNHm+adAV+xzqk1XvcJNt3VN2sycpXJY+68+tjH7IHZQ+8yRbqaYWnZVqJ90vR6XR0X
740D0LE2a3P59lGmu8Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qt/YSLKDmd7omBa2uY94RAUTN1YLtqMWhKZeF+FJccA6f+2IUvNFUb8VA+KvnOSWUfsIQ7ouGGSq
YzcNlVicCVvt/gv4b6dmyYXQ4pL8mISaNILUIDeJNsWNTft/hNt9Bp0lHqYr11R1miAo9TtM2l3b
UyQMH1aTUeEet6GtapPYFdaHR2DKzB9jvbi88vlPO9oz+QLneWzbOIs1SzJ49DV8fgNn4vi2PFqG
ENgTkZlveIrHMdk6vzm9wQQXQaXCNfLgWB+Y40/wwfO1ZstKHKuradIIvAQhEEKN0IGu3/bTl90D
UZLzQQibBYsl2VYsSLXf0dIMGIckVgiTbJRSGg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u1LIH9BQ8X3la7q6da9Mzh6T4U6V+HvvkBBm4C+CQe7BF/eBwPNxSzxvZE/x0TG1c8bvOXRTxnmu
a+0ZGsqq5IqVTbQhfDEg9Y+gJz1IM8WMwqLVsmHSeUbpbnwngKoUbNQOQv1WRyNGnv4F/jI81nYX
HuXFyE2NVHTTMzCin34fKPiwVDQ+UzNTcayDrnU1CY+Udoh45KlE1l6+28uLuAnW4ACdWWr8ESLq
DR4dRp1oHvaNlXUK7vcnJ2+Ov/qLQc+1QeJeSM9svqPNs448IswOzIlk1ulhQh87kpwdHV2gdfSS
ekFaViYIKna0lus0TnUUqCwF9aOemBIgOBGm5w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ThGX7m1wupKmfjpeSuERSB+T7gquJSX6tq2xggUCrpUGHebhya8nWjMujArHTtZh6oUVb0QX8VDf
NRFTTfQ29w/ozh6fTrTQ/PrboWzdLkaABpPNVyeMStlulCCsemZUduRW3R2l8qEq44TVZcrL3NLq
NQtvyT88wqSWUs/Ly+3bbOMwCFcUyreYECd3L7sFTekvmjgOzseWEkUqi5rYpFaoe2fIKBy3/i1I
IEhb5HNd3/4wBVm4JzwGU7MCwr7IHJ+wDpOVyuwb3lRK0uCKTbMLrXrLR6ETYzaSjx46bNWzWnZS
2jU9OaYlTxamZSRRC0tPHBB4HPVPLAdW2y8kLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2BVuF6JPvdByoK1aCz7p5WLhtbYDEDat4vaF1+IGCqBNuCgU7ZEckdQrjRNgyLbBCuGUhV2/Z87
7zmLyvPKp31qiGE62Z1rxDDY/8uPTNJmHChiPtJdrxtM+doqnoh6vftv5e+5o/fBrPH19+yBL2Nh
Z5fckSgZhFQ68P5dQuOkyIC5tp3R/HOnMjpG2xTMeS1yDGuFnYHA32VMFhXbyJbD4Mp5jVlQzwLs
6CrhAWWd7oBlxQ1e6DiDkbPQI12utFzvD/zshqm0HKUZY7YNRVE4UKGU+0MUAEr2tYE/KkaHSWmA
hTE0pwWLvrn0T5ldb6JKisPFcCRFq1RseLqKnQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KkmCCcPhzWVUpuyH7mDH/kWvZLU9F0bZj+FB6hEDWav7aepDlW40mXmjmlsPTq6UcrVxN2LRWKt6
aT20LRSTKTlRlh29oiVlGDyITvP4mqCOoNs5Jiye2gmf1rtBW2DXoysXfomK0SypsNpy8fNr18hG
57a6lvuAP8Rh6q4wDGslM3Xbu71JJk1C9lVARGmzGP/mJtvA3iedWC4Tg+7BrLO09FZ7ldiVfJlT
0wy6cQym8l60VY5SIWLLj1XoUbZONTLU3WT1lFs/tFqN1JtonQ6ZZg2qYEghgeAPL9/Gl6cdPPu3
wM+ETD/nD5LRfYZVM7Lb0ejBBAeKcAOOf+zbgXO7T24PqmwUerrefHxeVSb3oha6vCHiAnoRYuVp
Dxfq2ra9dO9LNsuPs03zR7rLLuvCmwUWqSB0+2Z9pTbpt7A4T5Fd0OLa4rDFr3LbFDf16sdDy0pK
tatqXYi/+Ytep9KZh2jjoxEetd1MLAo+Wd8Diu78IMAH3TBsO6hlYVqa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HlVefHqF6PMcC1QL4S6isRBBHrYDmuMKO68bwPID8DHMq9J2gPyVJo7oVhVhhh/uz4wr3XtJJrKV
kdSwhQxSbtiGD1Kme1G1EM2+tBEkDFjVnc5txT6Yz39JXmjVlokngCLa0jPfnQEDMSQLLctVLqHB
Y71YHEhdjR03f/ErlbzbJzk4954gXndSJ8W1+1CE6C/Q7JLvBQOes3Wdhx23NEFrPR+xF1JYErJB
MujUqjm2zC8WprwOfluOLYlb3C28uYfcybHvDfG9S+h5HezEzSBVtUh+EUlY65Ug4b4MZDbpMdHt
514c4v/RlO+5c67z0QhV9n8iVnzPoHkifYzPPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GElKnNwHuDvUsC6n3ryq1yJlBpsGEgpqhJaMewBzWoI0ABOCOmkYXeVvVaght1MSSYlMMh/2kUno
8CMZ0oTtGoAOaDOj+2b/ipMpLfar6QSptPGGS1BDIyibKaIF995HpywP+JaSmoIUypZPu4EGqqUl
irumZXlXoi0CgR7fBMJk6fsFsv/H48YZEAvFSUqWN5RWtWqhFOCVJwjRB9qYv4Cz4znFjCSXHePO
3WhFhxbYdkg//WZm/i7Na8UEwV7skIyx4snZFQN3StEshEhlus9bZj0WaMhL/q3Qi5M5e0kvS+a2
TBIb31t89nzvzCVXX2TsVZQIOU1xjM22qEBd+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NvC4x0gmKiuZSBSnTCrYtP8VEcCHfYyFLPcOc7hcUGPwtoKZrCGumU4YJspQ4iyC4Ibe0vTPscVD
/EaTDg0G/qI5OV8V47s1r/8smLOrXQSKWcxqeT5UVy9c6GKlRKrC6ZskdRUI9wGVAliaeOeKbxqH
XR/4p0oMdtKBZdUEbyq2aZwf72LyBc6m5qbtV0bvdoCpJkLSCsRngzpyOKuDTUsZ//SwGnpt48W1
+Yrwea91WokwKvPn196R8ZLc0VmvRaNX+g8o4/P211VZMgur2tNI6ndi2tdu0/pQYQEHOxzwHvKg
qf9EnC05euLrpDCFshQjmyblT8x0L9rUTmfNSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9152)
`pragma protect data_block
uuA8v5vNvrL6idhn9weY6khhi4fQLia3sx/PD0RgsQ5sRiN2x893iGaoSIpIYdomZiHyZinBjLCl
vSVRvsr9Dz5crKiGM2U3swwSvxPITyaZ/md4ClTmomJO/CVadICuApe1IKkyf83B6AM+S4KOmfFs
XeArD2d7b2tf0loPloYNDJG2GoW/+iOwx/bqq5aI9ftIa3zOfhq8YrUsjtgYJRUr4sjnSuerX9s8
NldavP+HFzQcvFtwoNu7CNMpz7xSIyOE4Z3Bm1TREMtqZYVimYuN+NIgvydy4NQrj5SRXKBKuHlh
Teyb6WupvUZio71YbnJJE7fjqlfx8wsMJbDVyX3L4pHZ9V3r9Zg4m8DRlUuzFKJzyiIMnixehZ7V
OP2V6EbbFfDhhK0mzXK4xZSGmFeuALxUYZ0ymDbm7US3/oRwN6Lnv6lNv+GsLZCaTtizaS23GRL7
ePOxHO4PHv0TVZxCmrqm47Vx5+eawAVxDaN5XYGqW3ypRQIjcQ/1fIPv2WxOTtLQPTbn2vgYupML
6kpoDJ0xhdCggsvWOvQn/KAgozJuGVo6VBFlBU0XgXt6S0or3Klv5/p/8NQ1PTtz089U5R17L5AR
RA2b9WtJ6JyNY9wJgocXXxpcZV5CrvLhQ/NRM6kW6E2f3B4idjCTI5N9TbDLHp9TB9NAAR/0lTt2
TnToF7FtJBlBtiAMtVkcDq6Bkl3VgJgL3kj3fGbtVdw46k6AM5wjEgaSI3yX2sIQLICwX1UpmUvj
svI4+NJgT2heFQMzvaaaDQo6BKZ3mqSL6tqiByJxzNa3Q7xlIrIfDNy2pnz2md9SJKp3C07zSQwN
XU33loliQ61PTiQ+DWm3+BOCNgW6L8/W0ys6ppjDl/qAwb2B2im2jBkeALz3qxPvwtkvHkhxTmyB
Ja89SQlaA+POmNT03OdDMDZAAriANRLLToZVEnUJ8He3ew6rxFajyP3mKGBwXE0wWXAe17ujYTYj
l0VjS0HJJ1nWiLAvXKFnY3KKM87C7cLQun6dImI4KEz5bm790UC35a9CBG1owLi89FV3Yr6GoRK3
Xi9/rZlN6P70OmHgz0e3zp+pSZGF+KnkX4VSmjQ/sIT9rUCRFVBpmYwS2s1Zg+oURYwBFKpQ+m0s
dq6KLNLxtcl3HS7wLt/jWen2LIiT2YAO04x3NXjN+SbEktQlpsy2Grpz74JaVSePiG8Embuq1PrH
Qe8z34HUjXCrlj0Uw9k1Ql2TaflCjcEQrXXbpwueExyNe0nzleGhp8Ulk4gp6ysH0a0knx3hpSk4
NEcfc46Fm/ufmCW0qn6v16+Yu6YxBuyJvtZK3C8wmW+OCFSB9+NQTHoJIMWyUo4doaB/NMcSHfD1
8BrAzSDHjGlu2GMe7a8nyjkPCBYdrCFbNd1vvx6bVktSIuvXSegEU+s+61J8+a2NIi96K2O134IP
8Uej3gCQ7igyPTkfMrsi3CnFBrEYmdXIOZS/Oq2tazvoP7c4fnrl9yY3+h6sAY9sQBUofh3YmVKF
KUAt2CcUxIYKeFMRNR2cgwhFIMtcK6vYV23Xg33ALMY2SjC41copH1QeuDipIULRFR5uL3RNJfsd
Xh9wEWtWD+G9bEKpBBqEn0ZjTQEb0yXK86PYerZjdp4hXaZp3rIAPXa6ydV2fP2kN2I+UlYyFFy3
qAs6QFgMz5bsfxDuiJzl1cARV3GwF2CHaktuD+9G8o2Bp4SIw4f/zOg3cSncrAaNv9zdNk7ZlBz3
wAPqvZEMjrCINZGfqqyyBM74E/roUhK9xh2O/rg+45OlJIc5UHwoZQU5cirnDGQr+bE3+A5TzwwM
xlm9+LIKdjRh/bQqrSpR0NSFBqwjrZvReL2RUDRbheiqwwEIdG0WGm6Umeu+nzYhg/W+cHGbqJ6X
bSXVVfCbA8iGJ0hSCz5OH+L+zVuiEQcfV/3KoRnNdjuzGOHUfXwSjJ5E9CXA8s/viZF1a+HWztmp
/SEzCfqehG65BffsvR2i5BCTeCXINRHWDijtAy9so3F2WxFxiSzEMxhZFSI15KnCraUsiZKNeaDE
eHLPGrD6ZaANcFR8QwiSj45V+SXvMYI5WHewDR/YZ/KRPQN97bLBFSUauDD+HSe3FV/d/8mOg/F1
i7/HTufQLr2UiNzf44RLRJCvWq5QP4wOvPxBIRRue9r2mn6imNsC01PmcSAhc2fXrgw2UG1LgaOw
fKXsCIvmEsBSQuOvWlw6kNTOE93BfFoysSuot0Qq6zBdE+q4S0+XM2h2yOE6C/UbarTa+dHTJruN
XVGd1+yVORWV9Q66hUV8r//Z+V/LOHhwfrGsnSwTpVXegl6qANdV9EJaihJtdJZqI7V002PeXJzc
TprqZTt/NSZW18/AibeBNAJoVdgTKZVwCUMLnnHi/ilMjAjjVw/nQ3jNV2Z79sXajo0uLLkk1Q2Q
zsz6MvHQmBR4dlLM1JVHDubA6PIunDmMeQ0QcDbWfOZ8XJL2vZC3Kf7weuBAZ+eOZ23LJnr1e9BN
3FNMNBu+NVJHNvgR27DjHCb4uK/OHEgKz3M4YlvYFCZjjV8dEjSqTxOjzjgsmT9KnDeyPyu6vd2P
ZnhCZm6KJWKsmGIn/VSpGEp/KpKa+DJAWEevUTvgR7ZmrqJCgoMuxTlvLGWyeC5O4rOCSXAwbMXF
MQ8AdQLngxSeHs0tQy48y6Fw6wecizdG5wvsYm4ga8XL67fjyoWxK+/B+Eub2Bv/TuuXqfc6mfO2
rjEY7GxjKZviWHFNyflTZf+o6Cc/0FXWJ1BWw4cB7anw4mmoSsEVoLLW3bvdFvdhyAzQqP19Y0J5
tvnILOZTI0i+tHQJBIB1+jMc+B2xPSVDFQautiqu/d6V8Brd7ZyatpnmpWYvJepgrJk0dq3WPFrJ
eyMdS7ANoahN9YtZxzjH84l4aZjfQIqwCcu6r+H+dUbLdlV9lSvvWRsFHBRVPAk4caEuUBjtkB2J
nee7pZTX2CKv7sS/QHb5oXUTzFfb09IPG+0lzPZTxJkQEaX9wsUoMKAtxHRcuUbBoL0wvl9KG/NM
4Bi0fHsmZ72vgAlTSiLV7OelQIqyoCrfjbdh0DoSwnx/d7PRJP+klwh3QrIPv3/suYJhuqh4B8/p
PX60rg76ajmm69pYFIf6I4gPhXRnmLVhYSi9o2T1L/0EusOQtWjvfZfL2fklwJu80Ma78M/URrZO
slZnxNvyJ4C8ZSFNYUki0KW4zNK7RtTB5AHYCdG+hnHRS+cHG5nuYbwzuW+1SduxSX63DnfEhus6
s6b1YQPy2bTL3rJXbiCJoZNDXafbg55+x8qT5MgxaKyKXSMfW7YOzcjoLiz5aEJQxLkfApVf0b9Q
BBA7rk3VN80eGtjzmq5ad1OkEQ1IM1hNiAymey3GbfV3vwOhXSTrMF/3wxwL9uTUj34eyJ0sK3hO
2OJRUwJHC1qqCfsugZWhhq16In2JOG1Z7y4honzropozHojdFCcGzAcAlj0BM0ApB1cD2g51zlIY
CToDHUOqFwiaFfvaAUDUzPE5V6I4bp+eIQahqB/tAZt9MOjLQ/oeav55YabchOoak3QgJFkgxnuz
m96Yr5KLn5nAfvj3m0LqyYGvQ2y1OtbDDV3wclKYz8ERDeMhQqJCPH1Nb0jFh6Hm7YpKpCavr+2t
4tPhgyEwQioKcR5rjLHUsMO9go8Kfe0egutRikDYVNH/nL6mtxb5Bt12dtMUr2a0C3E9re5+z8sD
g2Jbs7HBdsNBWuZUotWFsfOirplKKU4hKazEkeMmmeCWBf4Ov6vny/5rXba/x2uWlBKYtzsrUQyB
5NqHat20WKReJvyH9+zOqDzmizb9Lr5SCQoiz65OFOOPOO7h8XDBZre5koxGQIxgEGndkbnLdceY
fX0bak5zvliKYtvUcgkC9X78OWQyOyP3ZCnpjqKi/kVNnl1xzzzgx/qFC5S9zx3jZ1/bNxDIY2yC
0twmb0VKRmOfL3t9g3rZ4d3As3zQCGVmw8MdtV+ayv6OZftfRBu4IBZjhHdUpFi2jClsAE5MpOVN
tzbMGvqRt0IIeVHWMPdJ5eV373iyGnhmBWCntu/uLpYkleZMC82XZGmhMsf2rfilDPbz1cAkCUa4
VXVJKebDaxzVAJQGTIUoRJ4n/sVhRCccFOhiXMJa4w6iJgmSfTxAn2Lu81kJuhtjc0DzlADT7kTm
XSPPxONhOp4yXfbhFZq+zKHzRBaJr/vRXwDFeXPh0I/7KIw21YZ3iyTIpklCBHm34eU8BCGapYdf
43+RFGCcIA6GV4vLSZkYMS+tjOoP8LWicHXmPRL3XFsTKs23yL6A7/e+pz2dIT9c0m4K0wISox1o
HVig+ipb9Y29XBY/m98dmNotqTr6r/z5nwx+ZwyFhGpgsoX/UhPCK3cy+WhtJnq+OZz8pM0KaR1p
74WwkbADb2fao08yLtXRGHQN6dP1ZvrAdqnENQWT0TQikpz2GBswOVvMKhSv/F1uHs/ZFFSMMTQt
HZD4Gp2ZuQh8121aB5nJ+kJKfN8l7dHZKsckwiSiFIKFe0ImXHdZ6ob50XLnw7R6uhswo/UVzuVA
527fKRvYkNnc/WtclvgsyFqV1KygPO/YHudT1wupqd/Vam3bs5sQIGbJdMEX9501DJ2bjnej6p3E
7moE+1IADECrikSk7hbLWuk4ZPq0Y02v6/42X8HiN576ewYusVWjTaCpTk9s3mgA2OE5c3ZmuTb7
wXZGyczL522Fpu3KWxW4v79zARtuvfNS/ofcDfb9a+r9Sgs8adElHLaifw33B0ubH0a8lpLQtIoC
azV5hK8yXNb+WAs9sddHltw3hqs2lgPTpHI0us2IUCvJ9mbTM7Ya+68lxD6pbvtbqVzxwQcALkz3
YUSTaoyk5/kFtu/pDeRnAHGkdwQM3qOHl02E2roG9uVzmv8TzQpMZ+m699wILLwjRBv5OWT6gRkj
NZ/u7yW99u0EGDIagiP2NU7BsKz/YFoS1FZnxBAnvXzv2WDnV5bfXmCkRqs32uUizG7m+OaBPPui
309kiBPD+AIWWB+k4uIGKWmcO7ypcNcETMWuIyShGI/dNfEcR0Rz/AObspNnviK7FIKf8oEWOPyX
z/S6SdN3DARPzA/UMzQEE0yWJok1b/Ptdw8VKogvtcykrJ/2p86rwVFj3F0nnANflr/E5iVb3dyC
xMiloIEP6AP11mIFaUl2qmsy37CxV0gEyQ0R/wKNnCRxC4lpamB8aop7VQNF9uYA+Nb9OGSpanCr
D0jyUKPKla0xSQLgAYILw1zK8N/WcG4+F9TUqRJUg0BuLNoBcz5kIqcC8LIxFv2L54Y/Zk5sCbp6
Azb0jYDeCAuaiCfhRRDfdrD1W+RDJmpgfnykIzs71WamI1qBrzSwJKEUcDCopM2H5EBsH1fQNfqD
sT/HlxuVcfmemPUdlWLuAGErxR+OopKLencEP2sjex+7vVuo4MDHOseZoXycCTMSbe7fYj2DNb0b
fNGV59XkBjx+ct6HzuCn+CgxqErWW1vG3GZq+WlCVtI7jtCWcmLKyZS2jW2oOku4tlavtEvKJ9UL
soI4NNBh2OzhwTZASn7BUMv382LhXyzXMCkL+aLHbfeYzda8PJ3FhoPR+byaTzDfDageAZ/ndYyw
fKEaMvGPeEqeTNO6rURCuvwXEiJIdpfXWqfyOoBAt7qkYGfqWCwiwF6EtQtyS8pmmgrX06tsWm0y
YXJ6ZnHYtaOv3IwCB6gHkD3V2Pw2FnH3+8BDo2sz1B4euyRbW7LnP/URQsxyEIPUYOatQNLgne8V
xXcesZsoiRpO/NSLJ1yYyFXS2YkhiuFwby6vwUBtjroxIluIQy7YNy1U0AiPAus8Nqoqui6WJ/42
fiPv2+LpzZZ5P2/Ena9JLEqBVEF78sBOHe4+rl8S9jnHKIKnEAOLdpZxiu9j2KeKAL88V/L2Yocu
kN7Yfdlmtm4Xzs6qILyk99Lt5A56xoH76rHtFbxGEYYhOSKGN9whMenOxbAofh4qv8Wv6Hcs6nHj
RBKt40amTOaC/iqZxoZlEkJmVn6vKVibFNhGaOUHbA5AAwrKt9v9a+Qt3foUBWMrA0b1me5CaAIa
w0lymPVaKp/FTciesR8o8zd16l2HzCSANounbq9fXPrwdS1Ad6AKrxWSmWJvVOUz0wP114bMMBXN
weC4c8zTr27AYM1di9cblDSRa5hPbKB1jhUw8oijzZTDZ+QTE4khc2zcp4CIHi5r/s2M4yUh7sip
wyKBzEX0d8fCEfHnAlOxeSPmSJEnYwaC9yE+FDzrT6M81FLn4UEQww8v/SijFzfBTSlhKLJ8VYq6
WM3ejLKKIilbNBVmvhYYsX3ZRS5XuL0DxIvlL5ywsf313nEtFAQ9saVVqHM1eaNPvbBOSQ8VkwrL
6Z5CIvwhxDNrHWgcQSXrp/84Q/mFkDwMBCebvIsUAY2iecuAsJ0/gstuJihJOlKeEnSAp4n1IYs1
GQEWezobXav4lHHxsUA2GenPyMI909esNubktgJ9ybd2Dsoee3i6319zE9sWUfwQktmmNueTwhD6
NmPBH7tV1NDrG1I8tyufUhOCOVF+SzFF2B8FEiMMbCjGVsI9krzLOxcN5Ug4nmuvcpC6MBogWFkd
TtVHFFoDpJnRHZkpk56bxkb+sTBkxQzjOlG0A8IY6DxJ8BcfmTWGQj7CeA7lnsvIdr3liJQPWWoR
lzD0iVCGlACwAatcijMkZycFA8BznQBjxDN6iA15wsumdaqG8+/nsnk4Qv2eCicADZkQVBNMyiJt
sGSeBTGkizZ5PYfembPNWuNiknpULI/lpiRKay5/82eVvNxIUCgUNHIwVWbCDSnLMb16pnwQWDAL
9+V2zw2+wDqZVK+vvtSoaepVSrrEXzlF2NE3JgRzE3jwsDM7C9s7b1xI5atbWkMicPSU2iiZYk09
XgnwbeZLl9N2l4QAl0vsLYi0OkkW1hSPg4YMDV89fhtrCKj0eU9XwWtlSer49F9N9J9pp2eE+u92
ZBFPVzwdVUmuZ1pdSUR5m6JaRVaCP7V5Zi43NDeSWqKS7uWxCmvuEdLFQPazHkp/VxboL3d72VUx
megKZ8ug6kxoKFvnfRMTpuVz7IXRPbi73oeJErpSnNAtVqK6pZa2TGlQvL3mr084TQGoQIll4SZ8
WlG2kIzemo4rViSM2LouhEDtpIHzIeOkCNvPqBSe5ikVnggmpGEasStC76HtBn03d8a/0SMLD3if
+dNMWfzd/q7UIx6mwzfC6UUQ+l1BXYS6K0Cg5J9UtMMEIZWpOqUuuzFMSkaWGfmLKHGJQjW+j3te
vFkp/VMrELUDUgzUMGRAmiErUjGUZQE0+uA3mM6Bgx6F6ZeZIE6SQsSqHnv/vGwECNL5vFAHrOAs
FSFoxtmhnuH110yMHwguEVpnXE1Sa8gi6epz19iEzhEkG2ntqcxwWHN5rghN8Zneah/RksAebOtq
ROCAN6U5uPj/NxOWYN+BdZUcgKsUtGIHsOkqPeU5h/Req1qbce3y+EEciMCFUb3VIdJxphptcq3g
JZPbGGumRAuyG6C0E0YFlCos0FNN9OSiIs6I9o6td0ZYywmyxf27w4AnrX/Yqum3c00cCyokIdao
ncEDHz8bH1ddNCMsC7QWSBrwxrYgWZvoRKROPFfqY3qMBhB/rskTGXz4qNQqsywDuoFbZP5ns8Qv
CHnq+5UOY6+pWMbFHrjl1N8cSDJOam+EHrx/ribtblTkGSnoyrkVzGfcZEiT/JoG8f3zQXDb5Tcd
h/BJzMKREy14Gj+xpHXEn8jpPajph2FWF4w4i8B8eo6J4cdJ+uBS1eE6/lGpqKuqfdqwJSJzhfRY
JMgWe58Z0UOKnTKHixqaK7tTjytzS261zfHDGfRN/RoyeCoNpcYBL2Eg3f/iDCvrJtIPiFZ97Auo
F8eVFXiuDDPamEzqhlGmM/lrmUvP/RjPsj+hqDJkN6ORWl9PuDAE/w44SSK0QuAiWLVCfWq07I38
vCGWYTLvbHv+7broFdbdAHJR7sh9DKQ9HI2vQmcICPcNHyMKb2WHxmVbFheBgygl/SuABCwGdmm/
+kNbppAuOnYs/vW/iFOTZF9XnwT1sJ16mWp4VMBOjdfznPbzFdNzOzQJcjXnVsoHtl82ApBP0yMc
xTzBI3buaLaUW6RsXcbFeqGHf9UELnEcKF8Tp7+3JtyQMJ/D1VzELzIyq07sJEHZSf/k9xaucJG3
2198dQ06t/8KWT4qXn30FEbM4TDlhwMSeWICOUO/cByBVB+phODfYQnFxCNYiRs0do1w03bxONO4
4atercFf6s8ny+mWzmUqvG25MlOz7yofRpjh0ccXh0IuEQKo4d79eippsmMIynoadq56Xn3dfwdH
HT2YIjHLUwFw8K9P4q3mGP0ypympyPXGwxcBAXYaVUVHTyfqoc4aSPEAu6Dw3P5ubDvNrAJDUHNS
ibqUZDXGBeCpVPSSMtOUVfrsXJm+owyRR16q/evYNBVaTuLvcULGemTHRXnSQf0qu6CMF6NJ5HXp
UO2MjeqidcUOUMBuIPJkT4vVTfYEBkpQpEkwaD01cAk4w/Gdl741V8JGI9PKyjsnenBZB658ipvM
YS1ujgZN14INyWx6rW4NRJrjsLqFRR44BW1PSxMRSDD8rgLwvDbqPQUo41g5wXrukeOrgduDamun
DucUFfhNLcIKnSsUqd2+Jmr1GQIMjde/dpv0+Mlz3ei56MSO9JSizrnm8wl6XNzBaOCKgaCUVy7O
ZaE9ek14ww6wgnNHFuBYFhHF/ddxlLrGBCJta8DCrb5ySo5uvAkrkLEkmKAiKqWDzyi7/E2UdNR4
a7Dap6aFB37ht2I/7OjXFR9WS/jzUd6JYHY+OMCoxL/0p65So71u7gjz84dlO7YyjctQrwVR3w1g
sJT0eEYay2l35x8wA2PeoifrrNsghq05L9KSb/I+XasolDE8qAULYp0M7f7X7IMF2/vJxpaxZyY+
mCscFpjgwV6Q8qPxJzJd5HQyQtEZU/9H/XUNNYsAeA742vgjYayhim0DwO1FyhC2VpWvrwPLX64u
SuDElfOGYgv1RiYWxQbwpHeymPdSRsMcoNkr06/ezfrivIVt2VpzCkur/DutSe1OkK9F/R0+VSB9
drpyXtH1B0SvFCwRNaJnw4YPZziu7qow2WU/Qrp084J3HPc03AouXy+S1tuWrsIlnQtAb9e0GDXw
5d//IZsGXm+PPviehMvA76mRamgDtCYH4pdglJfoj+S8YmP5LbN9mQwBeQdJDe/6iWtgLU10MJUJ
vW0yVpLO5lguM1Fy1yPci/6xi6hsTQ5FdttapT9LTycVxpKEx0gwYFSl31a8UiinF0oXarNW6mWn
89jmm9i+rnIY1mofee32ywhq1B+4m+w5uMqa4ipL0hW3kC16z1rgLAKmIpr1PSeJbtECzS4YyDjf
KeFtt9+SnMY6mAInE+KxIDv/KEEfD3PlRIt8mg65cuEAHtp3S0MYLSDbpe2xp3vA85sv5OWjMRPf
4GkZZtPZO36Q3+dsepXBpWbcUHOdV4rx23Xr1aSt8/Dv/SCgdNuzCOXcuFCMDjN02gcLSMLqIKVx
seJ8z9vslbo7lsfMIm6AfH6xk/7XJ6hA7x8Hf2cTT3jWaB9wkq/kXUfGLchmuOhtiS2zZf+AMJJL
93+2Kf9/X65HwwHO9jfYkvOg8Ga+QAKH2CRF3XFrcnFiyh7BN8tj8LyaC3SJGhC3jE1FRakzXYAe
ZH5cGDMsqDJ6cGdEbE7Lov/Pzkxyschdk8+tjaya/uB050s4lgSIKPiAYLgWpFyTI+pj/ZBKoTqY
oAr8v+t972c8fkwxv+jtuUCOcYcj/CRfCD65uZPs6c4tsBV3yYaAeDJbLeh0TsuDUXLI3Rd4SsJl
POf/HP9Xyxm8J4QhxOiSrZ3A3SI345M3AYnZ6LG0TwuKl5RahmAZVVZSRLpKTrLms3Wsw4Y6OLYv
XqnahlswBEWqhdvikSoqOz/wS1eMxXiYDS9/V0+2J2c1xk9bBuTKj5IxlVLxSxuxn99RR80LR04T
jRCNbDWKP3GawfKXV1abLSd2iDEtvBd6sgKDEeFCVYEHOvG1fz6K+bh4wLJ2jIdaoY/6iBrlvIfM
xlico5g5HJgz5mggv8cwixaRZs20YWf0PhFQplnGAQ6W65mozT1lTKuJh300ZcNx+QWn+5tBgm/g
GZWPmEAXYlSOEo0oiUhUhoa+AweCh2uNYnfXxx+4vK6DNEa9hJjsanI9jqaBcf6nd8npcLv+CQwk
BXSvC2+A43vsVXHbCX1PPLJJw/6tNfVps6FeHuevKzRnGqb+y4Z4evgShnOzGpSAXxcys0/m2mS4
Q7BjsOOrXJO4BYeAgmVi8+7SBUlS0nLQqqmgs6fRQV2XcEXNr/VXb4hTT2V+6pg6buCqKwkujOam
ejkH8ZQzkzZHexMnY+bPTInj4epAjh0UhMS7iEk1ZhlP5yXfq+rgfFsDPatVk95d554WZ7VJKNDh
ORyJ2b4ctvJ670wZ0uqon4nzlMMLgwJL1105SJQsC2V1MktFCwXbF6Jzf7tbd/me+r7jvxZFliqQ
1rCWuaUiubcuqzqn4EIVxW7V8qMqWMuSW5CTjsXXIX1nVRgcpn0fUl00bxDAmI3Jbu1wfPLST4Mj
jFxXeBC0pO4BunRI8F+oaymlaXdsj4H6D/7OxjeWyzYzQni+W0+c1WgpvkJRpmDkxgFAGGqG3+J5
+kArWw587uKAbRtets1FeOXDWN+q732xD7LYZgezTmUIQjxgL11mhO7C37pJMqkMb2VJZyPNysGJ
NCIjsQrt8o4rDK1UVYJoneMyavVUg/T0EXinmKH4giODlKZFWB/Ncs1qtcTTeFM0NOvnzJhCk6+M
A21OuGV2AAbM1Ne9Qls+6PYqTrrPj1sLj0q9Vwr7JXfIWR80K9cOHUNIfSvgVLJ2Gd6q/aF7NKL+
q/UQVGKj+aUJkQccWgXUWvoIThbYmXHenyNwwt5EsyNsWHxVA2SQvGiryePcJjv07RbqGfqrkI+z
yX7f4St/PAKXk13Ogbu7fToI2DImdZsXZOT61JDv9GbSRrZLjdB/ILJ4pnUc0XUOAnsEhgvIq6F+
c8pHuXu+RyLu7EQP1+djvobTYxaGR5syZrzY7lFEH+W6lWpCzKB/amCza6qU3dM/AzaKj3f+hTQc
IJMCkaXnJXORbeBisYSqhAS0EbcWHR1eQp/vhgw42lCUpFxvOaIkSomaVTwB3grnu8A992i4g3Px
43m8trn2BuipKJQtSD3r8hRWUr8UQeUABdlR4yLdbol6DUd1lspcSItQlr41Gp3WDhRXeVHncwo6
rCCmK/SY5K2Ark5YsfetwxE84NZxPOvyvGCIrcr+qHrB3yTK+IMx0lYQrnFnCCSCk/1BMxFTDuRR
p3PmuEli5OtoKC6k5F93qEWLEXKinbHAu4djokXISgv1IoWTfLt+gu1AlstFB+lRwfkI2VT5z2mF
XnvqWk4awD8Gj79F6uyADRQj2YtnzlvKA6ioObZoZvxZDA7TAZc77O/6sxUOdWXIXdFuPb3ESAyW
pP+YpgXqR5dCFmQOymttFu0QKfulSyfBv3feYMWQWJfck+E1c3F5KtXdm/0Nd3OmH1ai6qN2tp5M
KUOd9lLI8a8n2lNG32zTjqZ1bfIaC4sgT8VQftiqGt71Lu4a7BdTXLrXY/P2gA5fo0yfHSnlHyGF
oN7bZSZ1Svs0SBUbn4ARR7xvf01j0RCHXA/kfaPxTP6xn3Q5FtW4BT/sNu/TLqMUyZ/q6Zvx8XR4
h7hEZS6waAQSNOx7b4ibRs+CPn9fRAAO0AVyrzfWkQuE/L//ewADM1yWjTn4UbjX2++VZ4Q4ryP4
5iPzWbNnnQ/aqa6yoi+OQDrK89rUXyvxojWveemDQCGjuTDWpccKVUZaKNOyXYCOjEJJi6j/GJas
izDPmQbc+QPqMTGOnLL6NAcGucFfkzoQcy7ukYXBA0MVnXs9NjqpdpKQTlaovpX6sr7xJ2GvHgwI
KmxXf+sYeGkb8rdxsbqH9p1+75MjbyGlAH3QucCUYlZEmbD9Pzoip+Z87RBm8lgp61kwKsKO6UNi
8kHcf7KppatlXQ3BbCAVYUgrgJ/kK9CLOn8p/2kSWvkDMNdD92hWKnZE8r+J0RY9tZ1V8NpXN6Wm
NQp1GH9oEk5cNeoQsqBwcCtZqOaXKBVTA6aI8HQuyJY=
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
