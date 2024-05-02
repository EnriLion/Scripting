#!/bin/bash


##COLORANSI
kos=$(uname -o)

##GlOBALVARIABLES 

##BANNER
function banner(){
	clear
	echo "	MylazyVim"
	echo "	By-EnriLion"
	echo ""
}

##Functions
function funcproceed(){
	case $proc in
		"y" | "Yes" | "yes" | "YES" | "Y")
			;;
		"n" | "No" | "no" | "NO" | "N")
			clear
			main
			;;
	esac
}

##OS
function knowoperating(){
	if [ $kos = "Android" ];then
		echo "h"
	elif [ $kos = "GNU/Linux" ];then
		menuandroid
		printf "Option: "
		read ans
		option $ans 
	fi
}

##OPTION
function option(){
	# if [ -z "$kos" ];then
		case $ans in
			"a")
				clear
				echo "Updating..."
				pkg update ; pkg upgrade
				apt update ; apt ugprade
				echo "Installing Vim..."
				echo "Installling Git..."
				apt install vim ; apt install git
				git 
				;;
			"b")
				clear
				banner
				menuandroidsecond
				printf "Option: "
				read secans
				andoption $secans
				;;
			"c")
				clear
				sleep 1
				echo "	Bye..."
				sleep 1
				clear
				exit 0
				;;
			*)
				clear
				sleep 1
				echo "You  are wrong..."
				echo "Redirecting to menu..."
				sleep 1
				main
		esac
	# fi
}

function andoption(){
	case $secans in
		"a")
			clear
			sleep 1
			echo "Warning: Neovim is to heavy"
			printf "Do you want to proceed (y/Y)Yes or (N/n)No: "
			read proc
			funcproceed $proc
			clear
			echo "Neovim"
			;;
		"b")
			clear
			banner
			menuandroid
			printf "Option: "
			read ans
			option $ans
			;;
		"c")
			clear
			sleep 1
			echo "	Bye..."
			sleep 1
			clear
			exit 0
			;;
		*)
			clear
			sleep 1
			echo "You  are wrong..."
			echo "Redirecting to menu..."
			sleep 1
			main
	esac
	
}


##MENU
function menuandroid(){
	echo "	[Choose options -v.Termux] [1-2]"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

function menuandroidsecond(){
	echo "	[Choose options -v.Termux] [2-2]"
	echo "	[a]Neovim"
	echo "	[b]Back"
	echo "	[c]Exit"
	echo ""

}

##MAIN
function main(){
	banner
	knowoperating
}

main


