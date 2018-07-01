onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /full_adder/a
add wave -noupdate /full_adder/b
add wave -noupdate /full_adder/carry_in
add wave -noupdate /full_adder/sum
add wave -noupdate /full_adder/carry_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {32195 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 208
configure wave -valuecolwidth 72
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
WaveRestoreZoom {0 ps} {160 ns}
view wave 
wave clipboard store
wave create -pattern constant -value 0 -starttime 0ns -endtime 1ns sim:/testbench/a_tb 
wave create -pattern clock -initialvalue 0 -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/testbench/a_tb 
wave create -pattern clock -initialvalue 0 -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/testbench/a_tb 
wave create -pattern clock -initialvalue 0 -period 125ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/testbench/carry_in_tb 
wave create -pattern constant -value 0 -starttime 0ns -endtime 1ns sim:/testbench/a_tb 
wave create -pattern clock -initialvalue 0 -period 125ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/testbench/carry_in_tb 
wave create -pattern clock -initialvalue 0 -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/testbench/b_tb 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 250ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/carry_in 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 250ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/carry_in 
wave create -pattern constant -value 0 -starttime 0ns -endtime 1ns sim:/testbench/a_tb 
wave create -pattern clock -initialvalue 0 -period 125ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/testbench/carry_in_tb 
wave create -pattern clock -initialvalue 0 -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/testbench/b_tb 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 250ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/full_adder/carry_in 
wave create -driver freeze -pattern clock -initialvalue 0 -period 160ns -dutycycle 50 -starttime 0ns -endtime 160ns sim:/full_adder/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 80ns -dutycycle 50 -starttime 0ns -endtime 160ns sim:/full_adder/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 40ns -dutycycle 50 -starttime 0ns -endtime 160ns sim:/full_adder/carry_in 
WaveCollapseAll -1
wave clipboard restore
