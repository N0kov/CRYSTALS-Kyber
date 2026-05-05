// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:48:32 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_2/c_shift_ram_2_sim_netlist.v
// Design      : c_shift_ram_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
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
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
05Z4eGrIDAsGznZJV8SjoQIyTH/kfZce5wyBpA==
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
hzIT06WOYUSC+LEGhFE8i6QJd9gFrpBUCJki2jAh8upioTps3CV/DJWd9NUW3eSWFIPf6yOtdmaj
W4d9zLFrT6abyj/zFAShGP/ioyzzXsJq/9W9JbbDG0wz54pOYv16TpkoWZU4OcprpFEIJbIIkzYc
eOGr6fZOiq1fIWvdcj/Stk2Ivq2jJZhs4IYhm8FVHXFmGFrBIgb6yKkN0480fuVmNe9FpQ91gemL
tNDA7xK3KfVO3nZlsWBeWg61v0i45qfCpsoEnrG2tFuitUNNB5EGL+MGJSXwyM0Z+SKDuuS14J8f
jDHanpM6srcxVZjEbTPuMJux6hv58fWtib5ROQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QV1gN7I2icjvX63KWmv945X9mrP+C+zD/eg2QmXjH69BVz2iG14Y5Ejv8UepkaGM0x+1edmotg/S
KnO6FAitGRkl7e4To5iWfxiux89wtiVBcjmdgq91GyPCNDvk/MNxioTLR45QMSJi+E58Tgd7FaFr
1FnvpMpzxto5FZAtUU6C+oBcPM//cpF60D6R7tEHHx/5oIDJNXMMlZeHuI4gdzMbNINt21Gs5Dj2
rkGX58KP0EJ4NsNekfGmaIJG4O2xTAQkUwt3g5fmdfzV2Mda4D2Vah661cngHVZebkROdOwjzfwR
OIS/2ixm/jrvZIMPkT1uu320Bu3zMAw57/uc/g==

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
