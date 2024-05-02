#!/bin/bash

##COLOR ANSI
colorwhite="\e[37m"
colorred="\e[31m"
colorgreen="\e[32m"
colorflick="\e[5m"
colorreset="\e[0m"
	
##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	-EnriLion"
	echo ""
}

##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a] Sign-in"
	echo "	[b] Sign-up"
	echo "	[c] Exit"
	echo ""
	
}

##OPTIONS
function opts(){
	case $op in
		"a" | "[a]" | "Sign-in")
			echo "Sign in"
			;;
		"b" | "[b]" | "Sign-up")
			echo "Sign up"
			;;
		"c" | "[c]" | "Exit")
			echo "Exit"
			;;
		*)
			echo "Bye"
			;;
	esac
}


##MAIN
function main(){
	banner
	menu
	printf "Option:"
	read op
	opts $op
}

main	
