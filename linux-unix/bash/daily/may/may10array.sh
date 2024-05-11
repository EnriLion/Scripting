#!/bin/usr/env bash

declare -a sport=(
[0]="lo(60%)"
[1]="load(70%)"
[2]="loading(100%)"
)

declare -r adv="Hello..$i"

function ex(){
	v=$1
	# for i in ${sport[@]}
	for i in {1..3}
	do	
		clear
		echo -ne $v $i
		sleep 1
	done
	clear
}

ex $adv



