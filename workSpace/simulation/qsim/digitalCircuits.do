onerror {quit -f}
vlib work
vlog -work work digitalCircuits.vo
vlog -work work digitalCircuits.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.trueDualPort_vlg_vec_tst
vcd file -direction digitalCircuits.msim.vcd
vcd add -internal trueDualPort_vlg_vec_tst/*
vcd add -internal trueDualPort_vlg_vec_tst/i1/*
add wave /*
run -all
