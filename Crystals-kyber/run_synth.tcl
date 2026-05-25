# Step 6.3 synthesis check — runs synth IN-PROCESS via synth_design (not
# launch_runs, which forks a child Vivado that segfaults during
# XilReg::Utils::GetHostInfo on this libudev version — known
# Vivado-on-modern-Linux issue, unrelated to our design).
#
# Fixes from prior attempt:
#   1. Set top to Kyber_top_protected with COUNTERMEASURE=MASKING (was
#      defaulting to Kyber_top, the unmasked baseline).
#   2. Regenerate any IP outputs missing from the .gen/ cache before
#      attempting elaboration.
#   3. Use synth_design instead of launch_runs to avoid the WebTalk
#      host-info segfault path.
#
# Reports land in this directory:
#   synth_utilization.rpt
#   synth_timing_summary.rpt

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]

open_project $PRJ_FILE

# ---------------------------------------------------------------- fix #1
# Kyber_top_protected.sv + its dependency Kyber_top_masked.v + the masked
# *_masked.v cores are all in the simulation fileset (sim_tb_kyber_prot)
# only, not in the synthesis fileset (sources_1). Pull them into the synth
# fileset so synth_design can find Kyber_top_protected.
set NH_DIR   [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set SRC_NEW  [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/new"]
set SRC_IMP  [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/imports"]
set PRNG_DIR [file join $SCRIPT_DIR "../pseudo-random-number-generator_verilog-main/main/verilog"]
set X2X_SRC  [file join $SCRIPT_DIR "../X2X-main/src"]
set X2X_TB   [file join $SCRIPT_DIR "../X2X-main/src_tb"]
set synth_extra_files [list \
    [file join $PRNG_DIR "XORShifter.v"] \
    [file join $X2X_SRC  "D_reg.sv"] \
    [file join $X2X_SRC  "D_reg_NEG_EDGE.sv"] \
    [file join $X2X_SRC  "fullXOR.sv"] \
    [file join $X2X_SRC  "SecXOR.sv"] \
    [file join $X2X_SRC  "SecNOT.sv"] \
    [file join $X2X_SRC  "SecAnd.sv"] \
    [file join $X2X_SRC  "SecAnd_NEG_EDGE.sv"] \
    [file join $X2X_SRC  "SecOR_ALT.sv"] \
    [file join $X2X_SRC  "SecANDOR_ALT.sv"] \
    [file join $X2X_SRC  "triangle.sv"] \
    [file join $X2X_SRC  "box_HALFCYCLE.sv"] \
    [file join $X2X_SRC  "SecAdd_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_SRC  "MaskConversion_2SHARE_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_SRC  "MaskConversion_3SHARE_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_SRC  "MaskConversion_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_TB   "PRNG.sv"] \
    [file join $X2X_TB   "PRNG_engine_2SHARE.sv"] \
    [file join $X2X_TB   "PRNG_engine_3SHARE.sv"] \
    [file join $X2X_TB   "PRNG_engine_STREAM.sv"] \
    [file join $NH_DIR   "mask_polyfifo_x4.sv"] \
    [file join $NH_DIR   "masked_threshold_compare.sv"] \
    [file join $NH_DIR   "masked_compress_d1.sv"] \
    [file join $NH_DIR   "masked_compress_dN.sv"] \
    [file join $NH_DIR   "masked_compress_dN_full.sv"] \
    [file join $SRC_IMP  "new/NTT_core_Client_masked.v"] \
    [file join $SRC_IMP  "new/NTT_core_Server_masked.v"] \
    [file join $SRC_IMP  "new/Kyber_Client_masked.v"] \
    [file join $SRC_IMP  "new/Kyber_Server_masked.v"] \
    [file join $SRC_NEW  "Kyber_top.v"] \
    [file join $SRC_NEW  "Kyber_top_masked.v"] \
    [file join $NH_DIR   "Kyber_top_protected.sv"] \
]
foreach f $synth_extra_files {
    if {[get_files -quiet -of_objects [get_filesets sources_1] $f] eq ""} {
        add_files -fileset sources_1 $f
    }
}

# NTT_core_Server_masked.v uses SV-only constructs (unpacked-array port
# connects to X2X). Force SystemVerilog parsing.
set_property file_type "SystemVerilog" \
    [get_files -of_objects [get_filesets sources_1] "*NTT_core_Server_masked.v"]

set_property top Kyber_top_protected [current_fileset]
set_property generic {COUNTERMEASURE=MASKING} [current_fileset]
puts "INFO: synth target = [get_property top      [current_fileset]]"
puts "INFO: generics     = [get_property generic  [current_fileset]]"
puts "INFO: part         = [get_property part     [current_project]]"

# ---------------------------------------------------------------- fix #2
# Regenerate IP outputs that are missing from disk (the fifo_generator_6
# warnings in the prior run indicated stale or partial generation). Try
# the project IPs first; if individual IPs error, log and continue.
puts "INFO: refreshing IP outputs..."
foreach ip [get_ips] {
    if {[catch {generate_target -force all $ip} err]} {
        puts "WARN: generate_target failed for $ip: $err"
    }
}
puts "INFO: IP outputs refreshed."

# ---------------------------------------------------------------- fix #2b
# Mirror the project's own synth tcl
# (Crystals-kyber.runs/synth_1/Kyber_top.tcl) line-for-line: read_ip each
# .xci, mark DCPs as synth-only, enable IP cache lite load (the magic
# param that lets synth_design link cached IP DCPs).
foreach xci [glob -nocomplain [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/ip/*/*.xci"]] {
    if {[catch {read_ip -quiet $xci} err]} {
        puts "WARN: read_ip failed for $xci: $err"
    }
}
foreach dcp [get_files -quiet -all -filter "file_type==\"Design Checkpoint\""] {
    catch {set_property used_in_implementation false $dcp}
}
set_param ips.enableIPCacheLiteLoad 1
puts "INFO: IPs bound via read_ip + IP cache lite load enabled."

# ---------------------------------------------------------------- fix #3
# Disable WebTalk so XilReg host-info code path isn't exercised (the prior
# segfault location). Per-user setting; may emit a notice that's harmless.
catch {config_webtalk -user off}

# Run synth in-process. -part comes from the project, -top from the
# fileset's top property. Use -mode out_of_context only if you want to
# skip global I/O; for utilization reports the default full mode is fine.
puts "INFO: starting synth_design..."
if {[catch {synth_design -top Kyber_top_protected -generic COUNTERMEASURE=MASKING} err]} {
    puts "FAIL: synth_design errored: $err"
    exit 2
}
puts "INFO: synth_design complete."

report_utilization     -file [file join $SCRIPT_DIR "synth_utilization.rpt"]
report_timing_summary  -file [file join $SCRIPT_DIR "synth_timing_summary.rpt"]

# Compact one-liner summary to stdout for log-grep
puts ""
puts "=========================== SYNTH SUMMARY =========================="
catch {
    set f [open [file join $SCRIPT_DIR "synth_utilization.rpt"] r]
    set body [read $f]
    close $f
    foreach line [split $body \n] {
        if {[regexp {Slice LUTs\*?\s*\|\s*(\d+)\s+\|.*\|\s*(\d+)\s+\|\s*([\d.]+)} $line _ used avail pct]} {
            puts "SYNTH_SUMMARY: LUT  used=$used  avail=$avail  pct=$pct"
        }
        if {[regexp {Slice Registers\s*\|\s*(\d+)\s+\|.*\|\s*(\d+)\s+\|\s*([\d.]+)} $line _ used avail pct]} {
            puts "SYNTH_SUMMARY: FF   used=$used  avail=$avail  pct=$pct"
        }
        if {[regexp {Block RAM Tile\s*\|\s*(\d+(?:\.\d+)?)\s*\|.*\|\s*(\d+)\s*\|\s*([\d.]+)} $line _ used avail pct]} {
            puts "SYNTH_SUMMARY: BRAM used=$used  avail=$avail  pct=$pct"
        }
        if {[regexp {DSPs\s*\|\s*(\d+)\s+\|.*\|\s*(\d+)\s+\|\s*([\d.]+)} $line _ used avail pct]} {
            puts "SYNTH_SUMMARY: DSP  used=$used  avail=$avail  pct=$pct"
        }
    }
}

# Timing — best-effort WNS / TNS extract from the summary report
catch {
    set f [open [file join $SCRIPT_DIR "synth_timing_summary.rpt"] r]
    set body [read $f]
    close $f
    set found_header 0
    foreach line [split $body \n] {
        if {[regexp {WNS\(ns\)} $line]} { set found_header 1 ; continue }
        if {$found_header} {
            puts "SYNTH_SUMMARY: TIMING: $line"
            set found_header 0
            break
        }
    }
}
puts "===================================================================="

puts "INFO: Reports written:"
puts "INFO:   [file join $SCRIPT_DIR synth_utilization.rpt]"
puts "INFO:   [file join $SCRIPT_DIR synth_timing_summary.rpt]"
