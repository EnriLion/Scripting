#!/bin/bash
##COLOR ANSI

##GLOBAL VARIABLES
nos=$(uname -o)
##BANNER
function banner(){
	echo "	MyLazyVim"
	echo "	By-EnriLion"
	echo "	"
}
##FUNCTION 
function fsecops(){
	printf "That is your operating system Y/y[Yes] or N/n[No]:"
	read opans
	if [ $opans == "y"] || [ $opans == "Y" ] || [ $opans == "Yes" ] || [ $opans == "YES" ];then 
		clear
		sleep 1
		echo "Ok..."
		sleep 1
		clear
		sleep 1
		echo "Redirecting..."
		sleep 1
		clear
	elif [ $opans == "n"] || [ $opans == "N" ] || [ $opans == "No" ] || [ $opans == "No" ];then 	
		clear
		sleep 1
		banner
		echo "	[Choose options]"
		echo "	[a]Linux"
		echo "	[b]WSL"
		echo "	[c]Macos"
		echo "	[d]Android"
		echo "	[e]Other"
		echo ""
		printf "Option: "
		read anotop
	fi
}

##OS
function fos(){
	if [ $nos = "GNU/Linux" ];then
		sleep 1
		echo "Your Operating System is $nos"
		fsecops
	elif [ $nos = "Debian" ];then
		echo "Your Operating System is $nos"
		fsecops
	elif [ $nos = "WSL" ];then
		echo "Your Operating System is $nos"
		fsecops
	else
		fsecops
	fi
}

##MENUS
function menu(){
	echo "	[Choose options]"
	echo "	[a]Vim"
	echo "	[b]Neovim"
	echo "	[c]Exit"
	echo "	"
}

##OPTIONS
function option(){
	case $opt in
		"a" | "A" | "Vim" | "VIM")
			clear
			sleep 1
			echo "	You chose VIM"
			echo "	Downloading for git..."
			echo "Don't worry I got you"
			;;
		"b" | "B" | "Neovim" | "VIM")
			clear
			sleep 1
			echo "	You chose NEOVIM"
			echo "Downloading for git..."
			echo "Don't worry I got you"
			;;
		"c" | "C" | "Exit" | "EXIT")
			clear
			sleep 1
			echo "Bye.. Se you..."
			sleep 1
			exit 0
			;;
	esac
}


##MAIN
function main(){
	banner
	fos
	banner
	menu
	printf "Option: "
	read opt
	option $opt
}
main
