# run_x2x_tb.tcl — standalone X2X testbench run for Phase A validation.
# Drives the included MaskConv_HALF_STREAM_tb.sv testbench in Vivado xsim.
# Purpose: confirm X2X's A2B in q=3329, N_SHARES=2 prime mode works correctly
# before integrating into the masked Kyber design.
#
# Usage:
#   source /data/home/lincoln/2025.2/Vivado/settings64.sh
#   cd X2X-main
#   vivado -mode batch -source run_x2x_tb.tcl

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set SRC_DIR    [file join $SCRIPT_DIR "src"]
set TB_DIR     [file join $SCRIPT_DIR "src_tb"]
set BUILD_DIR  [file join $SCRIPT_DIR "build_x2x_tb"]
set PRJ_FILE   [file join $BUILD_DIR  "x2x_tb.xpr"]

file mkdir $BUILD_DIR

# Create or reopen a saved project so launch_simulation has a place to land
if {[file exists $PRJ_FILE]} {
    open_project $PRJ_FILE
} else {
    create_project x2x_tb $BUILD_DIR -part xc7a35tcpg236-1 -force
    set src_files [glob -nocomplain [file join $SRC_DIR "*.sv"]]
    set tb_files  [glob -nocomplain [file join $TB_DIR  "*.sv"]]
    add_files -fileset sources_1 $src_files
    add_files -fileset sim_1     $tb_files
    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sources_1]]
    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sim_1]]
    set_property top MaskConv_HALF_STREAM_tb [get_filesets sim_1]
    set_property top_lib xil_defaultlib      [get_filesets sim_1]
}

launch_simulation -mode behavioral
run -all

puts "INFO: X2X testbench complete."
