# synth_masked_compress_d1.tcl
# Phase A v1 of Step 3+5: standalone OOC synthesis check on masked_compress_d1
# (which wraps X2X). Confirms the module + dependencies synthesize cleanly
# with no critical warnings, and reports resource + timing on xc7a35t at 6 ns.

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set OUT_DIR    [file join $SCRIPT_DIR "audit_reports"]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set X2X_SRC    [file join $SCRIPT_DIR "../X2X-main/src"]
file mkdir $OUT_DIR

# X2X core sources (all SystemVerilog)
foreach f [list \
    "D_reg.sv" "D_reg_NEG_EDGE.sv" "fullXOR.sv" "SecXOR.sv" "SecNOT.sv" \
    "SecAnd.sv" "SecAnd_NEG_EDGE.sv" "SecOR_ALT.sv" "SecANDOR_ALT.sv" \
    "triangle.sv" "box_HALFCYCLE.sv" "SecAdd_HALFCYCLE_STREAM.sv" \
    "MaskConversion_2SHARE_HALFCYCLE_STREAM.sv" \
    "MaskConversion_3SHARE_HALFCYCLE_STREAM.sv" \
    "MaskConversion_HALFCYCLE_STREAM.sv" \
] {
    read_verilog -sv [file join $X2X_SRC $f]
}

# Our wrapper
read_verilog -sv [file join $NH_DIR "masked_compress_d1.sv"]

# 6 ns target (matches the project's main clock constraint)
set xdc [file join $OUT_DIR "masked_compress_d1_constrs.xdc"]
set fp [open $xdc w]
puts $fp "create_clock -name clk -period 6 \[get_ports clk\]"
close $fp
read_xdc $xdc

synth_design -top masked_compress_d1 -part xc7a35tcpg236-1 -mode out_of_context

report_timing_summary -file [file join $OUT_DIR masked_compress_d1_timing.rpt]
report_utilization   -file [file join $OUT_DIR masked_compress_d1_util.rpt]

puts "INFO: masked_compress_d1 standalone synth complete."
puts "INFO: reports at $OUT_DIR/masked_compress_d1_timing.rpt and masked_compress_d1_util.rpt"
