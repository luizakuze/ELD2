vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../ff_D.vhd}

vsim work.ff_d(ifsc_v1)

do wave_v1.do

force -freeze sim:/ff_d/preset 0 0
force -freeze sim:/ff_d/enable 0 0
force -freeze sim:/ff_d/reset 0 0
force -freeze sim:/ff_d/d 0 0
force -freeze sim:/ff_d/clock 1 0, 0 {50 ps} -r 100
run
run 10
run 10
run 100
force -freeze sim:/ff_d/d 1 0
run 100
force -freeze sim:/ff_d/d 0 0
run 100
run
run
run
run
run
force -freeze sim:/ff_d/reset 1 0
run
run
run
run
run
run 10
force -freeze sim:/ff_d/reset 0 0
run 10

