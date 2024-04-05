onerror {resume}
quietly set dataset_list [list sim vsim]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider entradas
add wave -noupdate sim:/nand_gate/a
add wave -noupdate sim:/nand_gate/b
add wave -noupdate -divider sa´idas
add wave -noupdate sim:/nand_gate/x
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4200000000000000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 39
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {3609600000000001 ps} {7641600000000316 ps}
