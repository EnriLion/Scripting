#!/bin/bash

##Colors ANSI
red='\033[0;31m'
green='\033[0;32m'
white='\033[1;37m'
bcwhite='\033[1;47m'
reset='\033[m'


##Banner
function banner(){
	echo -e "${white}	Lazymux${reset}"
	echo -e "${white}	By - EnriLion${reset}"
	echo "	"
}

##FunctionUpdating
function funcupd(){
	clear
	echo -e "	${green}Updating...${reset}"
	sudo apt update
}
##FunctionRemoving
function funcrm(){
	clear
	echo -e "	${red}Removing...${reset}"
	sudo apt update
}

##FunctionBye
function funcbye(){
		for n in {1..3}
		do
			clear
			echo -e " ${red}Bye in .. $n ${reset}"
			sleep 1
			((n++))
		done
		clear
		exit 0
}

##Menu
function menu(){
	echo "	[Choose one option]"
	echo "	[1] Updating"
	echo "	[2] Removing"
	echo "	[?] Manual"
	echo "	[0] Exit"
	echo "	"
}

##Option

function option(){
	if [ $op == "?" ] || [ $op == "[?]" ] || [ $op == "Manual" ];then
		clear
		echo "Redirecting to the manual"
		sleep 1
		clear
	elif [ $op == "0" ] || [ $op == "[0]" ] || [ $op == "Exit" ];then
		funcbye
	else
		case $op in
			1 | "Updating" | "[1]") 
				funcupd
				;;
			2 | "Removing" | "[2]") 
				funcrm
				;;
			*)
				echo -e "${red}You are wrong${reset}"
				echo -e "${red}Read the manual${reset}"
				sleep 1
				clear
				main
		esac
	fi
}

##Banner
function main(){
	banner
	menu
	printf "${white}Option: ${reset}"
	read op
	option $op
}

main
