#!/bin/bash

#BASH normal spinner
# i=1
# c=10
# sp="/-\|"
# echo -n ' '
# for i in {1..100000}
# do
#     printf "\r${sp:i++%${#sp}:1}"
# done
# clear

##POSIX in bash
# sp='/-\|'
# printf ' '
# for c in {1..100000}
# do
#     printf '\b%.1s' "$sp"
#     sp=${sp#?}${sp%???}
# done
# clear

