onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/clk
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/reset
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_address
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_readdata
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_writedata
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_waitrequest
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_write
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_read
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_byteenable
add wave -noupdate -expand -group ch_0_0_master /top_tb/dut/ch_0_0_master/avm_readdatavalid
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_address
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_burstcount
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_byteenable
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_read
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_readdata
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_readdatavalid
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_waitrequest_n
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_write
add wave -noupdate -expand -group hbm_top /top_tb/dut/hbm_top/ctrl_amm_0_0_writedata
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10501428 ps} 0} {{Cursor 2} {943921600 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 260
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {10398935 ps}
