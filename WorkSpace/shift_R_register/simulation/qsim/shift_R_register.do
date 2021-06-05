onerror {quit -f}
vlib work
vlog -work work shift_R_register.vo
vlog -work work shift_R_register.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.shift_R_register_vlg_vec_tst
vcd file -direction shift_R_register.msim.vcd
vcd add -internal shift_R_register_vlg_vec_tst/*
vcd add -internal shift_R_register_vlg_vec_tst/i1/*
add wave /*
run -all
