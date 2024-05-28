onerror {exit -code 1}
vlib work
vlog -work work outputPorts.vo
vlog -work work DiagramaDeTiempo.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.outputPorts_vlg_vec_tst -voptargs="+acc"
vcd file -direction outputPorts.msim.vcd
vcd add -internal outputPorts_vlg_vec_tst/*
vcd add -internal outputPorts_vlg_vec_tst/i1/*
run -all
quit -f
