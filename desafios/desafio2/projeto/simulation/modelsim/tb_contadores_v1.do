vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../contadores.vhd}
vsim work.contadores(ifsc_v1)

add wave -position end  sim:/contadores/clock
add wave -position end  sim:/contadores/reset
add wave -position end  sim:/contadores/dir
add wave -position end  sim:/contadores/q

force -freeze sim:/contadores/clock 1 0, 0 {50 ps} -r 100
force -freeze sim:/contadores/reset 0 0
force -freeze sim:/contadores/dir 0 0, 1 1000
run 1600