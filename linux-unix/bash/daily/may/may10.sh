#!/bin/bash

##COLOR ANSI
# green=""
# black=""
# white=""
# bold=""
# flick=""

##GLOBAL VARIABLES
declare -r advbye="Wrong Checkout the manual..."
declare -r advload="Loading..."
declare -r advexit="Exit..."
user=$(jq -r '.user' may10.json)
name=$(jq -r '.name' may10.json)
email=$(jq -r '.email' may10.json)
password=$(jq -r '.password' may10.json

##BANNER
function banner() {
	clear
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

##LOADING 
function funcloading(){
	v="$1"
	for i in {70..100..10}
	do
		clear
		echo -ne $v$i"%"
		sleep 1
	done
	clear
}

function funcsignin(){
	printf "user: "
	read ussr
	printf "password: "
	read pssrd
	if [ $ussr == $user ] && [ $pssrd == $password ];then
		clear
		sleep 1
		enrisoft
	else
		clear
		funcloading $advbye
		main
	fi
}

function funcsignup(){
	printf "name: "
	read nme 
	printf "user: "
	read ussr
	printf "email: "
	read eml
	printf "password: "
	read pssrd
}

##OPTION
function option(){
	case $op in
		"a" | "[a]" | "Sign-in" | "SIGN-IN")
			clear
			funcloading $advload
			funcsignin
			;;
		"b" | "[b]" | "Sign-up" | "SIGN-UP")
			clear
			funcloading $advload
			funcsignup
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			clear
			funcloading $advexit
			;;
		*)
			clear
			funcloading $advbye
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
