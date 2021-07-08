onerror {quit -f}
vlib work
vlog -work work dualPort_ramSR.vo
vlog -work work dualPort_ramSR.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dualPort_ramSR_vlg_vec_tst
vcd file -direction dualPort_ramSR.msim.vcd
vcd add -internal dualPort_ramSR_vlg_vec_tst/*
vcd add -internal dualPort_ramSR_vlg_vec_tst/i1/*
add wave /*
run -all
