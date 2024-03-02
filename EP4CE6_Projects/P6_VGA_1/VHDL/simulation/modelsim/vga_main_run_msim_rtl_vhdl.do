transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {L:/VHDL/Intel_FPGA_Projects/EP4CE6_Projects/VGA/VGA_Part_1/src/vga_main.vhd}
vcom -93 -work work {L:/VHDL/Intel_FPGA_Projects/EP4CE6_Projects/VGA/VGA_Part_1/src/vga_sync.vhd}
vcom -93 -work work {L:/VHDL/Intel_FPGA_Projects/EP4CE6_Projects/VGA/VGA_Part_1/src/vga_pix_gen.vhd}
vcom -93 -work work {L:/VHDL/Intel_FPGA_Projects/EP4CE6_Projects/VGA/VGA_Part_1/src/bitmap.vhd}

vcom -93 -work work {L:/VHDL/Intel_FPGA_Projects/EP4CE6_Projects/VGA/VGA_Part_1/simulation/modelsim/vga_main.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  vga_main_vhd_tst

add wave *
view structure
view signals
run -all
