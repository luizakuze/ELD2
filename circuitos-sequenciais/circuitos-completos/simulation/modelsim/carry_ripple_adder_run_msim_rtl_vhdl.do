transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/luiza.k12/eld2/estudo_p1/refazendo-circuitos/circuitos-completos/ld_zeros2.vhd}

