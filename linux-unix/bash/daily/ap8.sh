#!/bin/bash

##Color ANSI
cblink="\e[5m"
cgreen="\e[0;32m"
creset="\033[m"
cred="\e[0;31m"


##Banner
banner(){
	echo -e "	${cblink}Mylazymux"
	echo -e "	By-EnriLion${creset}"
	echo "	"
}

##Menu
menu(){
	echo "	[Choose options]"
	echo "	[a]Updating"
	echo "	[b]Removing"
	echo "	[c]All"
	echo "	[d]Choose"
	echo "	[?]Instructions"
	echo "	[0]Quit"
	echo "	"
}

##Functions
funcupd(){
	clear
	echo -e "${cgreen}	Updating...${creset}"
	sleep 1
	clear
}

funcremove(){
	clear
	echo -e "${cred}	Removing...${creset}"
	sleep 1
	clear

}

funcall(){
	clear
	echo -e "${cgreen}	All...${creset}"
	sleep 1
	clear

}

funchoose(){
	clear
	echo -e "${cgreen}	Choose what packages...${creset}"
	sleep 1
	clear
}

##Option
option(){
	if [ $op == "0" ] || [ $op == "[0]" ] || [ $op == "Quit" ] || [ $op == "QUIT" ];then
		echo "	Quit"
	elif [ $op == "?" ] || [ $op == "[?]" ] || [ $op == "Instructions" ] || [ $op == "INSTRUCTIONS" ];then
		echo -e "	Learn about this manual..."
	else
		case $op in
			"a" | "[a]" | "Updating" | "UPDATING" )
				funcupd
				;;
			"b" | "[b]" | "Removing" | "REMOVING" )
				funcremove
				;;
			"c" | "[c]" | "All" | "ALL" )
				funcall
				;;
			"d" | "[d]" | "Choose" | "CHOOSE" )
				funchoose
				;;
			*)
				clear
				echo -e "${cred}	Wrong..."
				echo -e "${cred}	Back to the menu...${creset}"
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
	printf "Select option: "
	read op
	option $op
}
main
