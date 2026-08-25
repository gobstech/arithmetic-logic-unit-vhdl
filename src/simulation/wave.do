onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /circ_comp/SW
add wave -noupdate /circ_comp/HEX7
add wave -noupdate /circ_comp/HEX6
add wave -noupdate /circ_comp/HEX5
add wave -noupdate /circ_comp/HEX4
add wave -noupdate /circ_comp/HEX3
add wave -noupdate /circ_comp/HEX2
add wave -noupdate /circ_comp/HEX0
add wave -noupdate /circ_comp/LEDR
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 86
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
WaveRestoreZoom {0 ps} {1013 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 00000000000 -endvalue 11111111111 -type Range -direction Up -period 10ps -step 1 -repeat 2048 -range 10 0 -starttime 0ps -endtime 100000ps sim:/circ_comp/SW 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
