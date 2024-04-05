vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../hamming_distance.vhd}

vsim work.hamming_distance

do wave.do

force -freeze sim:/hamming_distance/a 1111100001000010000100001 0
force -freeze sim:/hamming_distance/b 0000011111111111111111111 0
run
force -freeze sim:/hamming_distance/a 1001011111111111111111111 0
force -freeze sim:/hamming_distance/b 0000100001000010000100001 0
run
force -freeze sim:/hamming_distance/a 1011110111101111011110111 0
run
force -freeze sim:/hamming_distance/b 0111111111111111111111111 0
run
