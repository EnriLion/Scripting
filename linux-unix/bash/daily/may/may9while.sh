#!/bin/bash


c=1
while [ $c -le 3 ]
do
	$((c++))
	sleep 1
	echo -ne "Sleep $c"
	clear
done
