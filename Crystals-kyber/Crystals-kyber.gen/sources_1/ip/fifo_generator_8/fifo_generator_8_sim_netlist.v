// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:51:46 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/fifo_generator_8/fifo_generator_8_sim_netlist.v
// Design      : fifo_generator_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_8,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module fifo_generator_8
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "30" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "29" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_8_fifo_generator_v13_2_14 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
UU0HctCtrDGjqiFgNj8KUV1CNrtLH1fzvWozH/S7aVj0RSc24esnSs0ybsApJYbLPSCW6MJRxlk8
TZTBIGKXHEs9iSJrHyeb7Q9LsfbX2O77j94jiFzmN8lM/LIVA6RCDBtX2LtKWWw0Ex0IvwdPy+Mg
2z4iCfTMzyceiAZWkhE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GF0Vw/gqBrc9IHG5aASlKQHzVjMUtBIwjnrAUquexOCvx+SSWyZN88WoE2YOio8l2Mng8jmA3ELb
iVwbk5kPsSQid3iLelRIejTGTCNP7ErmhAyw9N/gInxZrkBgF+99fwCp/qSFsRz+GkpjXlmNPLal
1m+CmI2mtQjH/zDmulZq9kFS9URMU7E3TrKSiNtdLMYc1ulwC3kFJ99geu/tuMfIrNOmA9KkJtnb
Zoy9fNs53bR+fUGBL5n7AwoO6cdU62PpktsyWXh1Gp6Ylf2HTT0CPMyzWbJQve0G4+iszllRawxG
r+FcAh4BuFpKqaFogcTloexA8MTZ9ICsGZkzkg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Hzytw/FfXpsPrE5ZowzcEV+nwakl1BirWDR+Iseu9nWPYk6Otw/UyzdfMGdUJQcXxjn8eODJUMPS
SLvHyIbu8M+iaMMz4+lNG/o0csNo8MO67HX9fxa4xkVOaSOTCzBVfRk3cjnK+OAXlJEZO2/F0Im7
evCVwWE8mv0p9yv9NZA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aYTxAf85PVmpAktzX89uf9AJXAUs8FLk2gaAmaPtMQhfYN72ydFe5GcOlR9/W705GnhW+LSDUX2b
XQnSvIzmqRMwIqE2sgix0W4aZDvptNpP2y+gttAzQaOhAd12INExGFaZxKro7f/cey7YiwGKPPah
zcBWMoHI2bIhFDe04i/Jt1MdciCe1haFyhwBCett8eV6Laia/DlHOXxqH2bLukgGZp5p2EYoM0T8
WwuwxJ3X0IIphS/uP6nXSuuuMQcAplYzcG4PLCMpn2Lo3HwmwSo5w+0N1NFI5LYfb6ZrdTXjRH+j
oHZlteBZzQ+4jNx7/nPPCnuUB8IFMROek8y3aQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e6jDiYnzLTYk/3jC49X3YNnxEmaFBYGO/cl88hMTKYq1FltlAtsDFs47xPVxcrXJmXB6FiDcQKgy
Zcri+H61avSebr0yHZ1uigtfwqLvcivJwyCmMK1zZ+tk95pu+v8wQUekejQwCfm8d4EwcPtFRBCP
VuiAB7kH68VA/rKSNW/L3Ck+PVdkE6HHJnrneJm4Aial7Xm5QOsroJRJU/ObInH0MO+tgwAysCdd
6eCmjEBFQGTjmThY8W79EF9AQGGRTMTJSajCB65vB7j4uMsw7y2m2q5T1cf5FapbNOa5qVGM3ltu
WzPHL8ffpwsn/Um4FxL0m2OELCU3vijgWPxyYg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W4uYHM01gGeA2MU+ib2L/ExIRZJnY4G/4/BNSFnBkDMClm5bxdPZWGZhCUejE4JXBUBzvBBii0hv
o/qn9snazl844XvvPfn0rjgdMjBDDTUc14EhQ+t9LtnZFAV+z3wAIKGQaUOt5C451j/28rPyPkS0
kBiQMKRYL8V8HYzz8PJCw/2pMZh5nAGYlHVN7x7BRfHg/eGLL9Vxje7mRSIq9oPfHNxp9KvTPnEz
BAbFFeUiH6gtQHgv3loUdp74IXW+8+uJHlh0BbE4crWkB23UetPNvBTz30q+iGUe+Uy9cDako55V
AVXIMgciLrWVPF+qY5b7zySQkB4Xsfj+udkVyA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R0MJeGCQpSjYsGBWKKr56ZJi8ovYpLtniBxpCnrQicvQybY+fnPA8Daj6MXdCf3qwLF8yF5WCJ8s
qgsZvXSLz7hwsKVEId08i3cpwMDSnKdPTNXjuKS2h7UKOlcr6QZ5j31qcO2XbyCffpn/pAXTmv3a
wywj0bLNK61+JY8v+VTzUKzR370hK34Ryuts+hg1InhuHxLuVnu52lVOpk/PYUaA+w7ORS7AIzBm
Ic2Gs+gCO56TT/kHzEdPXDOhyRk/LG0ir7xXNq7VYILxVh4t9QTZ+TIjutFAhElz9ceEjJ95QYy+
i58LiAOmyF9ID0yxSSYM4KQAF2bqt9kvgdWRhg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
piBTg4FhL4gV7WxO2j/dIDXpMS0DVV+BCPbz6qHH74TfGEKWiiBMU6gK+ZbplwJNS8NHNyEzAlya
r4wgVpBFLdWysNz1JTSjKKJCO9JEQN5/H5jfiaYLOSRwE+N3Opc54BvT85yu1V+zTS+2aJj4AQ/f
gjyVCtr2A8YVv2zEjqFuQcYlcSxHTEk5eig4u36hHgzGJsmifFlP0OtE2NeoOMzFbBJe4LR9f1Ac
XQfLq8HilNwnOz4EYZGL9iJymjQ63NwSYfWcRjHVPPJXQFZSrWlI6V5kkz1/IDnPuelueoAKOk5K
OAAeaRjYDKgXhfse4B1Cy+u9f08zryJez9v+yfA14jVDkQQJp6a0qHJYuemefEFrmwJxSLUqG+Xq
QDK6/emEA9ZXoln0PNQyFzaEVDeFDZBn8LZi5SGL6f+TpO0acfI2jxa5+vCQHX/boxpyVjtxPh0W
Xjk7+E7CKFDmE6T/ZNnn7MRpaG1g4A2TEvSqCSRRnPprcg/+bRR6T6Sy

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GlYhuN+XgK/dKipYGy0F51EWCsMzdTtEw7DUl9GCeVeyU6B0qQxd4o+WGLqPzleHUcbSjTY0Zsbn
PYVk3cx1yet4akcLytYAGFXC4n/Xi+1UqMz5TGn6+YQTvRIQ3rDpVCwwETOtxY9exyURa9vrZwN6
wg8aS7eaMRDPPrD9XOy8sQT0WrdKizBToFy2xoVRXceycyYYY7TdZikow1sCVE5Dsq8WQ5SRprGB
6XOvNlQnaIlUCVafx8nFv91VsM31btEViBrUpTqFHJAuoebt0ZL+JlrQ5nOk7XQnw6AQ+0ZlOKba
q3Ttg2CqLMLHVI+1yNiz+OEKhmPV1D5J7vlPQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2gbN0jz/o58BxZjM7+eT+qN7Q3qHE0g1JsI7dvdgaVydBYqQVWbzuiZYLMAHv8yrsn9b32oHcBSE
0o5Cui6GiD7neKU4AljBAlKAaN9vmM7TfUunNvBpRwv61T0jxsnbQPWfLrtpbTXbXa9k+COT+cqb
xPXfz1KFKZR+jUVQfqg3k9yE8k42Qekbv3kD1KU/qey8yzrOiZWk3YSqYVf+xtUpOvJY52CMhroS
XNjVVkBPUu8Qp/8HAzxqzWi+9FMbOuRKapPdzyPMn/9u5V3oDa03Jlbl/wNvQRAMkkI4MR0Z6Fef
acPXE4lO4yrbdCI+/JWNiFnMhbPxxOqB2cgi5g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ijvB9ebv8UTsfEBOdwLX29OhkfU+M38mGG3GBCgYR1J/bZmxD6jFCxoFCEm1aKFgD1oURupMHfs1
c3MOeOmJ+miekD3bzrkO2GpRCnMbhKovUm5w9Qm7OnK1B25OU6+Xq1Ykk4tIi1xMOMYX8YKOrSrC
twPgnJ2VHr4FFKQ+p5YO7BYb6KtJrf3+2JKYjVPpp3gkR5SZklV/ugbHgXnKTC8NtjSnys5yM8fs
hXOpMWgzLJxxPm595q7fFP3rHvMyw7H7unYraHK+0uc9zTFZ4LHWuOQvc3TRUEmRmJmaag8nwld1
2cnhyhbuZqsuwb5+2W6amIYGSDb8gPS45qwzBg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 68000)
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
