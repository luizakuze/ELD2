vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../conta_0_N.vhd}
vsim work.conta_0_n(ifsc_v1)

add wave -position end  sim:/conta_0_n/clock
add wave -position end  sim:/conta_0_n/reset
add wave -position end  sim:/conta_0_n/q

force -freeze sim:/conta_0_n/clock 1 0, 0 {50 ps} -r 100
force -freeze sim:/conta_0_n/reset 1 0 , 0 20 , 1 530 , 0 550
run 5730


