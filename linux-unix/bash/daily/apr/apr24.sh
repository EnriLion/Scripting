#!/bin/bash

##COLOR ANSI
colorwhite=""
colorreset=""

##PUBLIC VARIABLES
name=$(jq -r '.name' apr24.json)
user=$(jq -r '.user' apr24.json)
email=$(jq -r '.email' apr24.json)
password=$(jq -r '.password' apr24.json)

##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo ""
}

##FUNCTIONS

function funcsignin(){
	echo "Sign-in"
	echo ""
	printf "user:"
	read usr
	printf "password:"
	read pssd 
}

function funcsignup(){
	echo "Sign-up"
	echo ""
	printf "name:"
	read nme 
	printf "user:"
	read usr
	printf "email:"
	read eml
	printf "password:"
	read pssd 
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
	case $optn in
		"a")
			clear
			funcsignin
			;;
		"b")
			clear
			funcsignup
			;;
		"c")
			clear
			echo "Exit"
			;;
		*)
			clear
			echo "Bye"
			;;
	esac
}

##MAIN
function main(){
	banner
	menu
	printf "Option:"
	read optn
	option $optn
}

main
