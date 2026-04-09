// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:10 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_11/c_shift_ram_11_sim_netlist.v
// Design      : c_shift_ram_11
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
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
H9IYvtESf9seint14+/pSlUvjt/7wHb7p2QCEH9aGRRUiYVvrc1h+aZXCsRO/kxrjVTeZIuIhzIq
Iy1/E6iDynvKbpbyuZHdI9RVT8WaFOUwNow3R90hRIUzidIiYjl+J5B9W4wLvK0HgPHJBIAyq/x+
zrqhhnRsx1XGX+6AYZIqFtXaY4GFNWqn/Yfocys/rZCBhG6KSjYWOe+zV3xPIlVk4uSH1IGgeEEE
IBatlrP68vU0Oe82LOyyCcrY4gawn7T23g46eRNkvQUuudrz5jqHTyz7iJfxHALA2ooj54n0HvFQ
y86/R/Z/zD1VJqisfpAXt/Hh/i2IeN5dT2+i/JmV0Ay3UGMGad58FpsvzQZZe6ehPjglbaPZPvK0
nplL1fPV4Sa0TsMFldf21+LdlucyyFm20z+D9f6R8wSYoNuIe9goGTA71W7RoyBhbCN2l3lJM3Ov
qUU9bYSykLtkj2VNB+mhoMk6tdajqFUW2mao7WNTRdnfQDTQ1A6BEQCJT0Q7LL1MYXGbzl5mGdEN
JxzDmnx/+afo2jq/SX6yuXQ9QVwJqw75yYjF1UAaZDlqrhcq9AsDoDGI8H3vA/PUrp9bVPxwUO+U
5fCC8BbogDUYD46WDLlPIcIS8fjP+3Oy+lW6FR4knyPY0NMMXramxtdxVP1YhC//hKdMrqnm1BRS
Q1MTldZd8ERqoY1tVAJ4qpFIdA/DgWv8zBDIfFVYBvdH8fXTiGhzd4zYNj5wHYwB9jw3tMgCaSaz
AUq80Zp6lmBmh3rmLtIZhRqCaqCpxLWg7yY4oJnUSdZYBusidEZwsVVtGAr6GBo6HW99Vm+/dLEV
YV0+tv4eyfOTp+ntQJD9AM5ZveujasHlsfebtV5DLZs0YOj00QICUoGzWlluhOtv/jg5IM3e6tCz
OPRlvR65FuguoAIJqr4+fPCCOLk15DkaoH5klwJRY2MLi58lzMpQHFWRShkeuXblSk6JP8eQaQZH
o+VHe+cMUsSjRiwv470xKReh0G/Ius1pJXDLolecYRT5ibKiMPHhrWeTxKyZ6O/mHcdoO31kay/f
YNZUftx8JGJKBoxL8ksYFqIgEGI1IMPk+GV0w58b2pGW4b6bnL3nejX2viA8xmoC604o1SmcVlBL
cR8XWVztzzr4yaaVk92V/ssnqqKoX9GTzvP59R7GPrxm2vsZoNqc7F7M1Karz7f5+qBMrigR4Emv
3lORb60qN8DaLOA97y/7TpzKdLasYEqFqJEtbZMPFoG4gOUC40Nkf0j0EHMIBxHVrYkRk9o14lJk
vzHXjmgIbsqng0gB690k0NUi/1HmE3XeLG4uNvzMVHMqsTtF75ZaKbFsbZQ8r3IjFPydABFe5rJY
BC7qHDRbvjO9OzYCRJQiu2UfNrSfsh1H5ccV0ecOkzQiH/BI7cduHPUVAQZzvwndetsJhgsvAvDc
BTyw6kSDa/GhOOiuxqwQd38bjAxpyiJeglI3Vu/NmykmXMkakFD11NcB6VngkWmQErcV/dW7+u8U
pxN/ELmz8b/jbNis5JKEzsJaUSbmfjtKwdqvyElT16BgSjkAFtfUxSYQbJicCBKcT8ykkUi0mwG4
KFUsVti0dykfQ4wunYZaptaMXFz1EU1/Di+lg5AWrkeMTEnDUVOrLbLpOe76/IEjf1KuF0C6pjsJ
DBsCt4OLNLWSAWdXMYgru4eHIJu2W5qybs4s+8dOZWzafd+BEiUAx/Cw2ifMv/Sma5SjvKAKcjFc
3Ba4dIp7NtVp8nFK32qTMyWvEFykqDd3hHaHKXJkm/QdBZ4ck/hczT+ei/yaleIIWWRf1zw8AqzX
MN0ykuL7hvXXoXN+CtFyiMacPCyW/BQZbNXadwWczLJf/BiiaF6JdyjEpnKBPGWWw++UxX0ijTmH
MKx0YQ7HxjVzEQS7YkPJ0LAO/YqQJHNRyxD2K1C6r2zc5PXlrgMXPPyklxUNgDhspM0SHncGtB/Y
i6nIiHew2yFdBxxExE3dYjQNJdvsliL4ouESsSUcNWaYzEnXKYwgIDHiYCP4zYKoyIN8TpI53eUC
Vsl/OWXnmZHGYNGPEL2xVDK0w01ZCR900wsR4yddCJz5VKXCqUcsLhYcUHySRpHLCasBwn3oN5UC
vl3MZzc6FOVuLWyxlMflc3jgLLYcejLPmp6/XJhoFesAMFD9YPs0N+ZCx8XASXRvafJ5WIYJ3qfO
qZbmi5p6AowDoRpm+qKa3KPZTVRlL7ZO2CiWoZiRVFUpdl+FIhjjMFLjRSfnMx0kqhbLK5rVr1nz
XfeePZ16DSRj+ji/4dklnoNJUT4toMA7wd9Gipi/zerS/kDIK9aGcBHBqxj/TEyy8tWv3ZCpoIJG
lUhl6PHD05i5eH+n88C9TCBSoiC+aN/N5MP7m7eiQX7nqzK6gUW/VTboHZxI554YcpYTOewU+rgh
NmCGIxYDVYLklC02N8xGJBSqw7feefgfO8M4917vpQxU2YmO9nn0lET8CUds7zX0L5fQ8285KuKP
7056P0Z8h5UyCEAPDAC3aocH9nH4mNgmYaK22HXnnU2sW26Uc298oCif5kZm0wjlRDgiKP9PSosJ
YStQ+WsvTzTLzjBRX7Xo1ucIKAigWoG31JXugFj84Lqjkeqh52ZhpvZsYwOygYGu07HGx3bdWTlu
WP3w3Nq8bCZf8g43q/nc6bOTiqOnXocHqSxw69s+9+A9bdTfj3f4ZR3nL+Xa2FzNNJWSZTkLG4Yw
210rhk3aO+LXmbz5wtTN9KtTAeWBotpmuk0I/Q==
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
Z0usJVWrLgMMTOGgYmGiKzqLHC4fod7Nui1i5maU/P0K2s64cb9dwRcjQD5NS0clTlq5Gz+TklwA
OF4R9Yq/zqjFUTMbTgLRLQBRn+Wf/swikuhX8J3ZJKbtw0JGv6ym74P2D6ClKwI3Db9h9wFztfr3
nTadRS5xgCqcHXOjLYhKOxbTlBSGdrATSTwqtn/QHLjnxsogn/VzqIfW3lvMoAJz8IfGYuYCRwFc
2Qhk1dCMbgpb3oEA6A9hXrgEfBU1n7jxzwV0CQqpdd9f2vYCjwllKJ0y/9yh68EPGrPV9NeuJF2j
SMtvvNZPg0/G9TOThZx111Q2cbnrBmIkHrEu9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oKbmc5PqNzzwoEQaO5Z2zY4ZrgnqpQl3QnebBcd2wZlhkaup0DSpLtqldNhVd3LUeUTjyNQZAwtg
AjA6dojBv/vF+7CF7v1tfpBYb1HDkNkh1HM16qhDQNaI9L7GJoSFzzlO8qG82YlGZiZgWsklVRVS
au9j5b+k1eKFOL4XZdAZqSwadABfFh2H1znYtbemMcSvZa3cZp33cJLSX4EX5izaKvZE4kpqWARZ
e5IA5qSGh1EiMtS/36tMdlBo9bVrJggLxlAKB4cD8hvXy1RtGq+EXbU5Fsbu2o+wbu+HNnAyvrGp
xeDtEkOL82FgQydLTP0SCesLA7Pk/iHRHXe0jA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4704)
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
