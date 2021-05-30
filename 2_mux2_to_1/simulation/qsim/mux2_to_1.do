onerror {quit -f}
vlib work
vlog -work work mux2_to_1.vo
vlog -work work mux2_to_1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux2_to_1_vlg_vec_tst
vcd file -direction mux2_to_1.msim.vcd
vcd add -internal mux2_to_1_vlg_vec_tst/*
vcd add -internal mux2_to_1_vlg_vec_tst/i1/*
add wave /*
run -all
