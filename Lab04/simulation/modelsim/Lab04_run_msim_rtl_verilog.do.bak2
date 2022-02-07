transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/src {D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/src/display.v}
vlog -vlog01compat -work work +incdir+D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/src {D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/src/BCDtoSSeg.v}
vlog -vlog01compat -work work +incdir+D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/Lab04 {D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/Lab04/Lab04.v}
vlog -vlog01compat -work work +incdir+D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/src {D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/src/BancoRegistro.v}

vlog -vlog01compat -work work +incdir+D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/Lab04/../src {D:/Users/jsgj2/Documents/GitHub/lab04-2021-2-grupo01-2021-2/Lab04/../src/TestBench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  TestBench

add wave *
view structure
view signals
run -all
