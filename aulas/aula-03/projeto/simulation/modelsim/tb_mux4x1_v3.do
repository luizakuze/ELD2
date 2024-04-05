
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../mux4x1.vhd} 
 
vsim work.mux4x1(v_with_select) 

do wave.do

force -freeze sim:/mux4x1/X 0001 0, 1111 1min, 1010 2min -r 5min
force -freeze sim:/mux4x1/Sel 01 0, 11 1min, 10 2min -r 7min

run