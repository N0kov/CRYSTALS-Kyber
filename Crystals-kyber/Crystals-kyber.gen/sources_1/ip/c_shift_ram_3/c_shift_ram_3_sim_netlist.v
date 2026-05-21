// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:48:28 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_3/c_shift_ram_3_sim_netlist.v
// Design      : c_shift_ram_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_3,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_3
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [5:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [5:0]Q;

  wire CLK;
  wire [5:0]D;
  wire [5:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "000000" *) 
  (* c_default_data = "000000" *) 
  (* c_depth = "10" *) 
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
  (* c_sinit_val = "000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "6" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_3_c_shift_ram_v12_0_20 U0
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
K+Fu8wfECKvZbu19u/DcAjB9Y+1thDAV6eq+EOhBwROzeBK2gnwjRdJbmP9l+BEqn9VxJihgyuc4
dWGPa67acEjrPKYVnpHrGVqQbPc99gJYnL4MKANWoP2Dp8FGEKwAa/TWjEgc9Dat22zJWZ6VdvtZ
aqRsS4vq8pi2x0nKpVwodIC7VLLuZgMHH62fp1r5gMfdBq+dM8x5s1CykAaLduYhW0GCbyrutj/b
5zjkwBJ39GFdwGPI4iBS2igdITy/u/m3NUIP95y7CMiW6Uyi+pjRNEZVyIg35CUtPAbyXCAbCTqU
UMSLsqDDMKf1YqVVt16OVDhBehb2v5Kd916D6g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IGLtCsqLUfbKnG5CvnmSvqeP6zVQlBK6SB97mMkv5aWR02r2g1xploDCfjdtC4b1pGKNN1EZyj9D
U2X/SXeYd9jA9RK8gga8E41jQMMskv/MSbuKRUDVqHJjo8LL/oCLXdITZjmvqc7nCjuvPytvLLRJ
z7gnQyWCJQxej3sedLvKj3M/qJDU+KlznQVXufF0FbH9JrgtN/vZT0FhlRNVpBA4CxCq2K5hWiwL
JoCNmVKqJhBWySfxDdUdSIyv/Yt373dzOYkR1PnrYUVDFQLEkTlXdR13QHQ4EMDSHjqmnX7bnftM
VRM56gtmRffiDbemfzgHYiGB5dxL5bhVxBx23g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8880)
`pragma protect data_block
LlxRXwkU5TYXWJgBQFqa0xeqZhQloMrDq2XAd/uS58hKxuXUVA4fiK9OWrE8SrPwGmPPD+eBuOLA
yKckf8wZMydawyTh20RbFvmaO7QqMajtA54VyYNUgV1sLelADxidhncJRPb3uGKgAqJD62vgxl2m
MesEOP07143kDA9De4tl4mxqb10i1F2t0jD2sWsd2ifLqNtzxo71NzGJ66DzfP28xpNQSZxhKqPO
wD9thJVOu5iG/XaHz2U5kFDjH5FzS6MPFTtnq6BaBFRxHYMfuOBGhhonpSjlk55dmep0dpdK6GHs
FLupi3QD7X2vdUKxJWBvlUDE9I8XyQvRWdZGV/TBbDu67ryAts6LL57hPSoB+I/c4TDmDWfaPcly
TPOrrMsNJzhLxMnDQbCsMC9nlLuwW5cdmKF8GycBQ4C+TIS7G4ywB33gBcuL3Kcx1PmL4IE5yIBE
3D86VKypSeh4O6jqcxD7XEkAiWPWM3Z2mEhuMOxEaZ5xvAEV5EeMGPjJrNMyw20OFhFCq5KEzEcH
JN324T5RCMSI7Rn38zJ/ShP2fDJMiwD9lWkjyx5C7nxAdDuS3QPE/LrQfEpTRj1QGeJgZmWfnoN1
25GNC4+Bm7rgJ/M83K7B9ym0TRUUs+CvRcE36g7koFlzgsekQulPS2vEXYp1WuybT3gnmO6wBcvC
WihFhsrDZv2n5WHizcd0cVufgoQyw24xrozHuCSUyP7j1qdoOyZMY4LTjuMwkgvLKaUA1AIZJM4g
QY0MakyYy51aBi0SSnXEdBG/M4QzQHwGLn9+iH2YqccPghHKcIARCSw1JH5FAp0YWoNAf/YdE9G8
nUVylhgxmKugkJFk4QnNF5suMxvwjk48O1VXHNEbAFoYPoOIp9WSbgkVAZzIyEDxj5sF3fBGx/Wt
Ctxr9qioZLU3rhQU78zT31xARs5ZrvVfQZD5geAUyCGcAsSg3L5Pl7eqV1I186gfj3YJkL7Sj67N
19whacV/Mx76xrEs0OIiYYYpZbKk/ANVT9UYAcqDQwv4B2PUCoHB1iYNeB76acXQW1ZOAGaS+5+l
XES8ydnboCzg1jQM8IWrrf8TFcyRk4Rh/HQQR5KDh7IteSD7m+xlT2VkWDfpD9s3ZAyOzBiI/Gvx
+YBRpPHkUjXzQIwNkoIjcET+q/MRUz3kU0a391xOelyki8BJ/B6zXpjGctPVFU1it4qGK05i1jWZ
UefHFltqkyIs3BhD8SnS0ivbMVn4EqtoLDmivhozzwKJi4bTzBkEvURvpr2fvVBH1oM5YNuPRbWS
Sd/njTirs+UbZfnSAXJia+K9fdEj+u76wC4YcEjuW1ZigRlNThqacQrmEaI9tmDiP5W5lVx9+Hul
5wijWrsqAYA3aCGM20R3YpE6FXwcTEVxWsK6ynnUsN3CHgzUNGGripCV+4jfLQUGOuCWZOeRsums
CNYpMM82P2JhxKvl5UnnVm1iH5vm2mJH9GQVVHenZD5nPXEYJSQHWBMkQHtfWK94dgfn7i9k6Ilb
Ot/kD3CcITxoRS6GpGjAWDnOWxTGPrihqLKBll4QOo2+kiG5Ch/QKqvVruHbXhPX1Ni1riDIClw0
KCbpacXZEdKVR/1IgHQqFs5FjhtGk2dN6Rxjr+Wv3SmFXf+cM9HYqrDocPTiW6lcxhSZ9xGne9Bo
2R1mHUZxxdEFmLDo6fDhkzggWlo5smTaYbekBx3oGHoEYBz34sl/CCqqWR1iesjFRtemOaHN4tTW
LmJYhD0hRP9Lo7uSFhLhSi3/Fdd2CkO/Nwu2DX8ihBsia8YhsVVTdshv42wk+WUdHEtthqrdxObJ
DVpJAF5ChHp+Hj0Latjqnu0WW9oOoLF3O4M7P5KS0AO7hGjthPwHZdaQlLYgiYISrrNa+0707GuW
FG3r0yyCqP/jkPzUJM7Pbw3ISOQ2oaZ7KzXcVe+IdsvfhjmsoNF3qg7E/QOxFL3X5CElf86bvXc4
3vGbP9S7OgcHWUV6vNeHHjm7AFXHsk264r6yvL/vCRwwzTdBmAI/zNhtF2oH+E7Pp8wDsXoXNY+a
zS71o6Fx2Hd18IXYRFSrRR3JA1V/8Bv9WMRuymWu/KodQ4AbSN3Dr7z5vo/IVNbkJ4oqpBXlvDiI
QDIpq8AqHEhB65Ri0/S/YGb4Ro3knvANp1BSKPCz6nAyNswYuEh6Y0INzPV1hq6GpdsI5fxOHO5g
IwXCPT4wSo1TKrNMIkajq5YYdOaydGNIGvRlPmhDDh7lw27px3fVAc8Rg2f2I3b2Ntj2cjXCnPnt
K3uCWD/qPGIwfnT6yFD3Wjs88D4koB9UsqCjQW245ekKQ5XdMEFCQkjg33gzCHap80J9WN/W39rp
A+twe6X/BjKr5YcBzH59TM7f6XuYvsMEW/LJUFpFeBZw+jiNCQf9fTkKcgnRKNzuOBO5FZr7Aftl
NWeRg3hM58uN9YW351KqZ44Vwu+zYio7C9se83kh1B82z03q7yqWftAO1A5e3NmCv3pEPuFJZkZX
ShhKJ/peUoSmIt2ZFOXlBm5y+fPztiX4HiZG0v08+hz5AWL9ys+20HHrIRwyJgy3z/nc6+DZpNO6
N8iHAK6Kwxrva+ZPEltzwKCfHKqg5pN7O1h/TyKoGtesvvHk4r9C2yea/CXJRK3IkkEGQ04e2Bp0
uY8bJvMDq+39n2/TnCGsix7BFiXibyiQRjARswjO+B9n1THxDW7qBLtwtf8Y0wbYpMPCttZTL1k7
BYRbj3okCwZvfXCxl/2/Uf5zP8nUrh3fqfn5H5sWzbZAbYY+LKQY8+vZ4iUotFqQLExQoKo04hP8
qtWWd3KdfFcf/cVphWSp8sBMw/kovEPgJQhmcjpkRcXrMK118U6y4STxPr6f0V6eNEEyAzMKAg43
DSHfUaw1NL/eiw4XzbyapUtiN2+ZXnEuY4skgyEvVn+pN3tqjn4zPKqaQn0lLWOYtZb7ne9NTB0Z
qFDVyzVnYZOuUmmAO5v5/2Hpw7ATFZDFoyiWzGCgQzi67uPcDfZjUomyIugRDwojtoDtdR6srk+z
3cxi6Ok9RgmKCOMvviNsCnoblEXAi+Ujx91jAKyLU7bbSY1YyphPDFPudic6IXRR2IH9+wzaEQBw
cP6Y9Ax2KJZPPxP6kvcklsiaLp6NzNgCOHxehtgWWF9whpXrhdOvqGUOb9BNw2QZ7pRT2WK1njBY
t8ABw/HzvBDaRTDhnIV9miYphaSLo5K3CmnRfxohuEVPCfYkDKAiJs4qpDMqEZw6rDac37wNp9rL
7rqxuksmf6YiGI3VDv+ljtG6PlAegpSL3x4WLNvPv32AkJH8yq8T18mSH5Hrhl9/aFirA+uJAkJh
G77gbmcjdLsjHZjKodp1jqzkbvBGV/aIpTU/G20sebDPfYzArc81txBfdlrwkE8D4a1yr7iMbUh2
b2JFwqmUJfaKRywrK/CsoWFv/KGqHSEW7FXciSMpwRIJ6q3SrFzV+Rvhxi409V0aXdJ7VyRTboaP
iKOIo+0zEWQVO0w5z9b8xDbuf2p1ZEVts4Thmg+FwP1TBHRoA1cJOlgOq7fKXnkSx1+id3nhUgnE
VISmi0WfELXI8Hrh43h919T/gTUdijAg/fit/iBEl38/pMbtCwkMU8tVFrV0ocAWPeiHDHNksxpq
s3MMdYNVf5A7N93BCS4Rg8SPP2/AQbz79QHWbr6mjJcPhhxzhkpAz9aAB4EwzWFoafLRmF8U+MR8
dO0SLqOSq4Q8fsrk4Fvad4k6HkhSLT2/WTZvrzDMqkXkWwl3FzScmZJEaknFZFXWXf7Mi812JVNq
Apo0h8H0byak6EiBWuvKroUT9r3vYc68ITvbAJq3Ji5AALQzp8Lm6S9aW2rR8Qc48fNRFJwjE7y5
CXDD9tNDbKcv7PcYVzP4TWcgHAOtgyikb4Wocummc6XUH54JJo1N0vaXZujTzRdr1XAmWVWm7emZ
i08K5p3avfQuYg2Fstg8PDxUhjQ5HW4JhEerUcTtKW+D7vnwkdYL5SFyZ2TyYhV7QFJBfz83cecU
DFDK6j1EAKitaUtpzELA04O+hAMVGos/9V85zGOBiZcOWyD/Z79y45nv0HG++TVBRHXWpfBzSRCI
grixXCuPee9qyPKmSFgXqe2pdOs1NvpDgMj9GFtGVLoCYcdej8+kQiY9+l/vcXa/TH+apGl7p0tq
q2qVgCc3Pvx2RN1q/aWnU0KYXGaynIAaCPfyKES88v9WdDgnf/ESj4g2m918G2N+Ria4DLodyXRq
fo4CreKpGn0ZkTZ4z26nL8+8VqbkTRw8L4zdSuDiN9O2iivrvf1n/t+cBAPZCAo9B7uMQ7IyqAHK
nwgs9jv52WSd4uMvEJvEnOkaQ+3vM0o3qvtuZ9Vg6tsXuwfvFlT2wcLPtsVRYV/PB2xy8OsfR4B9
M6cKV8wojJHOr2n9PxlKq1p+vpJxVxe8mH29dxWJuUBNDgxcHyjQNX0YCI4aDyJot1Gl3mmog4gX
gN9MCQB3R03jQpAIvIihLFlnqXPCWeFaiWBNkOBA9D8C43fUpop8Pdi5nsRAXUh8UofWwVmoBueb
tdxarqq5/5ruIJTiB3bGPDHobo/kK3lT7AP8NrTft2318V00CN39Dj9JUx4B2zfleo0hmqZCczsp
XvpPO9pot2qguv0MJrw5GP03eSH5tr4wDYjCs3Rhmxovs9mIi0HZ3bpzKSdmWt1jgmwxTvJFK6rf
WLLACtBZFUm0uIZvSBDatwAGKxQevzarTVxDNuGWhMTyaOUSqNxODaQfKeaoBgL+riKADF3+61AI
Jbo0QMCLkZqQJ4zgilMO9I1FknxFJF2Gk2g+irMm/FKPK/TZcoN+2IqIwAtJziCKSEn5kg6MImE9
GsBb1wYKnn6SvWsq0xUaXZRaQLFQoAkVAFG9YzIKrHf+OFTef9mjGooQQYrsgHtiyH9/WrdSl2fv
igH6viZdHz40dHbH6JAGjyFeAR47eKvMgmzdLaWftWs9EkdyUzjwQwu4giwo/bFLfUW4dfiW5V7p
UlNvqb9grgMTgng8fV22bXdlQOGJzMBrRrQl/ClXXyEjxGAzpmvGImQBPiU5ctB+fpv8rDNqBZ0n
A+9hJ9KBG/0hKFac7+6YaUGtLpE8qe5DQ8RFpY2/uhmZvCOdmEKldoFhaUJ25DeZTYzFh822YxOJ
0mAxWmiIDRwwhJtSQ/k5Gcq+/rh96RSbu4OYgUrX555gRrJr5ZNB1HSG3PMAeBbT55ElUKzOTLEK
UCCKnggR2H3YbmSCj4YjJEe6javrCG0dD0moffPU8/EJIZfN1v2dz9ZWy72Yydo87xYw5Ne2nGus
1jhbgLSuJtOJ9s0uqn/pgacGXXgy/jez20FWVZsSALiobofOOgQpskJW230wGdm9JeF4jggKlQvT
P2sGgV8Llet153dzV5cf97lRZ2TsNNkuZSwwR3mmzBI3guUCGtfZ0faKtM6XRPOx8CHiaKqpvlhG
XJjh8/WPFhv5XKZoS93wMzLLv2kVp9eyHOHxTraC7D0+Mv3gq0qRH6Z4nQTaKn0naenaklomeazD
k0NobSFLt3UJbhnDAYbR1th6c6SK5yUWo9oKR4kcJhQt9Q3cXd3+PjM+fwBBdwzAg7VvY/ax78Nc
kiGP2YYKH0gQb+W1U6aNTt0Ye7LQbrzF9dCj8dmY3/hoTTL5AeIa6awxw7wP+t7wpcN6XNin2/bS
B0HVKF6MhUaS51if5YmKfJiKX4EnYNpP+h18QnmwV6+IRusYCMQzKI4C9kZRDcJNRd+f1vrPvIvo
g0/h6zJcUUY1QcYj9X2BcK2sDC19dcdB4exanJQp/3bShr44t0kjnKTm6ms1n3mSgwfT65a/qyP7
3GU8mcHpDtQ1z++4G7xYTSsHpKUmyCBhOpLP3rp7XnAfFdLEa2IPeiBHAu1TOg0Z477W23vF0Z+s
EdKQzFkV7YBni2by1aF+6lXSo0QObO5qmxTeA4QQX9VUeE1bI7/0mrXvZLN3x/wVPIYXQdDK4X7s
laIf8ysx79cbcRHmTwwz9heP1oSV2ReKgUfNfn6z3GL+jGupwDr9JEjgBTbxrQw/FEeKawP1orb7
9oFEzYndAaA9+56AwjexiHSoHjqsm6B4MPGkuE48WSHlrGz6DljKYXyBdghROy3vwHMRENPcBJXc
g0U854S1oYt2IxWcvmJS44UFw+9uJNp14W0il9zpWTSzSG+h7MIvUKcYO2+uhfdzIF+YXcgtOHUF
K5AXWn30DCE5BoI3jyH32DS7D5tMKohjZHLUBJwJYm6qcmZBaWzQGiIHF7QBxevY67B68oyh2eh4
nj98b15tmvHWPavdegdUT+bKXiTxyLBkjlEQllWtGTtacy4lT0CrudzrrMmfiScLwAvzFVgLrcZ1
Q0rEYgbBd3RudHjsYbEJi35JK3gLlG/mVyY+UUApNXhg4df8kF9G3vmopZxO5pLNXURLuyA/5Yeh
2mYbx97Es2D6Y2MeQFhpEaqvT08JsYtf9f63zt+BPp2EFFzwLQ1JsxaBV/Ftbad2UAicoB/at4KV
hzUBjkcFOsenszwuYv2NDjAwBvb+T/wpP6IUYvq8QXh5MX5rjt78zdnFyfpB1r+qohGuNnCgRC4x
y7J5Tr3loSdQtqxvb5OP3oWXJndKBZ07yq83OCcS1q58jEHqc+ByXepD/gAs1qfmmueOF/DxcBkh
MLr52SiQ2kHz5n3b9SNGQkmNmcjEWIz+m5XUvpBEjrbj2u2CeVJtA+iUwgBFqAQGmWXP7qQAFUoI
xHaxVG6EXuZtvr1JX7ZIpYLxwVage3lbbW3Lb4xzDN1rsSsiy5jJ6gPagITUm4hjtmdGlH+CTkQH
l2I0xJ0aCBF8xxGvNm22YMRMSfsrenbaGCqPQi8SlDZt33ZEGyEgS0QJUewes28NV1Pj9Te+gPdE
i6863PwNUUh3g6qJEV4osqXwCPG3nJA8d0uRASBcbn0ElfnNPTi6hBAllhNdT977AnJe+f+j2K8R
Vi9QpZPHKEwbp94ZmeWfOoPpf7hE+oj8Rbwv4xAx4cUnFY9Y+QqQV+wFHWd4J+RelaMwx1zZVbs7
2kv9qiYhuxcYJBvxIdCUdpTzA9iMXDMBaEfT6Ya4ofBVRN8lLINBCjDQyoXzMHAhLCG7MDxPYBi2
vjkXEteP0TrNhJQ0SkW1vpyWDW/hbYDydnwxyN64M57cPv9K6DVDzX63HpytL56fq1fnkyCbKTwa
HkLB9sHyhEvPfpYEMUKSLuhBFF4Y3uD6OBvprWfQmyUEBgk6pe+iSdBJA/vSCs4ONHOHTO4LlO9v
ShW2uqKqwY/dBcSC1DfrQhnOZPRy/AJ/Fops1VVY7VXMuKfF377WAzNGjNEJ2zhzAGdeVsVCo3ib
DwxjPuvxN5Ss30MtGd3omSt2gkQzR80WNba4fgqV8PZoNP4sf+Bh9XLDmIaG1RTniuFcWunw5UJX
MK1Fq6+1l7NgSdcAhjHkOF/SJVbqSuNEROREEcMzgt0FbVMH9OdFNrYnHX3sx8pJsKlAYvYdYn4K
Sca6RXJLf/mSyJVP6RGBtRTW3iuSCgEBopuofrSMdwPi9/nilc52hwuIs+S63R8yIFGw6Pqc/QdJ
9rIalkzoQ2mtF60Utbo0NH6f47QbT3XYY/wlMEL1Z9nqFoSmYodwe+ove4QTHGjysYxdyWX5jTF1
HDrLbXrhkdTeYAEKh+xi7lgvFTGrAVOEIXtkdtOVOHNZHQTdCVxYPQ244MDMwUj6KYtZa14Im1ra
3abxTAIyjB/ujGT+b7Pwrd12+Xu15zYTTU5X2oNJimKC+oOcyqPYWweCjqTfyzvbJ9MuTJTJbSsn
n7UUjMQYx3UDixnTxpw12gADn4JsJbwzbPAbldLxw8pOVloZvgL8WxuPDPyew1SB4ogo0UHRIpK3
WnjFmK8Pbn/c1/LHsbCSWN5eSDVtOJ8YFd1ys4rJJUE/aD5GIgwAJNT6IpJTZ9XQzsCZ7jgpJLbz
DEVwQfEYnYoUvGHUb8cyl8YMgGGPkxWgZUaxHiXKc5wn7n95tuQiVOkOiS3yxgv2/Av1ex6wtbOj
unNwhQHMGoy2s/B/NlBndHSqDcbxPDMyYnm1gKg661CZIawHVXIsnSudi11TY7Zj14D+oaG9craI
uk5xNVGCE6SjLyDcEj63NhbDsiIsmE3HS8JVHXZB/qKIvvARF8nva03JkiskSmJIKEWVJUnVFYUp
fLQVdtsH6kYQeycUGI/ZKmRdMuejBfx3W9KF8bxnlXsd6FxABDTTb3M5iczeYbnw4HYCNBtPR8pF
7k7T4AfiyldcxHTr9aA1hvHq2MLjSt3BHuTNlMIMg5vXRHuHL5lHrJPc122Hb7k0WJV8R+EhsJl4
ieU70sAgnVG4JgDknKnrxO2RvPbPUU68cjH/iyvRIBTNSPazONUTXjx+8G50uGx71t9PoUn8+prJ
Ys5rfW5KXmcKnyrOXh3aiGP2dICGMiKT3k14Se6q37A55E6QdGIr39TZ+ZtFJKFKO3pICwghrL9u
PR+wA0eGskF77/zqkgFrFX8g0lY6WxaEsrxyyVdnQLrbhx9UlLRS0/OMhe60qAoMLcKvKDCqzASL
N94DM4rDTFI/HHAWy95Z8gIXwLfAZjuKr8HbGBUhUwNlErg+6xZZP9M1MK9h5U80Z9pbQEThe+px
8sbnnwJbWZ/9ppnIAAoXrY36cpoHV+V9u5+g/sRC6+HsgtkzsMsTCILTs0P/DuOAit2c+2gzY0A/
XcINmmysVmWLWGbCl9LrsM3oR/1SdCYxH7ADrQADg2yfTIpjg6furqtDuTNcVA0A3dL/EMA4dR8K
5tgVvlbiqbF9w45lbh5X6FUloi6Ce4VmY/0ohOqKhvrr9iT90d3aidRfjc6NTHTZWNgD3eY+gQgo
Z+Gd1VyIlZgQvoPdFfIN5MlvcDjRQqkrxqTI2giEplwRZh1l75Y45sgzpXdBmTzj+x0wQ70dQMoJ
Fn7jMyCoWBsfZcZQdp7shO4VPdq9KmglXXe5I/SOdXtZ+iFm0I5yXVGZ0oQd0G7Ec/j0Zy4EJLTq
1n5r6ePDha+W2pqwsoi3Wmsnpl5Mxbk7Jx4ZPjDUnIJMiDYMEIG/3BqKr+B+C7+gaLUIEqWwX63T
kQdx50kwqCKFslJ2OK2nbBNF+yrINwfxlOBCmGMAs/S3F9Nl1FjRM3Ivhy/Rt2Cy47g+hrIqbuWd
4xfLsAtA7nyk26CTxqcyGlJW1lJTkB6BMHmW/H0E3xpDgaA+q7NNXW84yHsZ5HJiYzt39HklKbvD
A0QH0lu1RGdC9mOvtnYvw5yrmxODfHyTnCmdWtoWdBvdRv4LhFj4HgH+p5YPszmqlsEvYmZ8l3b1
RtEGDyv7Uhse90+649ecTeCR4HAmNK2WiCcMjcbfIM8kBLisX4s1mNQYKyZy3aqv16k18R2GGa2i
Fjb8DMyfCJSwwEQvCi04kxM8g0lWq9tpj/z6lrjMugB+92plOH7LKTd829GNJpuG1++LIS6Tk23N
IAmoleDsggNbT75pxQp7y8B3ouLzDixait1inAj70ZuwISwBPgqaZEgBp0OfwH6N/959iSz7FsHh
xe7QCt6DDxNU4WGGMV5BWyBLryJFuonGKjbKKKACzsdnZhjS9b4w+FCeioXRW6NjJmTbuxqLPzGI
kkLfsiCFozKp4zyqBLrKkVWphMzUunGHTKztbAO/xmi49EwgJirYyOWlVRbvRW/mHm8pSyzwbT4P
jrO0qFcx+YA6sHUpV9irfyuu4Q7OnMzJExM0o0SkN/v8eLL9c3pywAt1nUdLh/Ipvjh93wSDxLrN
/dW+5XBWkXnegD7b9O2TTQRcL70GIo4sJqgsNc1oOAuF4pYJn2+LAKYHSojQiRGYQDl0RxpUW3CN
9Sp9LtCKIWZEIFwC75C8BLDWg0Bodkdv+jUJn7OztEkky8ZGRQ9XR3ZzFfsnmmAPMzCQEkr3vC4v
AIrHDS4XET5Azemof30HSaUXYn1BIUkfNikzBAQMk2GvZzzf2At4DIrJDoJr9BYr8FgbjBha7vD3
iSmGnkP/OV6MEJ/AlJCU6a2TXU1gSnzM+WzndX02XvnbVrscdR9/QJSaeItzJMn2aX78oBblXqSL
Wdc1wlzKoe96kxUidiNsceuzYb77wLXG1j2LXfBGKY6ZcLZIy7KvoYio5FNVkNRi0PVadi+HCZHF
W7otS1NsvSFXx1a8srtNpU050vTnnEGW2pLn6mtdCBMDCRW6O/wXtnS+u36G7pHRMeXQFXpj9en7
g3vO2yQ4TF1XfHqJIJ6AFUxE9+pmn8LYpf+wfF+CG3W01vjdcWhkrjk+jdcPOX73MATwtufejoGw
FNTZ1K/gj2XkDsYKmVAW9ZWPsfXkLaWkhKRvm+wuzuD+wMNyo59ASsZQPlVbvRzbwCJwZFOrUtL3
Am83xeXRg1Z0Uu32vD6Ca873qlqMJU01OQaWrvKQtkuAYSY3ibP4Md0Bu4eijbpOXQJvd2UQHWdH
F1OOKpma/pxq1KayeGEGm8UOZO8DQqRTd8CV82EGugGxKW+f6AcP2o9NYfx9Hp4lEhgk2sRm1Qmu
qUKF/Jy2PZQsSMJebHL51yfXRwCAk77eNijiHurzZiZ74qINebB3ZKX1cmVkvoHDACy7ywPctaIQ
IkrhWuKLQZgqs+QlrF6EcLTI9IrFyj5gkVpjHHVIQGcONNR7ZPsyemE77YDglH1kChMBrlddaBTR
KDAc/6bd69sDmPdZzZvZ6/+ZzPB3dtAvaxGgz3jBYduSg8Xj3Peg7r79Vo3ZNOhD0THjwUmSUpJ0
e5qGCxXddz1L0/uRI8n/xABUIqr7HJED5nvk5r++g6rv+tw9tr4lbNNSfINosjDS8ogRvUG6HJDc
9AGtcqmFCgyuG1Q4iGdJJs/463qgt2oTN1xzkcBWWK9Khi65TWZwOsp+ybsUZcv0u3Uadln5NjjS
v6BlRgvYv8MRI9Hw38tRXhRj018F+/3zofpjFSHJF8o/eyz3ftJF0keS3ubn8eU8vrCjhZX52F8e
Iir8bEajJfshWc3OFl4FznK6/xak2ogzL1FOhA10QQfbhmk0ZYDzzoBoVOwFl0jy5Za/xaJpE1Ch
jN2LE2CIJ9mMNUMWC4hm1FL33JZ3mI8FYrXzn9hAI6pwGHRjumEMwMx4xDITvSuzwCyQC2iiDFLc
MtkyKTWP6MOB3opSfv6W6DdbwJsL95kEVHok4CEQX3nmksCjPjXWnOrdNVY476PLaSVoTa/feD+v
1paWoRrkwViQQ3MZmPYCq/h3rZQo+w44xqisu/i5KFL5Dlv2WmOshZEhMDWYmXgEuz3FNxzU/LY/
F77LHyf6C5bs0UHIZ5u3kEYRGrZce8BG58hwPyGdGhGQ1gLvSqtMisUeh8kWElRCsqXp8BLm1sax
pdphxH1CPwU9EHuQk0T2OVWjvVmrE3eP5U5nWTekoHkkk01Eki4nTYGp+oFerzm5HK1bZ9YaPpLm
KL9ZtYP4MWwS0Eqad2S++9AcTlG1Qi8QNyJ2EDXazCOElDGFxNcbFz7NbJLm+HR7aRMRRendGIP+
95x9o6Pd482kJxn3ynjeJleAMJf0hvdOEin+f+WJG46zsSkenCSlL9E4V1FDVpm9kNE3y8TdKLSZ
DbSJVl5PwG3X3cskKaj10kXq/70CHg/2ureLVqgHLgYpMKhOQDt9amrupXu4tym+PXTLksusG/Bf
RBXnNqZDaOZSpjQqZUdyhrwvNhptG57ADc6LqdoNcjoI9Hep20ZL9yO/n8XbFW/obRD9ZCDEo/WR
Hh3h6zEzaJ4cdJMFbJV7s9UkcNCEVqymggy43P1ZOrkZuxBfqqd8Z6Qesld7
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
