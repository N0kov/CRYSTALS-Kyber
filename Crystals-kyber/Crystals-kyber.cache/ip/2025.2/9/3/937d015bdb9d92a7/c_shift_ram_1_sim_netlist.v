// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:10 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_1_sim_netlist.v
// Design      : c_shift_ram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_20 U0
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
Anq500KH/tb1a8Hfgl9AdOE46oU5MId43+bfRmNM4AdzUeZAy2jPHxQhRC79S31NJGC3sdpboM8U
kWBiHkc4ctCWCL/A5QmCrIsixqWwB41TEEyJFZjbvCXH707e+K4TcHcjL3J/KtYndPmGccd0dOSI
oFgwRUBXrWwtBieclbTw+xD02Ov0et1ztzvcAGbXanCpG6EVU0CP95ftnOAAAIl/oGWPIDWhIr20
obOQHaLilj0+25jhwAyrNRv9p+r74P5Rcdg3MFafODkdkC9nPMz5RRzMwD6NrvsdTr9VRY2Opzid
E7C9cAI36F3fMQjyLV/sm0H32LF3EmNXhA912A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zuGM25cTBiv/tOJgnqlX30+OOZxMWZgrdMWRndYVzJbUbteMvMIjEoI6Wg0JXP1sV3VRveeAlKrB
1uyFAW1/c4nQvY3LrcHUvvkIuiO3+Ora8HRNsfIyxPshDXzRZLSxSKT+3RsSgtkQEt6MMuTPXLGu
k7wISuYCqRrQTJm41tBiKQBzzayI+/9WJu1q+D9mkVJlPsHaEBxckZswzXesdVsXKXsKGLtTAX77
5K6RNdb0WGvSkxamboW2WN+B4l+a/8t5FZwF76dA5dedNqY15T7s2eCQn/4As9pvg6DZt1/u5gGs
Cp6pgT/GLkfyD3dvpicHju+J48KdiYFVdBMFrg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
sfU=
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
