
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../leading_zeros.vhd}

vsim work.leading_zeros(ifsc_v1)

add wave -position end  sim:/leading_zeros/N
add wave -position end  sim:/leading_zeros/data
add wave -position end  sim:/leading_zeros/zeros
force -freeze sim:/leading_zeros/data 00000000 0
run
force -freeze sim:/leading_zeros/data 00000010 0
run
force -freeze sim:/leading_zeros/data 00001000 0
run
force -freeze sim:/leading_zeros/data 11111111 0
run


