onerror {quit -f}
vlib work
vlog -work work modM_counter.vo
vlog -work work modM_counter.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.modM_counter_vlg_vec_tst
vcd file -direction modM_counter.msim.vcd
vcd add -internal modM_counter_vlg_vec_tst/*
vcd add -internal modM_counter_vlg_vec_tst/i1/*
add wave /*
run -all
