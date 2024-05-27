#!/usr/bin/env bash


##GLOBAL VARIABLES
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
function option(){
	case $op in 
		"a" | "[a]" | "Sign-in" | "SIGN-IN")
			clear
			#loading
			echo "Sign-in"
			;;
		"b" | "[b]" | "Sign-up" | "SIGN-UP")
			clear
			#loading
			echo "Sign-up"
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			clear
			#loading
			echo "Exit"
			;;
		*)
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
	option $op
}

main

