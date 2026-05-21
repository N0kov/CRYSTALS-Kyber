// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:47:31 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top c_shift_ram_0 -prefix
//               c_shift_ram_0_ c_shift_ram_9_sim_netlist.v
// Design      : c_shift_ram_9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_9,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [11:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [11:0]Q;

  wire CLK;
  wire [11:0]D;
  wire [11:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "000000000000" *) 
  (* c_default_data = "000000000000" *) 
  (* c_depth = "5" *) 
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
  (* c_sinit_val = "000000000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "12" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_0_c_shift_ram_v12_0_20 U0
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
HOdzTefuz3OY9xhcM3vC5RXxBJwbDghmjQWmu9tWDgf38trf64ZX3lqr+UjpTtepdY55yGATf3s/
0QaIfWtmp7P0X1o/VjhKSas4k6IycHSWJF4u+aZLIU/67BkhJ8C6sYpjuPF4GvtDSz6sTviTtaHq
gpTMQyHylAGH8wEsIKLouCGztkSJqDJgZqzMNg85e1JRSq5VZoM0FLmX+9bGOTcRdsCD+T+ftQJf
K6my0Q8cm1XPHBEAajCGVcuZ7CRyTO6y+zMIFIOaFiaO+BU0Fgbn7HbM6JtoU4Rvpjdy1UrigsDH
7xaY2m2k+qBqkQR+JZEenEU6TTe8XVCNfGgelA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HPVpaTqr77LP4L3L/y0gLXEsdfEwR2lus8jAqEoRzx05IXkTGP935UhMYODj4VNWrY+nfmaj/yst
kM79XcdCcsAH2QnbLr+RZYNZc55zheqrwqDLvEyWVnPYXAGsu1r7dVtYXLegvPjI6vWeawtBrhyk
nl5K8493FQuxveHDMogItdSurKtyiGhxL5YX3pv2I7LL0mEAIcFyyTr0N7IfBzIH2m2R72FXV/+L
16ZM/i18ejRX3zXFuf/1noNTd6o4dWMC9YCSrSqEOShG4YSMpiOSr0zJOdqb7SysuIaJaUnTis2o
WRNqip410yiCWFmQb/mBL/KpvTT4BWyXKL2LFg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13808)
`pragma protect data_block
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
IdwDXrBLINxkhXjZcqM=
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
