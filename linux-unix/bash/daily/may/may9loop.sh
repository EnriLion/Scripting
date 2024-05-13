#!/bin/bash

# c=60
# while [ $c -le 100 ];
# do
# 	c=$(( $c + 10 ))
# 	sleep 1
# 	echo -ne "Welcome $c\r"
# 	clear
# done

##GLOBAL VARIABLES
declare -r advload="Loading..."

function funcwh(){
	i="$1"
	c=60
	while [ $c -le 90 ]
	do
		c=$(( $c + 10 ))
		clear
		echo -ne  $i$c"%"
		sleep 1
	done
	clear
}


funcwh $advload
