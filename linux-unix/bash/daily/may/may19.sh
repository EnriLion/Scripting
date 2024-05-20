#!/usr/bin/env bash

##GLOBAL VARIABLES
arr_var=()
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

##OPTION
function func_option(){
	case $op in
		"a" | "[a]" | "Sign-in" | "SIGN-IN")
			clear
			sleep 1
			echo "Loading"
			sleep 1
			clear
			echo "Sign-in"
			;;
		"b" | "[b]" | "Sign-up" | "SIGN-UP")
			clear
			sleep 1
			echo "Loading"
			sleep 1
			clear
			echo "Sign-up"
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			clear
			sleep 1
			echo "Exit"
			sleep 1
			clear	
			exit 0
			;;
		*)
			while [ ${#arr_var[@]} -gt 2 ]
			do
				c=$(( c+1 ))
				arr_var+=($c)
				sleep 1
				echo -ne ${arr_var[-1]}
				sleep 1
				clear
			done
			clear
			main
			;;
	esac
}

##MAIN
function main(){
	banner
	menu 
	printf "Option: "
	read op
	func_option $op
}

main

