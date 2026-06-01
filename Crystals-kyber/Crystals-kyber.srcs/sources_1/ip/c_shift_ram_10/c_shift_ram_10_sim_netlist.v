// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri May 29 14:03:47 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.srcs/sources_1/ip/c_shift_ram_10/c_shift_ram_10_sim_netlist.v
// Design      : c_shift_ram_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_10,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_10
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [4:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [4:0]Q;

  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;

  (* C_DEFAULT_DATA = "00000" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000" *) 
  (* c_depth = "6" *) 
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
  (* c_sinit_val = "00000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "5" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_10c_shift_ram_v12_0_20 U0
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
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
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
JOBfQzELe/R2+vAKR6sE5bKDyoHaAOunaa8YVBxsUrKxtpMYHN1+2ls1FpzmFV9Lr7FB+t1NgVYs
oP8K6gI5CtPlgh3ejA0Km81Ch1TAVUmC/cJ5kcp0Uyp/g3q/H1JepUiTTrf2V1VwDLNEQMAK1GyH
7eIDgnTlJxyy/W8FzCqC3Okbj6zitAk3uRJF9oNV+NHgTsLXv5E0/Kuok14lpC3TwAGixJ1Y12hP
BkLdPC0rc3kczUBXs++NVxTrG44ZgbhLgHbOyPDW7Q0UKb+JNS035WmsgC7MoXOMTfHILdjBqrg7
1aAdl6gFeMhP11yr7gGlfDojw4lyQH+DKy0q5A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4WNE96bTUtnvilBKuZA8STyzDR2qko+MgaEdf1Vihk1EO2JGjXkeb3/4L/4iyL64MC3mTzIbsbKC
7QLqFZ/bghstd1PP/oz4zJBX+C47GQK/n+MYNz79axwgmgspsFpYH4NQz/eUkenJwomxbSTTiQNh
p3jLO86dGZu0isMtCd8SpVpmFdpPRoTLcO0+Hjvf8Pm9NlvrKiLFQoZzhFhHLxqKoy5IvAiujWMw
xllVFjKuZjYRl/1klkzqYygK6d+HM9t7HBN06dJOUbEyc1gsKU9/g+QXnWFrhEvYlv4jUG1iKm0B
gjfXsXVQDKZCoOnA7kRjaZ5KuUnes+kQsgOu8g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8048)
`pragma protect data_block
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
JvIX+eWReX1ZXG8=
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
