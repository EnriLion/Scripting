#!/bin/bash

##Colors ANSI
red='\033[0;31m'
green='\033[1;32m'
white='\033[1;37m'
reset='\033[0m'
##Banner

function banner(){
	echo -e "	${white}Mylazymux${reset}"
	echo " "
}

##Menu

function menu(){
	echo "	[Choose options]"
	echo "	a] Updating files"
	echo "	b] Remove files"
	echo "	?] How to use ?"
	echo "	0] Exit" 
	echo "	"
}

function funcup(){
	clear
	sleep 2
	echo -e "	${green}We are going to update files${reset}"
	sleep 2
	sudo apt update
}
function funcdel(){
	clear
	sleep 2
	echo -e "	${red}We are going to delete files${reset}"
	sleep 2
	sudo apt update
}

##Exit
function funcexit(){
	clear
	sleep 2
	echo -e "${red}Bye...${reset}"
	sleep 1
	clear
	sleep 2
	echo -e "${red}Bye..${reset}"
	sleep 1
	clear
	sleep 2
	echo -e "${red}Bye.${reset}"
	sleep 1
	clear
	exit 0
}
##Options

function option(){
	if [[ $op = "0" ]];then
		funcexit
	elif [[ $op = "?" ]];then
		echo "Welcome how to use this"
		echo "Read the manual"
	else
		case $op in
			"a")
				funcup
				;;
			"b")
				funcdel
				;;
			*)
				echo -e "${red}Hey its wrong...${reset}"
				sleep 2
				echo -e "${red}You are going to be redirected...${reset}"
				sleep 2
				echo -e "${red}To the menu... read the documentation${reset}"
				sleep 2
				clear
				main
				;;
		esac
	fi
}

##Main

function main(){
	banner
	menu
	echo -n "Options: "
	read op
	option $op
}

main

