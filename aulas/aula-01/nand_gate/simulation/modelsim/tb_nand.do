# do nand_gate_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
vlib rtl_work
vmap work rtl_work

#vcom -93 -work work {/home/luiza.k12/eld2/nand_gate/nand_gate.vhd}
vcom -93 -work work {../../nand_gate.vhd}

vsim work.nand_gate(ifsc_v1)


# do wave.do

add wave -position end sim:/nand_gate/a 
add wave -position end sim:/nand_gate/b
add wave -position end sim:/nand_gate/x


force -freeze sim:/nand_gate/a 0 0, 1 1min, 0 2min, 1 3min -r 5min
force -freeze sim:/nand_gate/b 0 0, 1 2min -r 7min
run 1hr


