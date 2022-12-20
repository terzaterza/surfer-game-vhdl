transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/coursework/upv/projekat/counter.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/debouncer.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/player_controller.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/lcg.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/mem.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/surfer_rom.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/coin_rom.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/bomb_rom.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/tern_pkg.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/hw_mult.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/bcd_to_7seg.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/bin_to_bcd.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/surfer_pkg.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/vga_sync.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/collision_controller.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/gen_info.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/mem_cnt.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/surfer.vhd}
vcom -93 -work work {D:/coursework/upv/projekat/display_controller.vhd}
