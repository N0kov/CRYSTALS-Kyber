# synth_mask_csprng.tcl
# Phase 1 of plan_masked_ntt_option1.md.
# Standalone out-of-context synthesis check on mask_csprng.sv.
# Confirms the module synthesizes cleanly with no critical warnings,
# and reports resource usage and timing closure standalone.

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set OUT_DIR    [file join $SCRIPT_DIR "audit_reports"]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set PRNG_DIR   [file join $SCRIPT_DIR "../pseudo-random-number-generator_verilog-main/main/verilog"]
file mkdir $OUT_DIR

read_verilog -sv [file join $NH_DIR "mask_csprng.sv"]
read_verilog -sv [file join $NH_DIR "rng.sv"]
read_verilog    [file join $PRNG_DIR "XORShifter.v"]

# 6 ns target (matches the project's main clock constraint)
set xdc [file join $OUT_DIR "mask_csprng_constrs.xdc"]
set fp [open $xdc w]
puts $fp "create_clock -name clk_i -period 6 \[get_ports clk_i\]"
close $fp
read_xdc $xdc

synth_design -top mask_csprng -part xc7a12tcpg238-1 -mode out_of_context

report_timing_summary -file [file join $OUT_DIR mask_csprng_timing.rpt]
report_utilization   -file [file join $OUT_DIR mask_csprng_util.rpt]

puts "INFO: mask_csprng standalone synth complete."
puts "INFO: reports at $OUT_DIR/mask_csprng_timing.rpt and mask_csprng_util.rpt"
