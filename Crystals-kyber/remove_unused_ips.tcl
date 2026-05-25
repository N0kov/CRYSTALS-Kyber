set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]

open_project $PRJ_FILE

# Find all files for c_shift_ram_7 and c_shift_ram_10 with their parent composite
puts "=== c_shift_ram_7 ==="
foreach f [get_files -all] {
    set name [file tail $f]
    if {[string match "c_shift_ram_7*" $name]} {
        set parent [get_property PARENT_COMPOSITE_FILE $f]
        set ftype  [get_property FILE_TYPE $f]
        puts "  PARENT=[file tail $parent] TYPE=$ftype NAME=$name"
    }
}
puts "=== c_shift_ram_10 ==="
foreach f [get_files -all] {
    set name [file tail $f]
    if {[string match "c_shift_ram_10*" $name]} {
        set parent [get_property PARENT_COMPOSITE_FILE $f]
        set ftype  [get_property FILE_TYPE $f]
        puts "  PARENT=[file tail $parent] TYPE=$ftype NAME=$name"
    }
}

close_project
