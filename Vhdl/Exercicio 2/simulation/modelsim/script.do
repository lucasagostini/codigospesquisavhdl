transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Cristian/University/SDA/Multiplicadores/Serial Mult/mult_serial_32bits.vhd}
vcom -93 -work work {C:/Users/Cristian/University/SDA/Multiplicadores/Serial Mult/reg_n_shifter.vhd}
vcom -93 -work work {C:/Users/Cristian/University/SDA/Multiplicadores/Serial Mult/mult_serial_32bits_fsm.vhd}
vcom -93 -work work {C:/Users/Cristian/University/SDA/Multiplicadores/Serial Mult/simulation/modelsim/mult_serial_32bits.vht}

vsim +altera -do mult_serial_32bits_run_msim_rtl_vhdl.do -l msim_transcript -gui work.mult_serial_32bits_vhd_tst

do wave.do

run 1ms


