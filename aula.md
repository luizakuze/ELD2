ls .*  resestando quartus

.altera.quartus:
quartus2.ini  quartus2.qreg  quartus_full_rules_file.txt


 ls .altera.quartus/
quartus2.ini  quartus2.qreg  quartus_full_rules_file.txt
luiza.k12@TELE-Matlab-Quartus:~$ rm .altera.quartus/
rm: não foi possível remover '.altera.quartus/': É um diretório
luiza.k12@TELE-Matlab-Quartus:~$ 

remove as preferencias
luiza.k12@TELE-Matlab-Quartus:~$ rm .altera.quartus/ -r
luiza.k12@TELE-Matlab-Quartus:~$ 

Sinais -> Fios

# do nand_gate_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/luiza.k12/eld2/nand_gate/nand_gate.vhd}

vsim work.nand_gate(ifsc_v1)

add wave -position end sim:/nand_gate/a 
add wave -position end sim:/nand_gate/b
add wave -position end sim:/nand_gate/x

run 1min
force -freeze sim:/nand_gate/a 0 0
run 1 min
force -freeze sim:/nand_gate/a 0 0
run 1 min
force -freeze sim:/nand_gate/b 1 0
run 1 min
force -freeze sim:/nand_gate/a 1 0

../../nand_gate.vhd














# do nand_gate_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/luiza.k12/eld2/nand_gate/nand_gate.vhd}
# vcom -93 -work work {/../../nand_gate.vhd}

vsim work.nand_gate(ifsc_v1)

add wave -position end sim:/nand_gate/a 
add wave -position end sim:/nand_gate/b
add wave -position end sim:/nand_gate/x


force -freeze sim:/nand_gate/a 0 0, 1 1min, 0 2min, 1 3min
force -freeze sim:/nand_gate/b 0 0, 1 2min

run 


# do nand_gate_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/luiza.k12/eld2/nand_gate/nand_gate.vhd}
# vcom -93 -work work {/../../nand_gate.vhd}

vsim work.nand_gate(ifsc_v1)

add wave -position end sim:/nand_gate/a 
add wave -position end sim:/nand_gate/b
add wave -position end sim:/nand_gate/x


force -freeze sim:/nand_gate/a 0 0, 1 1min, 0 2min, 1 3min -r 5min
force -freeze sim:/nand_gate/b 0 0, 1 2min -r 7min
run 1hr


