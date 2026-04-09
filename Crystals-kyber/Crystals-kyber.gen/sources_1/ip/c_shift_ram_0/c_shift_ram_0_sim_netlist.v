// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:08 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_0/c_shift_ram_0_sim_netlist.v
// Design      : c_shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_0,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
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
kk6LMN3VG93IMo2DmmHbtRTb01bDGt9PDBopoMdWZTJAV8JgJnc9fUW/enQ3lCYkpuXtANnsS0Nr
x/9PATMr10PXoy4aQYNoc+LFMaqrHDtKbPtCvQav2u0zPvQpogigPH/YRt0mo3DWiXwgW2ObSkXf
hvOJkAhT2MH09H/E5dI11P3fExv0NTnJ+c15sTMNXtfLVK03NsUKr1LVkYAqzcSDcMswDXoeCLnl
bMp5MU5ri/OAcrErTgdbGd6r0xE3qob7ZOwAbZMO7WrNG64aeMk/3uWkuWMA7ERWP3B1LwefcdOp
LHghRXEym+3ZjEVBthdwYESi0+IUoJo4S2j7mQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nW/0pM/GVGh4Eq7Mz8EBvTWPnj6eoRWnqe8rOdA9Wazn6leqp/80o8j/+IRnGX70RRtlolVPwUqg
RiHt5o4A2+x/GlYU17CE1dMeceD3E9bNig4AYKtqWY8OP/q7neHjuc9CYrFCD1khOutm0WETuCxR
uq/GJs6OSIiJkQ0Q7Mazsy37ZOFh90BZXolzikMk4HpqlHkTa289uLkI/R2lGnEh9ZD1v2+pNQYo
Jtqbw+DJeSGZJfaAguuqeyu4hxTwaxqH/aiN+sfz4ukGWNN9bAkK/dQ52AwCYpWcUq/W4xfy/Xd+
9UluJcruzLXiUGoF0bESFM1MMTlDAtejPfb5qg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13920)
`pragma protect data_block
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
w4WnK8tVkoLj/dyf
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
