transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/Pipeline/EE-309-Project-2-Pipelining/ALU/comp.vhd}

