-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Fri May 29 14:03:47 2026
-- Host        : xanadu running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.srcs/sources_1/ip/c_shift_ram_10/c_shift_ram_10_stub.vhdl
-- Design      : c_shift_ram_10
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity c_shift_ram_10 is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of c_shift_ram_10 : entity is "c_shift_ram_10,c_shift_ram_v12_0_20,{}";
  attribute RDI_HAS_ANNOTATION : string;
  attribute RDI_HAS_ANNOTATION of c_shift_ram_10 : entity is "1";
  attribute core_generation_info : string;
  attribute core_generation_info of c_shift_ram_10 : entity is "c_shift_ram_10,c_shift_ram_v12_0_20,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_shift_ram,x_ipVersion=12.0,x_ipCoreRevision=20,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=artix7,C_VERBOSITY=0,C_WIDTH=5,C_DEPTH=6,C_ADDR_WIDTH=4,C_SHIFT_TYPE=0,C_OPT_GOAL=0,C_AINIT_VAL=00000,C_SINIT_VAL=00000,C_DEFAULT_DATA=00000,C_HAS_A=0,C_HAS_CE=0,C_REG_LAST_BIT=1,C_SYNC_PRIORITY=1,C_SYNC_ENABLE=0,C_HAS_SCLR=0,C_HAS_SSET=0,C_HAS_SINIT=0,C_MEM_INIT_FILE=no_coe_file_loaded,C_ELABORATION_DIR=./,C_READ_MIF=0,C_PARSER_TYPE=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of c_shift_ram_10 : entity is "yes";
end c_shift_ram_10;

architecture stub of c_shift_ram_10 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "D[4:0],CLK,Q[4:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of D : signal is "xilinx.com:signal:data:1.0 d_intf DATA";
  attribute x_interface_mode : string;
  attribute x_interface_mode of D : signal is "slave d_intf";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of D : signal is "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_mode of CLK : signal is "slave clk_intf";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_mode of Q : signal is "master q_intf";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_20,Vivado 2025.2";
begin
end;
