onerror {quit -f}
vlib work
vlog -work work singlePort_ramSR.vo
vlog -work work singlePort_ramSR.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.singlePort_ramSR_vlg_vec_tst
vcd file -direction singlePort_ramSR.msim.vcd
vcd add -internal singlePort_ramSR_vlg_vec_tst/*
vcd add -internal singlePort_ramSR_vlg_vec_tst/i1/*
add wave /*
run -all
