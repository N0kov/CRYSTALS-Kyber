// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:09 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_3/c_shift_ram_3_sim_netlist.v
// Design      : c_shift_ram_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
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
nevUL958kjX6fonRKs9I/GIHGEU9aqtrRQ8r0uJnCIClOx17Y0dsISeT1YXM3N+7UpS4SLQBPywr
A7ohwZDoL54KGnjPakSom7adz6Ki3Wq2WZpZMFcgPW16L35BuczK9355L0uBoPQhPcNtKk33iAML
kZs2xzE9UlYydt4CyIS+T375R8Tq5wSc1y8iMJoJFzfbg6O9nqBA25DTZ+mEAAqAuoSvNS+BcnKu
WisYpod5QqL1QNIwKrmOjX3PJkbMmirhzXnJ+uYnRe3mU1aVYfuKcl2OYuBbYEmowtgKGJ/FCha/
PsCIflRWOomfVWfjDanRgX+CL5s0CIXxTVqrAQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TnaoiutQkDCuKtFJTSgbx6pZzZI3jqDLjlwd+D4Qj4O7f2hqu4saSAh0Snr4LFOLL4wleV3bfpHq
+cghMa5IQlsj3cmKJyO/GhGzvws6aI3kHgSOa36w0FWM1NOBIXJ1uQAsIrztXS1Lc/PCki8/WKRF
ds7tGhtrDhVie23bO2680xCjdMpAlIWADFPwoCD6szAVHaLYx01GJe7V5yIEvmFjhLIZ9piykPBJ
7o8N5VMKz9zG1VDQLYQoeHO+VsP20XyocbEwLaKagmsVwtLffB59bvNgN1jjfHGokua10VhTPuMf
TGhzWstQDa7kjxQ2duAlXChivTxseZOscpxPXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8880)
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
