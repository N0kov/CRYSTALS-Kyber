# sim_tb_masked_compress_d1_streaming.tcl
# Characterization sim for X2X streaming behavior in our wrapper.
#
# Usage:
#   source /data/home/lincoln/2025.2/Vivado/settings64.sh
#   cd Crystals-kyber
#   vivado -mode batch -source sim_tb_masked_compress_d1_streaming.tcl

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set X2X_SRC    [file join $SCRIPT_DIR "../X2X-main/src"]
set X2X_TB     [file join $SCRIPT_DIR "../X2X-main/src_tb"]
set BUILD_DIR  [file join $SCRIPT_DIR "build_tb_masked_compress_d1_streaming"]
set PRJ_FILE   [file join $BUILD_DIR "tb_streaming.xpr"]

file mkdir $BUILD_DIR

if {[file exists $PRJ_FILE]} {
    open_project $PRJ_FILE
} else {
    create_project tb_streaming $BUILD_DIR -part xc7a35tcpg236-1 -force

    set x2x_files [glob -nocomplain [file join $X2X_SRC "*.sv"]]
    add_files -fileset sources_1 $x2x_files
    add_files -fileset sources_1 [file join $X2X_TB "PRNG.sv"]
    add_files -fileset sources_1 [file join $X2X_TB "PRNG_engine_2SHARE.sv"]
    add_files -fileset sources_1 [file join $X2X_TB "PRNG_engine_3SHARE.sv"]
    add_files -fileset sources_1 [file join $X2X_TB "PRNG_engine_STREAM.sv"]
    add_files -fileset sources_1 [file join $NH_DIR "masked_threshold_compare.sv"]
    add_files -fileset sources_1 [file join $NH_DIR "masked_compress_d1.sv"]

    add_files -fileset sim_1 [file join $NH_DIR "tb_masked_compress_d1_streaming.sv"]

    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sources_1]]
    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sim_1]]

    set_property top tb_masked_compress_d1_streaming [get_filesets sim_1]
    set_property top_lib xil_defaultlib              [get_filesets sim_1]
}

launch_simulation -mode behavioral
run -all

puts "INFO: streaming sim complete."
