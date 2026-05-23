# sim_tb_masked_threshold_compare.tcl
# Standalone sim of masked_threshold_compare (Phase A v2 building block).

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set X2X_SRC    [file join $SCRIPT_DIR "../X2X-main/src"]
set BUILD_DIR  [file join $SCRIPT_DIR "build_tb_masked_threshold_compare"]
set PRJ_FILE   [file join $BUILD_DIR "tb_thr.xpr"]

file mkdir $BUILD_DIR

if {[file exists $PRJ_FILE]} {
    open_project $PRJ_FILE
} else {
    create_project tb_thr $BUILD_DIR -part xc7a35tcpg236-1 -force
    set x2x_files [glob -nocomplain [file join $X2X_SRC "*.sv"]]
    add_files -fileset sources_1 $x2x_files
    add_files -fileset sources_1 [file join $NH_DIR "masked_threshold_compare.sv"]
    add_files -fileset sim_1     [file join $NH_DIR "tb_masked_threshold_compare.sv"]
    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sources_1]]
    set_property file_type "SystemVerilog" [get_files -of_objects [get_filesets sim_1]]
    set_property top tb_masked_threshold_compare [get_filesets sim_1]
    set_property top_lib xil_defaultlib          [get_filesets sim_1]
}

launch_simulation -mode behavioral
run -all

puts "INFO: masked_threshold_compare sim complete."
