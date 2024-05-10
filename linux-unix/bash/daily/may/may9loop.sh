#!/bin/bash

c=60
while [ $c -le 100 ];
do
	c=$(( $c + 10 ))
	sleep 1
	echo -ne "Welcome $c\r"
	clear
done
