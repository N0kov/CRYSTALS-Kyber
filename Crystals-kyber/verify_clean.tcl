set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]

open_project $PRJ_FILE

puts "INFO: IPs currently in project:"
foreach ip [get_ips] { puts "  $ip" }

puts ""
puts "INFO: scanning for any files matching c_shift_ram_7 or c_shift_ram_10 across all filesets..."
set found 0
foreach fs [get_filesets *] {
    foreach f [get_files -of_objects [get_filesets $fs]] {
        set n [file tail $f]
        if {[string match "c_shift_ram_7*" $n] || [string match "c_shift_ram_10*" $n]} {
            puts "  found in fileset $fs: $f"
            incr found
        }
    }
}
puts "INFO: total stale refs: $found"

close_project
