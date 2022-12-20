onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mem_cnt_vhd_tst/rst
add wave -noupdate /mem_cnt_vhd_tst/clk
add wave -noupdate /mem_cnt_vhd_tst/add
add wave -noupdate /mem_cnt_vhd_tst/delete
add wave -noupdate /mem_cnt_vhd_tst/copy
add wave -noupdate /mem_cnt_vhd_tst/move
add wave -noupdate -radix hexadecimal /mem_cnt_vhd_tst/info
add wave -noupdate -radix unsigned /mem_cnt_vhd_tst/core_r_addr
add wave -noupdate -radix hexadecimal /mem_cnt_vhd_tst/core_r_data
add wave -noupdate -radix unsigned /mem_cnt_vhd_tst/core_w_addr
add wave -noupdate -radix hexadecimal /mem_cnt_vhd_tst/core_w_data
add wave -noupdate /mem_cnt_vhd_tst/core_w_en
add wave -noupdate /mem_cnt_vhd_tst/i1/queue_head
add wave -noupdate /mem_cnt_vhd_tst/i1/queue_size
add wave -noupdate /mem_cnt_vhd_tst/i1/burst_state
add wave -noupdate /mem_cnt_vhd_tst/i1/burst_count
add wave -noupdate -radix unsigned /mem_cnt_vhd_tst/disp_w_addr
add wave -noupdate -radix hexadecimal /mem_cnt_vhd_tst/disp_w_data
add wave -noupdate /mem_cnt_vhd_tst/disp_w_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49999522 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits sec
update
WaveRestoreZoom {37531250 ps} {50656250 ps}
