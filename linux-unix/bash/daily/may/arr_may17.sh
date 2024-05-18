#!/usr/bin/env bash

arr_void=()

function arr_func(){
	clear
	# until [ ${#arr_void[@]} -gt 3 ]
	while [ ${#arr_void[@]} -le 2 ];
	do
		c=$(( c+1 ))
		arr_void+=($c)
		sleep 1
		echo -ne $arr_void
		sleep 1
		clear
	done
	clear
}

function main(){
	arr_func
}

main
