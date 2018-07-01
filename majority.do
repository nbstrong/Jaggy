onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /majority/x1
add wave -noupdate /majority/x2
add wave -noupdate /majority/x3
add wave -noupdate /majority/f
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {744941 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {40 ns} {840 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 400ns sim:/majority/x1 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 800ns Edit:/majority/x1 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/majority/x2 
wave edit invert -start 200ns -end 400ns Edit:/majority/x2 
wave edit invert -start 600ns -end 800ns Edit:/majority/x2 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/majority/x3 
WaveCollapseAll -1
wave clipboard restore
