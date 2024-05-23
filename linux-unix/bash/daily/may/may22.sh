#!/usr/bin/env bash


##COLOR ANSI
know_os=$(uname -o)
declare variable_os="Your operating system is $know_os"

##BANNER
function banner(){
	echo "	Mylazymux"
	echo "	By-EnriLion"
	echo ""
}


##MENU
function menu_android(){
	echo "	[Choose options] - Android[1/2]"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

function sec_mendroid(){
	echo "	[Choose options] - Android[2/2]"
	echo "	[a]Neovim"
	echo "	[b]Neovim"
	echo "	[c]Exit"
	echo ""
}

##FUNCTIOS

function function_cont(){
	clear
	if [[ -v variable_os ]];then
		echo "	"$variable_os
	fi
	echo "	Continue Y/y[yes] or N/n[no]"
	printf "Option: "
	read ans
	case $ans in
		"y" | "Y" | "[yes]" | "[YES]" | "yes" | "YES" )
			clear
			;;
		"n" | "N" | "[no]" | "[NO]" | "no" | "NO" )	
			clear
			echo "Bye..."
			exit 0
			;;
	esac
}

function function_os(){
	if [ $know_os = "Android" ];then
		sleep 1
		function_cont $variable_os
		#loading screen
		menu_android
		prinft "Option: "
	elif [ $know_os = "GNU/Linux" ];then
		sleep 1
		function_cont $variable_os
		#loading screen
		clear
		banner
		menu_android
		prinft "Option: "
	elif [ $know_os = "WSL" ];then
		clear
		sleep 1
		function_cont $variable_os
		#loading screen
	fi
}

##OPTION
function option_android(){
	case $op in
		"a" | "[a]" | "A" | "[A]" | "vim" | "VIM")
			clear
			echo "Vim"
			;;
		"b" | "[b]" | "B" | "[B]" | "other" | "OTHER")
			clear
			echo "Other"
			;;
		"c" | "[c]" | "C" | "[C]" | "exit" | "EXIT")
			clear
			echo "Exit"
			;;
		*)
			main
			;;
	esac
}

##MAIN
function main(){
	banner
	# echo $know_os
	function_os
	# menu_android
	# printf "Option: "
	# read op
	# option_android $op
}

main

