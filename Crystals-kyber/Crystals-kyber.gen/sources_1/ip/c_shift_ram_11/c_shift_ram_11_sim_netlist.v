// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:48:30 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_11/c_shift_ram_11_sim_netlist.v
// Design      : c_shift_ram_11
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_11,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_11
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
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
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_11_c_shift_ram_v12_0_20 U0
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
G3segHh5vHgHqw/x1SnxRZ9pb34rWoJt0Iu/ow==
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
DzMInGcikzFmCe386Ts9hexwUi1zsD7nqczO0CuHvy9YiS4N67d7o/kHp4RlFul4haIKlQagfPY1
tmi55SP/pHtCQnclx1p1mVL9NvHBcLVArN21Vr7K7loKXGls3ITxRRumK/ARbTgI1I/UgdML43SF
qIqMFT93i5seRAHt3QwhcUS1FvSAkhM+BWX1Y2cOeHrjkCOaRX7ku89qiaFiO/LqyQnPqelZSUbF
Ihod0rzsK7ZPwXFtg1ORoxzh6WIcoaAi6vlFWBeuwniVMlS8K8I73vc7I4N9a1+/dvr8OwbhGoFk
3wIEDHBjQFeyosCmK2e800Gx/2wwt/TBVUZZgQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FYe9+OLKaiJwBRz+4pG9CZo6EnOrnfqVHmG9ZmOkICLVGuJJBDJxqvoevWYyn9/NkaLlSyV+Q47+
0ovhteXC6gN+HCtCZa7cbbisyhjUm2d15Ejs/nabif9Q8j7jdGTmJycpxQTsf1nU5pQ3fqev+PsT
Pli/+7bSU7QYIMhGOlhYSnTIo/fN9sfaSjrEeeQ4mnwJeSjtx7aW2vtSYyQpQ9yopWti92H7+hjX
wWEByMruo6WiNWj8AjKy2fDGUrofkmU3CYoNUs7rV3Ju7u89JpZANk8bNf82JhHBkCVxM6Qabpf2
LzsKmpE3ljujNnLxvWS7Kywp2Pk8yvxj6P8hSQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4704)
`pragma protect data_block
GH+e88sBhizFUH1S6wQRYw6ePF2bTrkEW2zdJ5a+TuYdN1HZ9n8HhUTx/PtVBeDlLONLgrQNKc8G
zM5qvSI/vnD/mFLxIaLBIuS5/XQ94ctju5NYA1gJPVwUgUSB608z4W8gyEret70kFjxvB3uzaqMf
0OKSaEKHF3DTTbhhFO3rbZyQV+vvcaSFA6CXgW4UeUlGIPSZ0dzkTb1vokhaAeCEGIzbXszSl7oM
5EeywM1fvIs1Mnlyyl92Gf9nftUzpCFNdI6pexhQLLcwryV9aF2elOkBnPpl0TEY2PzsT01+/1Bf
I9vp2SgtrOZWXY7gyGYQzLmnhkAhtlATySOfbxHwgWA6X6RL6UBYM2JxI9lnNsx8Qh1cLaej3s8N
IGIzeBpQMFc0rlZBC6x8eMOeemGCAGLjPVROvt1MNyE4C6xT36BIywx/jPzlGZy5Oxu6BmUaesnW
4lqZi6sx2husiEI9Ujktq0FlEe4Jz7klz1VAOpwx1BhiBcMgyjmbaW/OwaoH7gPRPWssDtNJ0wM4
pfGrUSr5+aUx79yiwUC9tg71+2eriuuihMMBoplrPO+gqugm7zjLG6tAXcuZ0Pm8fXbn+tAX0kX/
XRhwLyChRr7roLdizVzn0xPk3LHzY9UMg05fpDtGafsSkDx8MvaR0N6CFXrRc52FAObtyD6nalTe
zRyFwDIboeE413EELLdxdpSWtPFgjct5xQR94yAU/wMu3bAEWHTTbmr+ktfgQyAYa2Vf4Xlpzv6v
cztbivQWcSMiIBTKq1lWJqesQmBR4fqM8pp3NATFeoiBlPNmEkiMtyoZdXBiDiJudlgiubqTG2ty
vm3dfblmV1lu+CI5E8tOhyKJI/dkByNvaqOwxYTZGNiKIXPXCAM210WS/B9uXzQJbof24wfdwlr7
5Cf6vE/66Iu8A6sa+kPhtdYKP+WcX4/Mmi9pHCsDMD5/9EHxDVVpCwY7+1jkiL7vs2XnIeo3a/d5
APPkkVqYpUEjbtKdWz4T06ZVDSIH0960YwT0gCZsFb3S+PLtzlnnrfIUQz34ThE6EIwO9kXd3Tzh
O+iUxusKfCFD4gFIcol1L4DogkQCMbSFYSwbv9zzuoGZShNhAjHDB+Q0rrb7RQ3mwMTmQZp4QO/k
cP7/f9tGBgX+n3VcQExnqNCqAN7+YmCzubjEzouzRAGSjlmFSKDICZp3PJ6XinanLYFt+WAHDWBf
Oi0+jcHvFSkRgMgvgPeJGJTFipVt9mxALJPO1t6gdpvmQL2ca9MzLmcRD0oY6W2dEQGgF590Rxm7
9MALG4iFb6qawnfsUrHwuGz/DUA+d4DazhWsGa7mDyWnh6cvzJE8DcVkgJI145sUFcj2lZtFGmN0
rE56KVg9xldIvID7Ar4sJoh0zSc9xPud5TMaPVlJ4FIECPlB4hiiJs7qCQoc2CuG8uupjETwNgFy
x8fdLjscWLf5ID70gVydDtTiQE5TGzDA7n07AVO+W4ZH/8MEeiSY5D5EfAnXzWaxRVAtVxX92CqI
yOlxEiFedUVmlub5i593lq7Ct2ytwfn7nGVbn9LP8Q71ry6Y0xo5p/WgCNZ6hU/smf7Wa+alcRJC
LQftL2enHeIuQCMxUgffbnGv1cZBQdUHygN1OVjmz/P3P4Y0G4rLL7k9GfMWC9I1nBnP6Tb/cH35
+H77MGi7tbhygMHVfYrcxiKgK5c93ehm57o7A6UKLC4LAlDbG2uOessOrypWeNCpyoMsSJPdZAOH
k6Qs4JQUmuPn+w76CHYYKXP2tcBOXG4NuiBQ7Qc0HsLQ0Fl8jBGv9kxXbHwiQ53MJk31UeaemmTu
6zVcw8f59wbJgeO9ZDVlSM6sgLyMxCKVn/Bcfd1vwzQXGSktN0Csbv/08ChtBktB6unDLjQY6uqI
+HoY1Ow4vnmqrkee5Fd6kUK73tnyYRYjxkNthXp2hByNIVUDMMZNJO9wnjT5F8iWQelD5XW8e5Uo
waLbx1T4249eNYjvsGH5bZLWqerw4BCeEzlJiXtdt1VX/RAsVYpS8lUNVCpAA9/jl+LwsnDHfEsP
i248mvQbVwwCJc1BkLt/m8gT11JFY47v6UgdAoqjJ3hyY2s9sSeL6ApWTrajPBWcJ1kQYoupvlY5
OD92PHaWy6cmyTxKD0/D1wYAvQzg/1BKjY5e0HROMrY97pMBBi20+Uapv8AAHplUymLlefxh3j23
J0rPHHCPOSwW73yO3g2sRVIQt0c7u8IuLx7Bl9/GqzuxMvkeNKPIoCt5xaxUWwQnQ9zsLZVOOZzh
hJULj/N3MpENMlfGOKkSf1sBEFomNtvPG+GrFUq05HCwj2S6E4k5IBei7tG1jJikKp1w/rlv+wyY
kMVCgsUwxclRQeE4JIgzhezgXwQJKfDXudo7c+vhA7ULXwaXFNhmWY8cq7t0u1ZNLe5kSkg0HCjh
ZiKXaC2iAR8y3s4WTNVbl1JwpSIPP6OCAjsMfXy5N3vPOOPk9fMOxg+q/NAyQgkjtZJEDRnmSoXq
IxT8VI6CWKPnpDQnJ1PpTNJMpWsJiVsgv7C31eB5UFcjPnRIkGkgY4pm1x9kxBC3zPJoMsnvrfst
yrtOEQf6+c0PgdvaRq2wYr9RM3Yi97qBVyItg3eTKyWeMEvJf99nF4IgvqBvjYPGgTGjPZBkkEou
Z8xepHCoj8VLe6CFTUlNR6K9hq3/3WJoDxtmRs42s/wh6ZZzqKwpxDBwE9PIKiD/mnxNFUhiW/dM
mV6d6ckHvf+nSnohfZkcBN5AKvsXy9OpsJ7CUkHX3OdZp+ZDRJrUMfDcZJzW/TIfp+/Fuk+/iK6p
IKiRuDhc7jtdU7bsJWOKZ6aPc9AAzKYXWdqzl0d2D5I1h/BT04rQvJU/C7/VPX100hYJc9nB4/RM
1fGmT/60mvLzde1RqnXljENrV+VyZ1+0o2Rj7GJYK9YEbj8fUlBtm1y0S3WvqiWA+U7kMOBtxb19
JtXJRptXG/8k7NyG9SdtvMMdoV6pc76o4fKRpIWHWE/qSZBv//Fogt4BOhwcWDGlG30lHiqfpbnO
of08K6BTYDBacUDGBG3xc0n7nT3ST+nzSJVEujb/lz9XtiOODlIPKGXCHQNcTW6gEKbfa5FTqByX
Ql7t4L24pMTrTZmhFqEbMRru0JT6EMo6eudStM/yiw9C317sLVRSgu64WB0Uxw5/J3jL/WS2ixIv
dOKQ5/+N3WdTomrg+IBSP0/rLKyfGIhvBO0c7i3qvHnyadqQIrcy+kVlUKXBPpmuhW8NR997oW0Q
lqG4GFe9Ucc/oaxujqqUbBj422ftpbtNVuIkcAoNDjvBK13PJ547s9KU+M2ao4KQ1P1fg/iwiB2k
jKbBpTJiI9nFN231oeMVm/vLGn/xrf4HiLHytr15A2uX20yOJtJMyBDRU+GtdXpAmzWMFysWNKJl
Qjva4GJeOhQVE92yy3GTZFgh8WZnufAmirPbZoaAIl+PVeJgM4DII/zuRnCz7cctMWnFBgSnpux7
NtV+RGDFwfkZeuj2uzvXdjLGU83sdeo2D0k8lWz0wLtv8xABe3XRJmvvoLWvRfFpPyQKRmWH4PDc
yOCK7CHU4Vw14kTrW49KxMxUb7PwvpYcA6y1f46A6a0kYqLVLbCOoXHFcdRlslpFrZAprz9hWUhh
DQbtvAFFZRfvbDbYJ9SIEfI39m8qVgWQpswsFb3FXSZgKYqTo0f1UZQYoh1PvwtF6tiEXtvAJzop
m7Ss3DEw3Gj+CAam0pZe9khsPBfFSpD3K/G4yl0TRbksiiQcn4m6Q33dJDYCQiP5ti8Y+g+sKB/8
3hT1LqSNar5nXx5vJlvHBHWgKC4FUdNPAQkDGwVXxpYZ/cFMgM6CELU6FvQx+V7YaQKMKOvLzCH9
3GW0nslEJrmGGkLEuwdBCSV/cAPwUBmbGAI/ExQ0GdWEMtrhWvT8l6Cs/qBaYU2iQHsvWKnFUQh4
zOTtsSVEWrjmssvp2zxB+1qOaNreE6FQn+NGR6JT3Rf0u3edEhnkjsLQuKV7UrxmTjf06DWaA5Yd
HI63zdvh5t50szN3FkLUrl5v8zGzR8gnZwepT0fmt2YhNzCYThYxQ6gmtMrAEdeaursy1Vi7GyAS
KY3VaGY7lujj/zz2RJpqaQe/+k2cyH4O2/wUd6co+IYeQjxPntEiAv2mdJMsLlb+4PVOWRrxrZJd
ArfuI72STcFlIHvbExlRqC7ukCnQkD5l1oIlZ6NafPIoL2C6IXHxUx09nDV3+jHd1Ur3AsleW9CE
1vePXkATXSAI5H2TyEurJin4sO2M1bM4iwJl4ztGqo4ouMKfZ9LE7OunaH8hnFMT0eJWikx15PJs
MOtymtdSGGT80x6bRjLnkG7MiU1T40XB8eLi/R8wgAzR49c+c2HV0EJHUBiEXYi2Nat9i8+HA1UO
GPYHUBA5JVydHsBfCZ9uW/SdJ7c3bx5Q8mTTclgRVrERV9Xywn6kPd8M6IBiqNBVGxbESTVvs7hk
EcTGdStdHCJY6k4CqVP80UhfDMNbCJmV3axCc9nrQoKRcvmbhwnYtIE+626yGXDwDSUlkSdrzekY
epg5zgRbOPHc8+YEjqozWijhzb2L+vec+s4dsdG9bIfMBKgOWgG4d75CJ3f53UBRvQqznVyOjVKK
t1gdpopW+jg7GsQ2qivT7xbRgyqhsrJaYaHcvgb265m3xts11wNwMXSwzq3N96TA/AKGTcafoRHm
5VgM9Mdroc4V+Zs8+oN6IDt0cHKtCMP2EEPSBaZ8OVtfmx3Fu8k/awjTtTkkLquz5esF5mfuogZ9
tIobXz3G34L2jEz0jAcDE95bc7Jv9y6d+uLiW5hJnstvZZ/U0dbEQwBNOF+pAkadm5YrP/odTCcs
8qPEdI3iVsChJUHE/+tnHzpcCsMADpCOgl8DCvZzZoFc+gJqfkxQcCbXmepWMrRBQWHhZMS7oR8z
+bgjC+LLdHfmmH2P1okSi8FFn18cTWuNNhXmNCCpRCi3W/5woUX38JWrnVf6kOaTrCw1MwtWLHDl
1PkMn1c06bWHG46azBB2GgKki7bYN+wvdrdWeA5DTkqyMlhRH8pb8BB9pbnnF5P3Q/eoupVxTd31
4oOoBh+UqA19k4naoE63E5EZ1BAUgt1AT2jvcXFYIl8pGoWW4+ggU7CGANsuD7mog6A0MVAh9OjL
SYDWxpkW4p1bL9ew18K4ncxV750n+XHKv7vIRf9aTtwlGaYygEz3BN5VgTC1SkyHAsNsDbvzqa8v
yiDhOF64fZmrf3RCuMYfTZHgmzufT+YINk0QKywikOgtl7N+MPPDjordsoCRxZvIvN5/e5522D5o
Qv2stqR4agzfoFgzkIVyYbw07S9Wr9ITeCanvPnIdt/x5Oz0eFlbWaOOFJft2vBuLKAYuB8ALPbU
fDUC+rtUMY1J+TwOfYs84dPwIMdZ7t/58jwkumSJg0Ra+8UELutBUw/4Ye4HA4CHcC+baWgPdsss
V7OjbmzMKSkur4xzwt3llkdAx4ig85usvRZoRT7iZsn3HwFUt6BSr33Aoa7yZtD3OPtKa/uHR2lu
+mtCn1kAs+Mj3LmL0NTALtVoC4vDHLdxhgF5OwhPlhNuFGIIIOnJsCsKVlQrx+p4QOvAVKef9j4T
oBlwh2kUI/cX08GlQGt4g47oOlJoM29XM3HOP8GCA6RVjCK8lp/K2nhEL9cVfmt3ry3n7eo8Bfh4
T3RiDGg0tSGrM7LiaLQNiq4VjkofagO0Wgpd4CoBVWqxIWPRoZef8VqmEPJSBLsW2OqfHYFKKxXb
7oLPkK9hyQxtHPrMyzdif+pAu55lSCqltsQr+EQK5jKJ1HBbqDC4iKazkVkLc2JVYAvqBX6xxx7B
qVyl8xLW/5ozWbGNLFPblUhIxUl/pHB7A1Gf5zo86iP16W7ZDiUt7WDdJBOitIm6R3Fuxb4IhmBe
TbUZhNV/3zWOuU0HX2PrbLLRkETsvBOoKJ7HG/HU5HhNDOSTiOJQtgMCLZaCP9eVBjYfZMlYsdsl
GqEu2QyXXng76/AA+NhnB9bjtY7fR/Z0Pzoit0P+Qu93ZresITLQwEvMQokqHqKNqWo07zVflyKP
IMQXtwtjyQOdTJ9J0W9Q5g2db3xW4f1tKYU7y5K+XG3AUIVZBpRcz4qPdEhmI6wPdW6e0cihLK+o
MHrSRjAjqDLKBuelcYxXo6J8dJA+4xZFxD0ghJiFcDgXEDjxvL9T1aZm2J1AHkahXearm0ix8N/M
UqzuGW+pLiQx3g6i+80BziYxqJayXINspWjzqeql
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
