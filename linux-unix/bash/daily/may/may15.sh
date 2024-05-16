#!/usr/bin/env bash

##COLORANSI
##GLOBAL VARIABLES
emp_arr=()
##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	-EnriLion"
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
function option(){
	case $op in
		"a" | "[a]" | "Sign-in" | "SIGN-IN")
			clear
			sleep 1
			echo "Sign-in"
			sleep 1
			clear
			;;
		"b" | "[b]" | "Sign-up" | "SIGN-UP")
			clear
			sleep 1
			echo "Sign-up"
			sleep 1
			clear
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			clear
			sleep 1
			echo "Bye..."
			sleep 1
			clear
			;;
		*)
			clear
			while [ ${#emp_arr[@]} -le 2 ];
			do
				v=$(( v+1 ))
				emp_arr+=($v)
				sleep 1
				echo "	You only have 1 to 3 attempts"
				echo "	Attempt: "${emp_arr[-1]}
				sleep 1
				clear
				main
			done
			clear
			sleep 1
			echo "Bye..."
			sleep 1
			clear
			exit 0
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
