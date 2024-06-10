#!/usr/bin/env bash

##GLOBAL VARIABLES
know_os=$(uname -o)
BAR='▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'


##BANNER
function banner(){
	echo "	Mylazymux"
	echo "	By-EnriLion"
	echo ""
}

##FUNCTIONS
#FUNCTION KNOWING OPERATING SYSTEM
function function_knowop(){
	case $know_os in
		"GNU/Linux")
			screen_load
			clear
			banner
			menu_linux_deb
			printf "Option: "
			read optmenu
			;;
		"Android")
			screen_load
			clear
			banner
			menu_and
			printf "Option: "
			read optmenu
			;;
		*)
			clear
			echo "Sorry we aren't supporting that operating system yet"
			;;
	esac
}

#FUNCTION SCREEN LOADING

#FUNCTION SCREEN LOADING
function screen_load(){
	c=10
	for i in {1..9}; do
		tput civis
		c=$((c+10))
		echo -ne "\r${BAR:0:$i}Loading - $c%"
		sleep 0.2
		tput cnorm
	done
}

##MENU

#MENU ANDROID
function menu_and(){
	echo "	[Choose options] -1/2"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

#MENU SECOND ANDROID
function menu_sec_and(){
	echo "	[Choose options] -2/2"
	echo "	[a]Neovim"
	echo "	[b]Back"
	echo "	[c]Exit"
	echo ""
}

#MENU LINUX DEBIAN BASED DISTROS
function menu_linux_deb(){
	echo "	[Choose options]"
	echo "	[a]Neovim"
	echo "	[b]VisualStudioCode"
	echo "	[c]Both"
	echo "	[c]Exit"
	echo ""
}

##MAIN
function main(){
	banner
	function_knowop
}

main
