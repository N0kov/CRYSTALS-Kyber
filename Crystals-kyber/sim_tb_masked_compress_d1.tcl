# sim_tb_masked_compress_d1.tcl
# Standalone behavioral sim for masked_compress_d1 (Step 3+5 Phase A v1).
# Includes X2X sources, the wrapper module, and the testbench.
#
# Usage:
#   source /data/home/lincoln/2025.2/Vivado/settings64.sh
#   cd Crystals-kyber
#   vivado -mode batch -source sim_tb_masked_compress_d1.tcl

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set X2X_SRC    [file join $SCRIPT_DIR "../X2X-main/src"]
set X2X_TB     [file join $SCRIPT_DIR "../X2X-main/src_tb"]
set BUILD_DIR  [file join $SCRIPT_DIR "build_tb_masked_compress_d1"]
set PRJ_FILE   [file join $BUILD_DIR "tb_masked_compress_d1.xpr"]

file mkdir $BUILD_DIR

if {[file exists $PRJ_FILE]} {
    open_project $PRJ_FILE
} else {
    create_project tb_masked_compress_d1 $BUILD_DIR -part xc7a35tcpg236-1 -force

    # X2X core sources
    set x2x_files [glob -nocomplain [file join $X2X_SRC "*.sv"]]
    add_files -fileset sources_1 $x2x_files

    # X2X PRNG (testbench-side, but we want it as a synthesizable reference for our tb)
    add_files -fileset sources_1 [file join $X2X_TB "PRNG.sv"]
    add_files -fileset sources_1 [file join $X2X_TB "PRNG_engine_2SHARE.sv"]
    add_files -fileset sources_1 [file join $X2X_TB "PRNG_engine_3SHARE.sv"]
    add_files -fileset sources_1 [file join $X2X_TB "PRNG_engine_STREAM.sv"]

    # Our wrapper + threshold gadget (v2)
    add_files -fileset sources_1 [file join $NH_DIR "masked_threshold_compare.sv"]
    add_files -fileset sources_1 [file join $NH_DIR "masked_compress_d1.sv"]

    # Testbench
    add_files -fileset sim_1 [file join $NH_DIR "tb_masked_compress_d1.sv"]

    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sources_1]]
    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sim_1]]

    set_property top tb_masked_compress_d1 [get_filesets sim_1]
    set_property top_lib xil_defaultlib    [get_filesets sim_1]
}

launch_simulation -mode behavioral
run -all

puts "INFO: tb_masked_compress_d1 simulation complete."
