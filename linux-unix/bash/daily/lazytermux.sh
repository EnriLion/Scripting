#!/bin/bash

##Colors ANSI
color_bold="\e[1m"
color_blinking="\e[5m"
color_green="\e[1;32m"
color_red="\e[1;31m"
color_reset="\e[0m"

##Banner
banner(){
	echo -e "${color_blinking}${color_bold}	Mylazymux"
	echo -e "	By-EnriLion"
	echo -e "	${color_reset}"
}

##Options

read_opt(){
	printf "Option: "
	read op
}


##Menus
menu(){
	echo "	[Choose options]"
	echo "	[a]Development"
	echo "	[b]Scripting"
	echo "	[c]More"
	echo "	[d]All"
	echo "	[?]Manual"
	echo "	[x]Exit"
	echo "	"
}

##Second Menu
second_menu(){
	echo "	[Choose options]"
	echo "	[e]News"
	echo "	[f]Cibersecurity"
	echo "	[g]All"
	echo "	[<<]Back"
	echo "	[?]Manual"
	echo "	[x]Exit"
	echo "	"
}


##Option
opt(){
	if [ $op = "?" ] || [ $op = "[?]" ] || [ $op = "Manual" ];then
		clear
		sleep 1
		echo "	Redirecting to manual..."
		sleep 1
	elif [ $op = "x" ] || [ $op = "[x]" ] || [ $op = "Exit" ];then
		clear
		sleep 1
		echo "	Exit..."
		sleep 1
		exit 0
	else
		case $op in
			"a")
				clear
				sleep 1
				echo "	Development"
				;;
			"b")
				clear
				sleep 1
				echo "	Scripting"
				;;
			"c")
				clear
				sleep 1
				banner
				second_menu
				read_opt
				second_opt $op

				;;
			"d")
				clear
				sleep 1
				echo "Warning.. read manual"
				echo "You are ready to proceed Y/N"
				echo "You chose all"
				;;
			*)
				clear
				echo "You are wrong read manual"
				echo "Redirecting..."
				sleep 2
				clear
				main
				;;
		esac
	fi
}

second_opt(){
	if [ $op = "?" ] || [ $op = "[?]" ] || [ $op = "Manual" ];then
		clear
		sleep 1
		echo "	Redirecting to manual..."
		sleep 1
	elif [ $op = "x" ] || [ $op = "[x]" ] || [ $op = "Exit" ];then
		clear
		sleep 1
		echo "	Exit..."
		sleep 1
		exit 0
	else
		case $op in
			"e")
				clear
				sleep 1
				echo "News"
				;;
			"f")
				clear
				sleep 1
				echo " Cibersecurity"
				;;
			"g")
				clear
				sleep 1
				echo "Warning.. read manual"
				echo "You are ready to proceed Y/N"
				echo "You chose all"
				;;
			"<<" | "Back" | "<" | "[<<]")
				clear
				main
				;;
			*)
				clear
				echo "You are wrong read manual"
				echo "Redirecting..."
				sleep 1
				main
				;;
		esac
	fi
}

##Main
main(){
	banner
	menu
	read_opt
	opt $op

}

main
