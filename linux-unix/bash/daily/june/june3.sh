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
			echo "This is your operating system are you still want to continue? your operating system is $know_os"
			echo "You want to proceed Y/y[Yes] or N/n[Not]"
			read  answproc
			;;
		"Android")
			screen_load
			clear
			echo "This is your operating system are you still want to continue? your operating system is $know_os"
			echo "You want to proceed Y/y[Yes] or N/n[Not]"
			read  answproc
			;;
		*)
			clear
			echo "Sorry we aren't supporting that operating system yet"
			;;
	esac
}


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
function menu_and(){
	echo "	[Choose options] -1/2"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}


##MAIN
function main(){
	banner
	function_knowop
}

main
