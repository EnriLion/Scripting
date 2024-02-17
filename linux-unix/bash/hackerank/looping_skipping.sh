#!/bin/env/bash

# Your task is to use for loops to display only odd natural
# numbers from 1 to 99
#
# Input Format
# There is no input.
# Constraints
# -
# Output Format
# 1
# 3
# 5
# .
# .
# .
# .
# 99
# Sample Input
# -
# Sample Output
# 1
# 3
# 5
# .
# .
# .
# .
# .
# 99
# Explanation
# -
#

# Using while and do

# cnt=1

# while [ $cnt -gt 99 ]
# do 
# 	echo $cnt
# 	((cnt=cnt+2))
# done


# Using until and do

# cout=1
# until [ $cout -gt 99 ]
# do
# 	echo $cout
# 	((cout=cout+2))
# done


#using only for  in ranges

# for i in {1..99..2}
# do 
# 	echo $i
# done

#using while

# ct=1
# while [ $ct -lt 100 ]; do
# 	echo $ct
# 	let ct=ct+2
# done

#using alternate for syntax

for ((nm = 1; nm <= 99; nm=nm+2))
do
	echo $nm

done
