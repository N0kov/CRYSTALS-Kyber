# retarget_xc7a35t.tcl
# Stage 0 of plan_masked_ntt_phaseA.md.
# Retargets the project from xc7a12tcpg238-1 to xc7a35tcsg324-1
# (Arty-A7-35T dev kit part — common, well-documented Artix-7 variant).
#
# Steps:
#   1. Open project, snapshot current part for log.
#   2. Change part via set_property.
#   3. Upgrade all IPs to the new part.
#   4. Re-generate IP output products (sim netlists, etc.).
#   5. Save project.

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
set NEW_PART   "xc7a35tcsg324-1"

open_project $PRJ_FILE

set old_part [get_property part [current_project]]
puts "INFO: current part = $old_part"
puts "INFO: target part  = $NEW_PART"

if {$old_part eq $NEW_PART} {
    puts "INFO: already on target part; nothing to do."
} else {
    set_property part $NEW_PART [current_project]
    puts "INFO: project part changed to $NEW_PART"
}

# Upgrade all IPs to the new part
set ips [get_ips]
puts "INFO: upgrading [llength $ips] IPs to new part"
upgrade_ip $ips

# Regenerate IP output products (synth + sim netlists)
puts "INFO: regenerating IP output products (synthesis + simulation)"
generate_target {synthesis simulation} $ips

# Reset all synth runs since they were tied to old part
puts "INFO: resetting synth runs"
foreach run [get_runs -filter {IS_SYNTHESIS == TRUE}] {
    if {[get_property STATUS $run] ne "Not started"} {
        reset_run $run
    }
}

puts "INFO: retarget complete."
puts "INFO: NEXT: re-run regression_check.sh and synth_audit.tcl to confirm functional + timing."
