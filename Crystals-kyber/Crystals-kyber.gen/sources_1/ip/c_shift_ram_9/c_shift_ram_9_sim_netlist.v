// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:47:33 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_9/c_shift_ram_9_sim_netlist.v
// Design      : c_shift_ram_9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_9,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_9
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
  c_shift_ram_9_c_shift_ram_v12_0_20 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2144)
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
D4FEyBWSTnCCh6oxiIRMF6sZw2W2jy4Q2phptLlWAs6UDg9G52810ko2MbG2uKAE2nNfbZR5tYVc
Fm5BhpRl3QunU0CUe1GKKsQT8GXhQAlC3TvmkEvyO8g14ceMsosbdgEsw5CkjmQ3jlFijumqzmcv
W3JKJFxJENT4JyT0FuStMUviGzYSQAdPn6CseXDKhRiR7HBTQV/KrzNd/mQrncG3c23+T94SXI1O
QRIRzIVYS0sz2eisX9+TQuQ3aNlJiHdnn+PFqZVo5Q58iFPzLLM6JDTmtvNqVKNuvajJ8N8uSUOE
CGQL3nr4TSj+lsvvrhRgNx0lHMKmOJ/ivy9gqw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LVx058BZ3uyfHYkYnekAAZN6CKW9hNVifPS7Rl3J/x0mJMwSDhFioLImrkvBxrjcDSg7UtVXKHxM
4jQb5OTMhcZUHzOmdI9TEl1qTtI93TDxGbdvgsEcmF6mVHW9wUURi4nGH+zwve306B8G+1dx64Yb
KiJCek6YIrn4865rSY/sYKkcV0eSOrrIryXMHN1Lha7jq+afxqpN7be0FShRtnKpxtPSlrCkPm6P
cLJrbkgpW9KyvheVBl/fm88of9s0aX5HQdDttM5L+cW6c0e8sujju9Mg79ZfXsZryUqsP5tVjSWZ
4CS3LRkbx/awLTZylnwmhcBzs/oOOLeboPEFyQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13920)
`pragma protect data_block
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
5hWGdkyP/r7FlhQe
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
