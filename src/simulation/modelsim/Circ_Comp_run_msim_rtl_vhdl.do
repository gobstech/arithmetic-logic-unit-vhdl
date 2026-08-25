transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/QP/Circ_Comp/Comparator_package.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Comp.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/prodcomp_package.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/prod_package.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/fulladd_package_vector.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/fulladd_package.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/fulladd.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/compadder_package.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Comparator_Signals.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Sig.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Sig_package.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Ver.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Ver_package.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Comparator_Operations.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/prod_comp.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Prod.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/adder4.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/adder_comp.vhd}
vcom -93 -work work {C:/QP/Circ_Comp/Circ_Comp.vhd}

