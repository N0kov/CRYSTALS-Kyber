// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:48:33 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_1/c_shift_ram_1_sim_netlist.v
// Design      : c_shift_ram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_1
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [3:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0000" *) 
  (* c_default_data = "0000" *) 
  (* c_depth = "6" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "4" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_1_c_shift_ram_v12_0_20 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CLe4hIBuPoGhpVl7WcpdPrkOqRB4Jx17xO25OhKMzcudPtO7fyzQcLT1Hwfd0j30ICv/93MrjmYk
VkhpZR9EpEAjIIkPAj6Uz1DaF5W+ZmnNsekRAyk+3Lm7DCkEdldRunmAMklLXDYSE0BHPyNZb6/O
1fVccxPwFw6jSpxzyJ8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ACw/whBd4sJPjEXsPWy+A9hsrulOjhl03yGnO0wIJb/8lOFB6tmCM94OcdNwiMaV6kg8YzX1Zq7/
NE2RxoRW0a7WAr7xvZPy265UGSafgRDCpO1KBNNkYutsmHT7D2OLTvT4FaHp5hZFRk+z43Ve8ygQ
YJTKyx5ivjb/80JLBvE8hnVCpYkZN6VnhMHuf1XLNa0oxWLQ2z+ODAbTE0KVd6D6DWycqrbcGtw9
RfO96KL4+hS2NraPUOWRVGCJvHh+C9oFURQ8sSL1vIHuy9U+A+C/triRYJ4Yl8X5mPDgDSLb9GaP
flIuoeMAprVt1E/Bi7vgnF6kuuRtRrRwCbGG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WhGTCsy16/t+nTOk+CGv7tpQem4v8f0JcfhtmHJKBQmUKRgMWECn1vAxv7cTlF5fBXBuNPE5ekvE
eE5xvFBz6Hn8xUu09f8xFM1K5WhbovRkMP3+0G0ookHnjX6DsYKCCqav35emaqOkBS5JhVj2EBPk
XLtGUbRCypldy9j1hdo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HTqbg+eKkopQi5dj/L+szqmPwRpBkCcaMjACO+UpXthtee/no4xSMcGn8abIY3SPv4TzrnuqqXPm
0AF2N3wLbDTLOGfRyerYPQtOSICnY0YK1FpPbRpt8J37qRX06v29OCgAKQCRzqcyktN979XHA61i
y9kXKs0ecYFb/aEJn+r/Ms4/zkik5QDSibn9rXgrCIaAq3oV/qy4/eOC1I7HxFJ7pQLvD6TaOwrX
4JOp3lWwPc+YVayAWfwfSM8th7MZKBhpSD1StLeBRJc4CJ5oDLwaMgHEFCXxx3pyxq8QdKSuHOu3
Wi8mjTwcR+O/8mCaI/EQL04GZntygGZa6NRnQQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o91QaUL83RhelLkEm4+751/SyYIekusmli7rQ/VnKAUITjkJaEGeiMiekUqrom206GlehlLCRUuJ
Qk6ai4cQrpKj2AErAd0Y5kUpeM5RS+aWpFjtOYrSHMdr4rMfgbsw35qJ6v9hjgJLVLLd2hyabIYi
/IO+Syqy221cIW0MUUpzoOJ9CjxdiirdkOfTk4p5NvXD0hVLjTWo5izC8MmrhTohoXTCLeDPBtni
h9yjKz34xbfDJ73edDWDKZuzkcksNcD8JDufI8TXjti6zIBBimw59rFhS2J51ljYPnYfZPiVePJ5
N7uOtLgm5YB9EYVkYBImzlegfvfeWKMlMPTN2Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lJKy9Zjha63A0h02ApuEz30etxi10kyaT0MM37kT8C079RoQxr/jzSdPRVB6DZEoEoxq3B3ZtFpY
YjPONLB3n6tCjDMSDQ3C1I1mBthQK6OvvTRuHUxb1l9/aLvQKKbftHNrYBApn8VpMjP6CLucAxZp
+odccI1IV35j33TcUjek8yCrtxEmdzWv0t5wOEQA4WTFVG1fU6/a+jfGVGHnhJhasL7Jl0YilFPM
HWd3rJlyr2xUSar0v6pd0AVRt6yFuPoCpA/gavX0kZRv+AugezxEfo89yWvJY2XTRZkZi3hMrZuv
vLK4usOzcbsPeMWzlO01N6DMHirnppE7yicsAA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZguQpkzQaubvif4ozJshLhSpVr4NjQRAvIToSXk4wKAhLoTGGfhff6h7uytylGeHmy/9jn719Sv
HAjAigAvx8FgkAdQ9HshMaw6B/CLhf7qqwtfgiEb8k4WEUmEBTliot58LPV7jCEMD1VBzZWYR4K/
F/3P7X3moGjkrFh9KcmMY5GwF7k9LuqZmEI6DK0O8ZCX0hTQnQ2olSPRWHDbVMSNk21ob6q2E7m5
xpDVITSJEGo0sugVShTUXPzIS2aLKbIkU7M7Hafar7cSxwCvM01LmXbK2kk/TJ1BnxjpTLKgqxru
qHGOZsfM5HZn/M3rQKeaLTsgoxJg0TzUyDcG2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
hKe8IASictRpxK+UNDyBjdExv+cunUPc6ZpI+7czTzAehV4HfB+YDHOd05j6V2WSrIfjaa5Yc1RS
G3r38XeIaYh1ZL1ZSXdIVLclvWkAD0ZTUVklwYY6ca20tDHHAciXUrro3jg9kGe8H2Gojjw+VQZC
vGGdV4/DF3pjMdpz4nyJJWNfnYLPmx19+G3AsjJsk77LkeQJ3ac7KA942yZdeDmv4Gv409a95Tsb
ybgnN5fxmPfJ1KacG4k/Zu07i7vPA7/85FRrgptHJL0ytlZgmOydqGwz345i+KR6+tR6P3ZfO0s6
zos96acnjsr2RnP6pIJ30EKJj+IMY98YqW+6wBHZ1tOwA0LCIHrVhIyGe0B5IXV4RAxNY/K/8cZ4
j/W2apPE52Pk/hvYFtfyEVf1mS/lGq/t2LznNsZMt82q93Jb8hxwC6Zd8lrmm2hfqYfOAmlZmf6O
EfYHOP1GurKAmfr07eaBzMSZGJa/fC0AncpmpYD7OL9jcP2lP5UBi+qa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HO+y/HjEaXV9is2kIeddm5ja325WYl9z3UGUIfNECIbhm1CsOvhNxo06AGFh3AtmMj1fkyl7FpO4
5p6qJPGuMnf7KaoL2lbPdT1FmXinUUneD7TyneDl5s/cvecL9iNEtBuembSpR8uFQlqW3j5MnIU0
UISBysTQ8EGO9RDHkRKXJVBUPunFpCoxViEHDwuLeOfZnsSUNCm1TQkVN6lCJVpqMXGrell2v+/D
+BJWT6gUeDiXDTY/zYKkdaf1QckERhcVJjNORVmQDjxTeDa6GJ1AmksSzrK2M3vTp9axAcWS5ak3
FP7Oo1kxa1CXdzBltgltp8wxugADWHbPbfb6Kw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2096)
`pragma protect data_block
8EqKP+CgINE0d/qlh3aVbaC3UGPuHgxPPShrVpVcjlkQyGzXVdls2xMG0oU4rhFuC+5bIt0HEN2u
zH3GjbJia9BP88TXTEAnqSWgOQIBYNEQcXf0lt/PtT46aNWHYlN6gpNu5TBylsnRDFOWuLGYmtZG
kkKX5sQXU/O6xwwtrYSUZwda7s+dC0LJSGpsOnts+RS6yq77FGtCpvrpeuB17dUBeOAyO4c7+Kyw
oIWVfoFz5ksP1cYyLr2upNsD07v7JTQJwP3vPF4h/QkdANSXKIlr2reWwqtnyn/vGRz/Qp36YtAo
jfHh6iMG70xNvTyaI4M2sq5h8pERuV4g3nstHJj9QEJkqdA88+oYc84/U2SG1RW/4pRsylNJEotL
JFyA2OoA3VVla7zvcZM+mntIrak1/709zJsbGFlrzQhpI7wOj7epr8JqHj3Lpf7b4hgxT58Hb1eU
Qc+kcdDWXWaR4FHNE/l5DwvGATLhReAq0WsVhyKFY6GmtG38aXBSr4hT59XyTt3GcM730Ykxp5e/
t0vRRGMSpP0ul3KiZZQedcVVOE+QtRGrLgbTK35rQSKAG4ywFakLqlrInsrZIBX7qaN7GFCE5uG5
+3iVDzf7tysN4N6KZeOl505LS1HTcJ6M45fKYsgyePuEGS1LhLkRUaTKyVk7Ql32bq48lTxCnZNu
WYmuoBfpCRXMfH7YfOYs+b3wYkpOca3F9xeiitCcQ14czuDLWR2lS7pUmQN8K5UWlrMqBGWiUOA0
R4SaAlK0UbcWp94v2yEwfQ/cUiG9F2vYVrJPBHo1gnqpRe6IhPUnhm1Bfyq6f6U9hJwTsZ18mBp4
O4307DfvL64xNYyEg0M0eNwL+U74jZFMREM7R3pN8U+rF+OFyHg5UIuUo+Ldi+iGy1neguXO0Y6s
YwzaTsKJvqd8ebIl69cavwyLrnxlmOzRhb8Zq2ZAQJ0E6yWU6ppGH2ebeKJkolWcx2wcfh2VaydC
1mXE0pnA83sJt2o0UKm0ApgiPmtPRHLQxR/bS4S+y3PnuHUjGezLPE4YfZrIYBLzBLlZkwy2gw7f
Ehjiv3PkDYKsK70hgoekldrJE+P2aMfanVRaKXSI40aE8rJ2/aOnRfvfC4tMt3/zliOCj6ux9duX
x9ls4PlGcRG6H/C0jaCPWfE03iQ1vchCIGAfid6phZjbgeKn+Ai/2tFE9IO45kaelIBT2WBipPY7
LWSQTBsRgJybjz3HQCRAa/8c5kJiGwFbWoI+a59uJHS5plHPQa6xuURUfdmjF+YabCWNuC3FJ6K2
atn1YVX5jDeKZ3JEDRsXRKEY3HnryqTvyZnJuhqQkH13yy9T3XmVIEJnXQWcuiyqHOqPggi/Pr+V
sjm4B2tGUo9a95h7HZ18Be08DXfIiJu3knOonB9ybEppCGqPClceXPO1Ag7xA/B0EqL8Ug4ulM4N
vvzfHM5Xy1vEw0JtOKTpVhVTJO8mgTxwOsXD71N4qe+m7c/Lozf+ACpCyUpZtGwgQPGItGK+xbMW
HU1gcBPOo9007xDDH+VfKoRaaRMfqs4WJeNKSMAZ88cXvDxAH3ot00qca7BEWhTF9ekJZQLECBxt
8YP2fKLL+b3X4/y0q7N3evELSJlzoqyiItuIVQ1weXP6oohyuivW8az8T745kcfoxZ1HFybe06Hy
OFR7xjKOrWDUhsWjARINW5RYDaof4HLrfMDCUNCR9TMLAHfEBv9klOtiIhmXdpz+FIm6vgprApHo
Auk1YZWcWJ3LchBJN8C5+RTaKhz+UAyszntoOTLHCm3TwXOy6Wr2LrgRKRHFVuWaQLv4NpLwB+fs
/9VZCQapopZ9iBYrPMpkcMmF/5wMwOrxV5OFXm9z79Ocy8eO0JF4OI0WlyBphpt0atwvx/TGsbAv
mh98cc4QWoaEUv4VobJbhMwb8Nxt1kZAUziefJJRFPQNmunbKZ1XycvpNitxrlJusSK5E+gySlOB
PrmbxbSc5yIsQnbe8S9iOrc1DBnWA6x4kwCOJ+cXTdCz8L3PvRugrPVAWJsBUivL4wI8a67JCmF7
DgSQE1BPtT6w3wfQPnbBwBqYJfxp0NPYmufFC2NxqDskCVqsxZp+mD6p96rkghurzfQ04vLMIV6s
QSACL29xHdaQ1RUzsV7vFhSKRgyCBdJJTaSrB4EOtEQP5TATnmP1Rcj/K9e8CJE6T5l7mQhZeoOe
xnPCWhUk+YPmplSwEdIZsytv1AlpIyWoX0wI+9aFPG+FjbWHlfPsgsfeOuL8T9pNiC5F3/6Vr66M
W2ADfx3b/TNbWTf71PDHCKYPtJhySKlJZ1QRdfrI8eqOeW4gy7zxS+vVqQ+WxQe50xz6hkrP4ppl
UtBcEE3EXIO82TMA5DH8U8lTa8Xzx7Z+5a+ZbmBYmtbYn2Pxg+/AsUxrMIi9HnencxA8p9dFLRUx
jxBCgNoLKto2siF1o0H5VTtaZllRevEynfn4vYipoymR4Q8jnUWwZft6yrlpZWLMFxvlMEoXppuy
ByclhLbnaZR25nETWXIEAiTo+Lw00TN/EKUju9OlVcCpn5gaDV2bGiD09nu1RowKJUZKSCRiK4JP
MMQdU7c4UYnzsVCS0qDUaZQpak9R9LVVYWbtpldu7iJjEdsrPWpwgN/em4ZPrKXG7WEkdmNwdP4c
tGkv5cd/DNdE622MJaSpsqlSQ/qV31sYUMYnvswvjPCyFCokAst6MgypTwOt7OGOQ/l3CvC71C/x
jsTE5mmX1iPqpbUnlLhs+nXakNFgyrFjIFjrkk7nI2oq+txnBD9fBM7DZbo=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CLe4hIBuPoGhpVl7WcpdPrkOqRB4Jx17xO25OhKMzcudPtO7fyzQcLT1Hwfd0j30ICv/93MrjmYk
VkhpZR9EpEAjIIkPAj6Uz1DaF5W+ZmnNsekRAyk+3Lm7DCkEdldRunmAMklLXDYSE0BHPyNZb6/O
1fVccxPwFw6jSpxzyJ8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ACw/whBd4sJPjEXsPWy+A9hsrulOjhl03yGnO0wIJb/8lOFB6tmCM94OcdNwiMaV6kg8YzX1Zq7/
NE2RxoRW0a7WAr7xvZPy265UGSafgRDCpO1KBNNkYutsmHT7D2OLTvT4FaHp5hZFRk+z43Ve8ygQ
YJTKyx5ivjb/80JLBvE8hnVCpYkZN6VnhMHuf1XLNa0oxWLQ2z+ODAbTE0KVd6D6DWycqrbcGtw9
RfO96KL4+hS2NraPUOWRVGCJvHh+C9oFURQ8sSL1vIHuy9U+A+C/triRYJ4Yl8X5mPDgDSLb9GaP
flIuoeMAprVt1E/Bi7vgnF6kuuRtRrRwCbGG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WhGTCsy16/t+nTOk+CGv7tpQem4v8f0JcfhtmHJKBQmUKRgMWECn1vAxv7cTlF5fBXBuNPE5ekvE
eE5xvFBz6Hn8xUu09f8xFM1K5WhbovRkMP3+0G0ookHnjX6DsYKCCqav35emaqOkBS5JhVj2EBPk
XLtGUbRCypldy9j1hdo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HTqbg+eKkopQi5dj/L+szqmPwRpBkCcaMjACO+UpXthtee/no4xSMcGn8abIY3SPv4TzrnuqqXPm
0AF2N3wLbDTLOGfRyerYPQtOSICnY0YK1FpPbRpt8J37qRX06v29OCgAKQCRzqcyktN979XHA61i
y9kXKs0ecYFb/aEJn+r/Ms4/zkik5QDSibn9rXgrCIaAq3oV/qy4/eOC1I7HxFJ7pQLvD6TaOwrX
4JOp3lWwPc+YVayAWfwfSM8th7MZKBhpSD1StLeBRJc4CJ5oDLwaMgHEFCXxx3pyxq8QdKSuHOu3
Wi8mjTwcR+O/8mCaI/EQL04GZntygGZa6NRnQQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o91QaUL83RhelLkEm4+751/SyYIekusmli7rQ/VnKAUITjkJaEGeiMiekUqrom206GlehlLCRUuJ
Qk6ai4cQrpKj2AErAd0Y5kUpeM5RS+aWpFjtOYrSHMdr4rMfgbsw35qJ6v9hjgJLVLLd2hyabIYi
/IO+Syqy221cIW0MUUpzoOJ9CjxdiirdkOfTk4p5NvXD0hVLjTWo5izC8MmrhTohoXTCLeDPBtni
h9yjKz34xbfDJ73edDWDKZuzkcksNcD8JDufI8TXjti6zIBBimw59rFhS2J51ljYPnYfZPiVePJ5
N7uOtLgm5YB9EYVkYBImzlegfvfeWKMlMPTN2Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lJKy9Zjha63A0h02ApuEz30etxi10kyaT0MM37kT8C079RoQxr/jzSdPRVB6DZEoEoxq3B3ZtFpY
YjPONLB3n6tCjDMSDQ3C1I1mBthQK6OvvTRuHUxb1l9/aLvQKKbftHNrYBApn8VpMjP6CLucAxZp
+odccI1IV35j33TcUjek8yCrtxEmdzWv0t5wOEQA4WTFVG1fU6/a+jfGVGHnhJhasL7Jl0YilFPM
HWd3rJlyr2xUSar0v6pd0AVRt6yFuPoCpA/gavX0kZRv+AugezxEfo89yWvJY2XTRZkZi3hMrZuv
vLK4usOzcbsPeMWzlO01N6DMHirnppE7yicsAA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZguQpkzQaubvif4ozJshLhSpVr4NjQRAvIToSXk4wKAhLoTGGfhff6h7uytylGeHmy/9jn719Sv
HAjAigAvx8FgkAdQ9HshMaw6B/CLhf7qqwtfgiEb8k4WEUmEBTliot58LPV7jCEMD1VBzZWYR4K/
F/3P7X3moGjkrFh9KcmMY5GwF7k9LuqZmEI6DK0O8ZCX0hTQnQ2olSPRWHDbVMSNk21ob6q2E7m5
xpDVITSJEGo0sugVShTUXPzIS2aLKbIkU7M7Hafar7cSxwCvM01LmXbK2kk/TJ1BnxjpTLKgqxru
qHGOZsfM5HZn/M3rQKeaLTsgoxJg0TzUyDcG2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
hKe8IASictRpxK+UNDyBjdExv+cunUPc6ZpI+7czTzAehV4HfB+YDHOd05j6V2WSrIfjaa5Yc1RS
G3r38XeIaYh1ZL1ZSXdIVLclvWkAD0ZTUVklwYY6ca20tDHHAciXUrro3jg9kGe8H2Gojjw+VQZC
vGGdV4/DF3pjMdpz4nyJJWNfnYLPmx19+G3AsjJsk77LkeQJ3ac7KA942yZdeDmv4Gv409a95Tsb
ybgnN5fxmPfJ1KacG4k/Zu07i7vPA7/85FRrgptHJL0ytlZgmOydqGwz345i+KR6+tR6P3ZfO0s6
zos96acnjsr2RnP6pIJ30EKJj+IMY98YqW+6wBHZ1tOwA0LCIHrVhIyGe0B5IXV4RAxNY/K/8cZ4
j/W2apPE52Pk/hvYFtfyEVf1mS/lGq/t2LznNsZMt82q93Jb8hxwC6Zd8lrmm2hfqYfOAmlZmf6O
EfYHOP1GurKAmfr07eaBzMSZGJa/fC0AncpmpYD7OL9jcP2lP5UBi+qa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HO+y/HjEaXV9is2kIeddm5ja325WYl9z3UGUIfNECIbhm1CsOvhNxo06AGFh3AtmMj1fkyl7FpO4
5p6qJPGuMnf7KaoL2lbPdT1FmXinUUneD7TyneDl5s/cvecL9iNEtBuembSpR8uFQlqW3j5MnIU0
UISBysTQ8EGO9RDHkRKXJVBUPunFpCoxViEHDwuLeOfZnsSUNCm1TQkVN6lCJVpqMXGrell2v+/D
+BJWT6gUeDiXDTY/zYKkdaf1QckERhcVJjNORVmQDjxTeDa6GJ1AmksSzrK2M3vTp9axAcWS5ak3
FP7Oo1kxa1CXdzBltgltp8wxugADWHbPbfb6Kw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ltDGp6seFld/ErhnmGs0624moaZE+7e3cu4/a5ctNwESjiS+cN85t5KlaqbhDT1zItMWLNBtwMXf
Q4gu5VgBwEsKO5lXZXumWCnksvXgeLLZXtuQngRh6z86gFdYE0ylrHuCDFjDhNBCxnl24MUwJyFD
dtXScV9GU3X6CmbaH/bU/316CvvqxSZGTbOMfzFjfPHw8FlDoxXldjdWoNuMDqXFYAoNYoogXaKv
ZfYdlRLgehO73X9+gqE1MixH7j5C4+f0Gg4zJlbgRy6qjSHiXjXuC+Z1av2UT+2o6YbLgJu7ggv3
0WPFSfgI+To7TpSiexWkGmwJ50GjmKTcW+RRxA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B5IDCEzm0tP7992+EXHYXgGAWi5AMpmHcLJphplmkrzlVZw7y87GCtutjXy4Cc02P6l/tRVAX26Z
ngNo4dLy2bhRGZP7DDrrkGOS8an7NYvWTRoNKXeQPwW61rMF2O1+nMVFQM1tNghL3Ox9st8wRz81
I7x13w8/65Fm6QMLgJsy6hsfJPO1QH/zmwIoOkjVsNfBCR5jFjgI3Os2HHxn+3DR2WKvqYo787uI
RswFPyOkha3klTdgsxo1++/M3+QcBrbjiik7vECelyR5+x35gw375yyiiJ6DqfITQCbK4lmrbHyP
7qepgYXWD2W9Yjq7Xb4kQvPkBVzhINLbKz4GoA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
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
