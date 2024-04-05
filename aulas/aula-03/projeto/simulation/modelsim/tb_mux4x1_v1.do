

vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../mux4x1.vhd}

vsim work.mux4x1

do wave.do

force -freeze sim:/mux4x1/X 1010 0, 0101 1min, 0000 2min
force -freeze sim:/mux4x1/Sel 11 0, 01 1min, 10 2min -r 5min
run