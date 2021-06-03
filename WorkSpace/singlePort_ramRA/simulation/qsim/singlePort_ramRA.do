onerror {quit -f}
vlib work
vlog -work work singlePort_ramRA.vo
vlog -work work singlePort_ramRA.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.singlePort_ramRA_vlg_vec_tst
vcd file -direction singlePort_ramRA.msim.vcd
vcd add -internal singlePort_ramRA_vlg_vec_tst/*
vcd add -internal singlePort_ramRA_vlg_vec_tst/i1/*
add wave /*
run -all
