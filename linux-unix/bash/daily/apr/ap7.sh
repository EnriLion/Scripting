#!/bin/bash


##Color ANSI
cgreen='\e[0;32m'
cred='\e[0;31m'
cwhite='\e[0;37m'
cwhfl='\e[5m'
creset='\033[m'

##Functions
funcdev(){
	clear
	echo -e "${cgreen}Updating..."
	sudo apt update
	exit 0
}

funcscrip(){
	clear
	echo -e "${cgreen}Updating..."
	sudo apt update
	exit 0
}

funcall(){
	clear
	echo -e "${cgreen}Updating..."
	sudo apt update
	exit 0

}

funcexit(){
	clear
	echo -e "${cred}Bye..."
	sleep 1
	clear
	echo -e "${cred}Bye.."
	sleep 1
	clear
	echo -e "${cred}Bye."
	sleep 1
	clear

}
##Banner
banner(){
	echo -e "${cwhfl}Mylazymux"
	echo -e "By - EnriLion${creset}"
	echo "	"
}

##Menu
menu(){
	PS3="Enter a number: "
	select ch in Development Scripting All Exit 
	do    
		# if [[ $ch -eq "Development" ]];then
		# 	echo "You choose $ch"
		# 	break
		# elif [[ $ch -eq "Scripting" ]];then
		# 	echo "You choose $ch"
		# 	break
		# elif [[ $ch -eq "All" ]];then
		# 	break
		# elif [[ $ch -eq "Exit" ]];then
		# 	echo "You choose $ch"
		# 	break
		# fi
		case $ch in
			"Development")
				funcdev
				;;
			"Scripting")
				funcscrip
				;;
			"All")
				funcall
				;;
			"Exit")
				funcexit
				;;
			*)
				clear
				sleep 1
				echo -e "${cred}Read the manual"
				echo -e "${cred}Redirecting...${creset}"
				sleep 1
				clear
				main
				;;
		esac
	done

}

main(){
	banner
	menu
}
main
