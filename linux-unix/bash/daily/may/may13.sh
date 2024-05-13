#!/bin/bash

##COLOR ANSI

# red
# white
# flick
# green
# bold

##GLOBAL VARIABLES
user=$(jq -r '.user' may13.json)
name=$(jq -r '.name' may13.json)
email=$(jq -r '.email' may13.json)
password=$(jq -r '.password' may13.json)

##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	-EnriLion"
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
			#loading stuff
			;;
		"b" | "[b]" | "Sign-up" | "SIGN-UP")
			clear
			#loading stuff
			;;
		"c" | "[c]" | "exit" | "EXIT")
			clear
			#loading bye
			exit 0
			;;
		*)
			#how to make a loop for only 3 times
			#if is choose one time 
	esac
}

##MAIN 
function main(){
	banner
	menu
	printf "Option: "
	read opn
	option $opn
}

main

