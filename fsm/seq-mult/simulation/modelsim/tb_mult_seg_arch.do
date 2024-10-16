vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../seq_mult.vhd}
vsim work.seq_mult(mult_seg_arch)

do wave.do

force -freeze sim:/seq_mult/reset 1 0, 0 20  
force -freeze sim:/seq_mult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/seq_mult/start 0 0
 

# Multiplicação simples (30 * 26)
force -freeze sim:/seq_mult/a_in 10#30  
force -freeze sim:/seq_mult/b_in 10#26  
force -freeze sim:/seq_mult/start 1 0
run 3000  