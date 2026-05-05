// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:48:29 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_5/c_shift_ram_5_sim_netlist.v
// Design      : c_shift_ram_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_5,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_5
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [6:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [6:0]Q;

  wire CLK;
  wire [6:0]D;
  wire [6:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0000000" *) 
  (* c_default_data = "0000000" *) 
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
  (* c_sinit_val = "0000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "7" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_5_c_shift_ram_v12_0_20 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2112)
`pragma protect data_block
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
RrGr
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
niiOyRO/oDB39Ah7YnhXjVRVYZ8QQ7NG5MCTEZz2i/uAUHNX9ix2Il6dKwLUoW+RP7hb46EtgWkK
aK8ap/gRGKciHDn9LPMC3DuRWdVglPEzoiFu2l3CggzhS9KCwpanVtxaK81kDWXA19XZ1kXVtdwA
0PyFjpYceZ3kwp7XIuD4LVfXJ2e+wfAlsONTST9FJZjVw3qhe5jAcdYW3wpbTzJWBuoUM6+0ncSf
9CTU8FBS9T78uq8m9s5ZBpyYL69Z3AZAcSGicgOEcKaVCQGx1ZXiiKSmZzQVGwz0eSUm3OTJEtRt
Nn0mihdySiZsdd8RdQbss33mzmqd+uCrnPICRg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WzMo1YOUOKHF5RqJuGzBsvf0v34scfgoWAlj/2lxOOjhnnQ5E7L1cwi4BZejJHArgcXuiPSw47Li
5WOXMgm8NhbfIckMoH1PgSTygAGJIXnhaXocyATfqCsJdHqnKD+pErMbo31BwJnmrv0/BJHpL6T4
0W3MS+T+w5esmO8kW73ZLUn2BAx4NWtwFWDW+KHVxbvtG4KxDfzMTcOAiqQ5TW0TMW1NdoIS16+D
6dAXb4V15/TAKsfR2tXSk3/lCdk9pc4ttkscLg1QcBlOsxqDuy+DVehsoTL6H9W7CKwnctdyodHJ
dCR5Xc9fi/GBR7XFvBUFen82xvvo7zOQuyWspA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9792)
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
