#!/bin/bash

##COLOR ANSI

##GLOBAL VARIABLES
declare -s waradvert="Warning:You are wrong..."
declare -s loadadvert="Loading..."
declare -s erroradvert="Loading..."
##MAIN
function banner(){
	echo "	May19"
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

##FUNCTION
function funcload(){
	v="$1"
	for i in {60..10..100}
	do
		sleep 1
		echo -ne 
		clear
	done
	clear
}

##OPTION
function option(){
	case $op in
		"a")
			clear
			echo "	Sign-in"
			;;
		"b")
			clear
			echo "	Sign-up"
			;;
		"c")
			clear
			echo "	Bye"
			;;
		*)

	esac
}

##MAIN
function main(){
	banner
	menu
	printf "Option:	"
	read op
	option $op
}

main
