#!/usr/bin/env bash


##GLOBAL VARIABLES
BAR='▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'
red="\e[31m"
green="\e[32m"
white="\e[37m"
bold="\e[1m"
reset="\033[m"
declare adv_exit="Exit..."
declare adv_load="Loading"
arr_void=()
##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo ""
}

##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo ""
}

##FUNCTIONS
function func_load(){
	c=1
	until [ $c -gt 2 ]
	do
		c=$(( c+1 ))
		echo $c
	done
}

##OPTION
function option(){
	case $op in 
		"a" | "[a]" | "Sign-in")
			clear
			sleep 1
			func_load
			echo "Sign-in"
			;;
		"b" | "[b]" | "Sign-up")
			clear
			sleep 1
			echo "Sign-up"
			;;
		"c" | "[c]" | "Exit")
			clear
			sleep 1
			echo "Exit"
			;;
		*)
			until [ ${#arr_void[@]} -gt 2 ]
			do
				c=$(( c+1 ))
				arr_void+=($c)
				echo $c
			done
			;;
	esac
}

##MAIN
function main(){
	banner
	menu
	printf "Option: "
	read op
	option $op
}

main
