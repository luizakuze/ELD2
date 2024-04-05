
vlib rtl_work

vmap work rtl_work 

vcom -93 -work work {../../mux4x1.vhd}

vsim work.mux4x1(v_when_else)

do wave.do

force -freeze sim:/mux4x1/X 0011 0, 0100 1min, 0101 2min -r 6min 
force -freeze sim:/mux4x1/Sel 11 0, 01 1min, 00 2min -r 3min

run


