// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:48:30 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_4/c_shift_ram_4_sim_netlist.v
// Design      : c_shift_ram_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_4,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_4
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [7:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_default_data = "00000000" *) 
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
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_4_c_shift_ram_v12_0_20 U0
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
Pc8n
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
P9FT5pWnENUgU+qYWYGL2jmPr8XPDYQLjN16oNlN9iRR6clEXEu+9mNhOwxglN7x4YEKSOHl/A0A
mkOwr+zEMYyHWxth8xLFCkFZF26cDgVl6eyDMkAhCW23ZHIDSSvk33F3bNVSXx8iKC/N61stfA/U
cc+YLK/6evcAN+h9aiz4hoxTNDSie/c9C6afB82WMnsKIE6ewNCg84EKrmATIgcBqvfPezsyz/40
BZJqMk8fK7SHw2Gis39PlJTbwKElo/oqNnyf1D23fCgpwJMlopP5VfkUBXjOaBiDVff7iUEkwFCf
x0TbEu03jRBS6qDNoeqzFkQXcpvDiNFyJDnA7A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uo3r4rDLckPD0aG84CfnDKu1ttb2kYYEHGcntFTKGsJoR5ZLcIHjGT/Dd5XWD0OaDbZx5FGsZaei
67IhVJV19MBf9L7y6VTpAbIve3/fbwujYcViMAKZiChGLKA+ZKEM0J+vw12xInsLlgB5BJRmvkq9
JLJDIhgUAKw/Li+s9tn95gie5yhWArsV2qi4XOkDV21rDkTUi2/6REkymm/r3D0TKmdF6mH4wope
xa8PIrUUh/5a9KKaka2JRvrMenXV3MTScarEIm43T7ltTSmguDPjXJqdjvlO46wyX3UJoXakDOYL
gZ7StZ8tFWG1vrNKINLCGV06E39ZmS9iy+7n7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10640)
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
