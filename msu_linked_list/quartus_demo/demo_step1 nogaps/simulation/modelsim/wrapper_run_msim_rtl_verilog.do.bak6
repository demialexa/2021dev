transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/projects/circuits/demo/V {E:/projects/circuits/demo/V/wrapper.v}
vlog -vlog01compat -work work +incdir+E:/projects/circuits/demo/V {E:/projects/circuits/demo/V/strobe_generator.v}
vlog -vlog01compat -work work +incdir+E:/projects/circuits/demo/V {E:/projects/circuits/demo/V/SEG7_LUT.v}
vlog -vlog01compat -work work +incdir+E:/projects/circuits/demo/V {E:/projects/circuits/demo/V/clk_divider.v}
vlog -sv -work work +incdir+E:/projects/circuits/demo/V {E:/projects/circuits/demo/V/design.sv}

vlog -sv -work work +incdir+E:/projects/circuits/demo {E:/projects/circuits/demo/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
