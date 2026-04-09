// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:49 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_4/c_shift_ram_4_sim_netlist.v
// Design      : c_shift_ram_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
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
F/UX
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
KyaB9j2GsoUGQfZL02Ta3tqwqaTwHjYX30kZzJfstF1QiDx7S0/d8hJ6UmVU4wN3+wlxWCcuTwFj
4nfec6V41pIdj5JNBxYzOl+Yn8UJIiedbpcCRSY4zSKcGSVXkJvrxAkOFs2nYaFvh0Zd+8vLFkJr
6Oyw2sks+kIH6lZVKloj3vLJ9HdOzikJQ0AtDyV+QKM+es4QPoCHnvLgKA7dc+jkzvTWD2iUVjXB
8KtA/VlA3/vJcMReHqzaLpilgEYbaFnUHy/dWVvWXblick4SNVLYFX8N1+FmwL0wmefV389FUJS4
2E7bv+yG4jmMI0mQ5pVeug0I1vczFd9MBkTOvw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FSRMBG/JMuQR+jeH+PeFTQuExX1n/KaXLJCoDzoE7Qd1pB6gdXNkgw+0lQAj1fAyowUUShNCnEpE
2p5TKD5k7n4mN2VkywzEJD3O54qD9HtNsLEwAZvbOYoXWSfHlKUb4KPWppjyFClOJ8aw+PNFkw8y
W9Z7ZtnlSVOdOBtpO1FueiOLvnintFs0GhSEPF19RxshVdRiUDTyBsZUsP4EqWkyDJJzbeRDto5X
ioWJLZ4eLnE9pXe7M0Wpzlq4hmvrANnFbDr++8VUUOCfJwdtRHyThy6Qs2Vg/nszlP3w2rFrinsw
7nvVoAfgfgXP45RDrWbavaNFcLjEYs7O7IDxnA==

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
