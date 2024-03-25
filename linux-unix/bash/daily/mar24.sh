#!/bin/bash

##Banner
function banner(){
	echo "	Mar 24 2024"
	echo "	MyTermuxLazy"
	echo "	"
}

##Menu
function menu(){
	echo "	[Chose options]"
	echo "	[1) Development]"
	echo "	[2) Scripting]"
	echo "	[3) Everything]"
	echo "	[4) Choose option]"
	echo "	[0) Exit]"
	echo "	[?) How to use?]"
	echo "	"
}

##Option?
function whscript(){
	clear
	echo "	 Are you sure you want to continue?"
	echo "	y/Y or n/N"
	read opwhscript
	if [[ $opwhscript = "y" ]];then
		echo "welcome  yes"
	elif [[ $opwhscript = "n" ]];then
		echo "welcome  nop"
	else
		echo "error"
		exit 0
	fi
}

##Option
function option(){
	if [[ $op = "?" ]]; then
		clear
		sleep 2
		whscript
	elif [[ $op = "0" ]]; then
		clear
		sleep 2
		echo "Bye ...."
		exit 0
	else	
		case  $op in 
			1)
				echo "	Development"
				;;
			2)
				echo "	Scripting"
				;;
			3)
				echo "	Everything"
				;;
			4)
				echo "	Choose option"
				;;
			*)
				clear
				echo "	You are wrong!..."
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
	read -p "Option:" op
	option op
}
main
