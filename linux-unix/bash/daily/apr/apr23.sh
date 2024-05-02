#!/bin/bash


##Color ANSI
colwhite="\e[0;37m"
colred="\e[0;31m"
colgreen="\e[0;32m"
colreset="\e[0m"

##Banner
function banner(){
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo ""
}

##Menu
function menu(){
	echo "	[Choose option]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo ""
}

##Functions
function fsignin(){
	clear
	sleep 1
	echo "sign-in"
}

function fsignup(){
	clear
	sleep 1
	echo "sign-up"
}

##Options
function option(){
	if [ $opt == 'a' ] || [ $opt == '[a]' ] || [ $opt == 'Sign-in'];then
		fsignin
	elif [ $opt == 'b' ] || [ $opt == '[b]' ] || [ $opt == 'Sign-up'];then
		fsignup
	elif [ $opt == 'c' ] || [ $opt == '[c]' ] || [ $opt == 'Exit'];then
		clear
		sleep 1
		echo "	exit..."
		sleep 1
		exit 0
	else
		clear 
		sleep 1
		printf "	${colred}You are wrong...${colreset}"
		sleep 1
		clear
		printf "	${colred}Redirecting to menu${colreset}"
		sleep 1
		clear
		main
	fi
}

##Main
function main(){
	banner
	menu
	printf "Option: "
	read opt
	option $opt
}

main
