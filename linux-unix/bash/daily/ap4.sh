#!/bin/bash

##Colors ANSI
cbold='\e[1m'
creset='\e[0m'
cblink='\e[5m'
cred='\e[0;31m'
cgreen='\e[0;32m'

##Banner
banner(){
	echo -e "${cbold}${cblink}	MyLazymux"
	echo -e "	By EnriLion${creset}"
	echo "	"
}

##Menu
menu(){
	echo -e "${cbold}	[Choose option]"
	echo -e "	[a] Update"
	echo -e "	[b] Remove"
	echo -e "	[?] Instructions"
	echo -e "	[0] Exit${creset}"
	echo "	"
}

##Options
options(){
	if [ $op == "?" ] || [ $op == "[?]" ] || [ $op == "Instructions" ];then
		clear
		echo -e "${cgreen} Redirecting to manual instructions"
		sleep 1
		clear
	elif [ $op == "0" ] || [ $op == "[0]" ] || [ $op == "Exit" ];then
		clear
		echo -e "${cred}Exit"
		sleep 1
		clear
	else
		case $op in 
			"a" | "[a]" | "Update")
				echo ""
				;;
			"b" | "[b]" | "Remove")
				echo ""
				;;
			*)
				clear
				echo -e "	${cred}Redirecting to main menu${creset}"
				echo -e "	${cred}Read the manual..${creset}"
				sleep 1
				clear
				main
				;;
		esac
	fi
}

##Main
main(){
	banner
	menu
	printf "${cbold}Option: ${creset}"
	read op
	options $op
}
main
