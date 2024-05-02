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
#Function of proceeding 
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

#Function of proceeding git
function funcprocgit(){
	if [ $gitans == "Y" ] || [ $gitans == "y" ] || [ $gitans == "yes" ] || [ $gitans == "YES" ];then
		clear
		echo "	[Choose options]"
		echo "	[a]Username"
		echo "	[b]Email"
		echo "	[c]Both"
		echo "	[d]Back"
		echo ""
		printf "Option: "
		read secoptgit
		case $secoptgit in
			"a" | "[a]" | "Username" | "username" | "USERNAME")
				clear
				printf "username: "
				read gituser
				;;
			"b" | "[b]" | "Email" | "email" | "EMAIL")
				clear
				printf "email: "
				read gitemail
				;;
			"c" | "[c]" | "Both" | "both" | "BOTH")
				clear
				printf "username: "
				read gituser
				clear
				printf "email: "
				read gitemail
				;;
			"d" | "[d]" | "Back" | "back" | "BACK")
				clear

				;;
		esac
	elif [ $gitans == "n" ] || [ $gitans == "N" ] || [ $gitans == "no" ] || [ $gitans == "NO" ];then
		clear
		sleep 1
		echo "Ok then proceed..."
		sleep 1
		clear
	fi
	
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
				apt install vim ; apt install git
				echo "Installling Git..."
				echo ""
				printf "What is your username in git: "
				read gituser
				printf "What is your email in git: "
				read gitemail
				echo "Your user is  $gituser"
				echo "Your user is  $gitemail "
				printf "Are you sure you want to continue y/y[Yes] or n/n[No]: "
				read gitans
				funprocgit $gitans
				git config --global user.name "$gituser"
				git config --global user.email "$gitemail"
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


