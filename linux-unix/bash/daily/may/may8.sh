#!/bin/bash

##COLOR ANSI

##GLOBAL VARIABLES
adexit=$( echo -n "Exit...$c")
adload=$( echo -n "Loading... $c" )

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

##FUNCTION
function fload(){
	adv="$1"
	c=1
	while  [ c -le 3 ]
	do
		((c++))
		sleep 1
		echo -ne adv $c
		clear
	done	
}

function fsigin(){
	clear
	sleep 1
	echo "Sign-in"
	sleep 1
	clear
}

function fsigup(){
	clear
	sleep 1
	echo "Sign-up"
	sleep 1
	clear
}

##OPTION
function option(){
	case $op in
		"a" | "[a]" | "Sign-in")
			fload $adload
			fsigin
			;;
		"b" | "[b]" | "Sign-up")
			fload $adload
			fsigup
			;;
		"c" | "[c]" | "Exit")
			fload $adexit
			clear
			;;
		*)
			clear
			sleep  1
			clear
			main
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
