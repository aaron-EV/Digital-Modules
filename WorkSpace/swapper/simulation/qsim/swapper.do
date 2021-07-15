onerror {quit -f}
vlib work
vlog -work work swapper.vo
vlog -work work swapper.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.swapper_vlg_vec_tst
vcd file -direction swapper.msim.vcd
vcd add -internal swapper_vlg_vec_tst/*
vcd add -internal swapper_vlg_vec_tst/i1/*
add wave /*
run -all
