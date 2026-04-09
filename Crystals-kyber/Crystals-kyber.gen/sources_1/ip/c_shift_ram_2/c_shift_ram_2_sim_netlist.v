// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:10 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_2/c_shift_ram_2_sim_netlist.v
// Design      : c_shift_ram_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_2,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_2
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [1:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [1:0]Q;

  wire CLK;
  wire [1:0]D;
  wire [1:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00" *) 
  (* c_default_data = "00" *) 
  (* c_depth = "12" *) 
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
  (* c_sinit_val = "00" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "2" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_2_c_shift_ram_v12_0_20 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2080)
`pragma protect data_block
w6i0SVx5Q+Id31wZAAEjqVymWb4KLWhBfBm7XKCeWg26QWDUQRAtyfgy7+toBzaCEYKGWy8pxMQv
je8ZDNYvcI3qyUN1IvoBjiqLrCTp4+eeZ/qq3mMtJ5DUIN7fdaCZuA5F/rnr67HWYLTU98Y4DgG3
o2FPnZwk4hV8iGrrvgQlpkBGX0Jpoh/jKhv0am2jEA2bg2n3XOxxa/gTiG0XOnalWphBpJKGDItx
valsD2mRisgzktHG9lkLikqYOAYTG7ben4zFvZOTuiQ1ysT5CPwnwAglmOb7KPQaCIdjgXTYH4wh
WsRxYnODD2zTSnfkMBmQ0dzWdrs8S2CAVfmQJoXUJ3Vj9DfMQhgBDAX552qMqlQw52dEaQAlsjST
ioLnzV7zrZAnPo6wL0wP9s69LYdxN90Ay7Y4gHBxoyebIOmrrdW1PGJrdQJ3l2yAHNOmpkA5xc7o
9QGCVxZHPB3JqCdtCP/INgETqHD3XJDzdoLlNho+rYv+QoPwsqi9CeoXZdEJA/my4/2+C+ApR3qr
PEhUsW+ulkZGzMl/5JOKUk64OMxpHvNbxZpJf/wn/4LxNpOXEDFfOEwBxQMHmP+aL9KrpoNch2NY
bYFIDG4VnXrMd3sg2Vc2kN3uK+vws11CUrXa2R+vcKSUjn+w3WIRdtyX8qTeNa0YJtea0txYWdGI
CaQ6JYq4QfKRhihAUMpZXe3KSpcgV9/mcK2xQpIbDfLmGrln1HkrcmMX03KAeUalW/+7MPJwkqrt
Ee1NVdR9Z8BS+uwBgrAKMc2ijVbB9lOpLd96joKzahO2TZuVoy4uZ6PAf69yUQE2H3y2ot83j77S
iTSropnNt6YOda5tRfFsQg1lfVAqgHAG8sJ9Jw8osgGPj8z1y0FzJ54bWsrkctN8XX9gdV0S0WSd
laA8GV+h+GergCTI0UVrRpokdEib14cj8Iv4JokORD3kgDnjSss+ne3fmRaNGJ7yv8upxXYA+Qlg
jwQLXVwgTTZBUUTdW+Zwwgs6Zfq8eT5kX1nWVLfi6ql9C02KNfN2I5b3x1aguB52Ie2lF0OwbRIT
MADM2W28bOY6rpcvMvHE7DWaxk9RkvK7nnkIwKEuna9k55EF1zh+skeqjcjV7CPupaCs5MJ0sUxz
W6e9B22HWMnEzM8NSd+tsrwX5BymMQpUBifb59ZsLwWkMfJEwxEYkGXqIw3sCynaIdPHRIKpiBp4
N1DL3NP3NluQzKjE/AbPYd7Ob/2g68vXIZmozIdFVQNTbaF2hAr1NHUJL6l4P78yCWLt707B2Yo4
hftjDUmkqm3+JxmgF0GoxGrxOBeUeXsC0A/0GnAlQSpy0A4H7kZhEdMbSgaI5tjCN+lUmMzeVUy2
vxTz3bV7ZyomcpW2rtBVD+CLtrdN+sfbp8rEPNApZZKRHGw6okcESSNqbA3PdJHkA2G5V0l/QdYP
qFnCV2LYH5PpaLZNUmt0jBnnV7jW5407ns7BdosrINGrIkyGQ+aQQCKevdarWAWF56/2UAAdiPKL
+wjVAni46MxIxux5Wl56ljpMrPu+SZYbYoWgppblUGciAxzmTjYsbR68fhvXd3eoJKxNu/pZ2VKl
ip6yU3tR7o++WkpLbGuRcw+yYOr8GWWAvGBSGgli4mdTEGn/gxHaDR/tI0i/uO/KGq9j9QHH2N/J
ijQx0Ig5O6L+bhoqzivPlyOsfIyDhoNaKs+67sAFUH+CWhSiH9sKruZ8XLiaTvVGNshpOrydh1DQ
qsdJNu7zU6TqkTCmL1ABZq6IZqbnac1X3zRcf2fN1DP7zcdjwk+RgQXHJReTLrTDy27etAV3TDQW
Ljeh6IbHfCIErZwS2MRobQiSM1f62eG/mhbA2UiVbaNE7F5/BTNUTk8Vvrr4wb6i2U1n3qCkJGsb
J5TEq23hyXnZ+cvpWbwiaA92wcTu0jtVqX9ETkalJ2rrap5vEE6U1q23RC9pjDYZOYKJQ6X36rXU
SRl/LLcvu/shlwhuJ9gkFdKeF+8BZAJ1o3BXW9C+/5obztbkr2K+F8MxVb4KKm6xZ2VcOnQHNR+I
NnFF08HUGYvJM4jKvros5GyLPCL4mQVm+jeZS2Zv45A2hhIEJyOBBfR90H6ESxwoMXVY4rjg3W4I
a0M/oukJhmd0poAZOIm70Z66S8xtbCOwRDZa2DuwB7dg4sMaZkglqS3S4tgKyad7ZTkB232RmiwM
M3AfGzChRcBEounUUs1vSsKIt+G0sHxZeTQ5GgdDcTxCE+0JW16cQNi/YES1n1rQWi8UbEer9PJc
mcONhQcINoVAA5NLPMhXdc5DVSmwWNJy3ugb4BrcEAYK2ZoXu8Ypw2zJyrKBQ62qxi3muCamld0H
6zXuTlsJ92zkXoGqJxqzJomd7hEwsxVjo8eleU6vi2PQCsTOTgVxXqOiWc/Pa4jQolYBNNML6YV8
d/S+B6jqKD4Qa4WUKTsWZ1BC2K2dmDDTr8iYTps3weg412s1E7/qWCfa7pbPUbcBuCK6I9mm1tfH
ULQflrkG5SaCMaWw9hz49+Q5okO3kaCrdb26ZdI7/ehRkKb7qiewtJ8ZG/KozW16+96Xh1LA/36V
qiIsfIDIMpGQQTS4a1/qJgHtN+sawizL3kPnb+1cixmH15I88Dml7HN0CkOjQNsJO1+qtO8dg5Sv
y5kcwjwL9q2IafrGjXymErhb+nmafv1I+Xod9u4F9VmFbaBdK3ymNJ5Z5kvSGxiv5PJdNX1Y6FlT
PCMVT4nNp1hXhVKBSkTnqNzbySm7GLENba5koQ==
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
Oiqs+DbJNRp1Sdvmedeu5OIPbr60EXoNkZNqS1q+XHOU6yo7tWPpJusANZun4JPaqRils3DN/IfL
byBXAHbT++mg/z7lqw45IajF93nI+oby/a5aEC8oVFSyw+84IQjviDElBeepWUgAia6/EvN4OzTL
Q0lvBdfKvV7nCZnzCyI26JZQKMPxP4Z+3d1Ip2UU4uOOKfCiBynkOw4IdSDSRTbtxv6tklcXjMrM
eWnQ+Lm92IHFEKMkOygjIQ4Ma2deZdkw3arY3HB4T4eku95flqlpkJXnlkx4Oviy4a+hsIMDtNme
EQ8Z4Z8RDfJkko60bU5C24BZTB+3pjl7J7r/og==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DifEY9QMreLJCZs9r8Gs8y7BFFYDWxAdW6c3pkXNf3+oItOoS63U+pyN0QaZszp3QaVQs+NMFehI
trf9tvtXpV+pqPoc3kmBtUgg3lnvU3AgOFBZ36TI/eUbZXfznW/FIEnJov6Nso0bY4ICot+lCPs2
YwdyFFiwz1Qkv+wJeWVA6zHTISuXpCJgZEl/iCCBvX6wBmSwtx+s0W5MmOAHu2pB5bBUhEn/3AU5
XE51CAAzaIllcpsbR3uRSoUMZs/HtxUZ+KDarFzRWP8QwVlHqErq9EcY+FvI6WrIMCIlLj1HV1FT
0P7s7KKgOSOg3Jc83ozp+eEro/j+JJwXSpkFCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5568)
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
