transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/1323018/Downloads/DE2_demodula/Blocos/sin_gen.vhd}
vcom -93 -work work {C:/Users/1323018/Downloads/DE2_demodula/Blocos/AM_Mixer.vhd}

vcom -93 -work work {C:/Users/1323018/Downloads/DE2_demodula/Testbench/tb_AM_Mixer.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" tb_AM_Mixer

add wave *
view structure
view signals
run -all
