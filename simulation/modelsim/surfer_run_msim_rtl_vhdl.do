transcript on
if ![file isdirectory surfer_iputf_libs] {
	file mkdir surfer_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "D:/coursework/upv/upv-projekat/pll_sim/pll.vho"

vcom -93 -work work {D:/coursework/upv/upv-projekat/tern_pkg.vhd}
vcom -93 -work work {D:/coursework/upv/upv-projekat/surfer_rom.vhd}
vcom -93 -work work {D:/coursework/upv/upv-projekat/coin_rom.vhd}
vcom -93 -work work {D:/coursework/upv/upv-projekat/bomb_rom.vhd}
vcom -93 -work work {D:/coursework/upv/upv-projekat/surfer_pkg.vhd}
vcom -93 -work work {D:/coursework/upv/upv-projekat/vga_sync.vhd}
vcom -93 -work work {D:/coursework/upv/upv-projekat/display_controller.vhd}
vcom -93 -work work {D:/coursework/upv/upv-projekat/disp_test.vhd}

