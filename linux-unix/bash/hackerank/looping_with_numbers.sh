#!/bin/bash

: <<'PROBLEM'
Use a for loop to display the natural numbers from 1 to 50

Input Format

There is no input

Output Format

PROBLEM
counter=1
while [ $counter -le 50 ]
do
	echo $counter
	((counter++))
done
