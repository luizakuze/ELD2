vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../edge_detector1.vhd}
vsim work.edge_detector1(moore_arch)

do wave_edge1.do

force -freeze sim:/edge_detector1/clk 1 0, 0 {50 ps} -r 100 
force -freeze sim:/edge_detector1/reset 1 0, 0 20
force -freeze sim:/edge_detector1/strobe 0 0
run 500
force -freeze sim:/edge_detector1/strobe 1 0, 0 50
run 100
run 100
run 50
force -freeze sim:/edge_detector1/strobe 1 0, 0 60
run 100
run 100 
force -freeze sim:/edge_detector1/strobe 1 0, 0 330
run
force -freeze sim:/edge_detector1/strobe 1 0, 0 330
force -freeze sim:/edge_detector1/strobe 1 0, 0 330
run 500


