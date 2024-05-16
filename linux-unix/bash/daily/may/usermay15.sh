#!/usr/bin/env bash

##GLOBAL VARIABLES
# declare -s name="Enrique"
empty_arr=()

##VALUES
function values(){
	while [ ${#empty_arr[@]} -le 2 ];
	do
		v=$(( v+1 ))
		empty_arr+=($v)
		echo  "Attempt: " ${empty_arr[-1]}
		main
	done
	echo "Bye..."
	exit 0
}

##MAIN
function main(){
	# printf "Option: "
	# read v
	values 
}

main

