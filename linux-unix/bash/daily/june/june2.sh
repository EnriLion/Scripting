#!/usr/bin/env bash

##GLOBAL VARIABLES
know_os=$(uname -o)
BAR='▇'
##BANNER
function banner(){
	echo "	Mylazymux"
	echo "	By-EnriLion"
	echo ""
}

##FUNCTIONS
function function_knowop(){
	case $know_os in
		"GNU/Linux")
			##Loading screen
			echo $know_os
			;;
		"Android")
			##Loading screen
			echo $know_os
			;;
		*)
			clear
			echo "wrong"
			;;
	esac
}

function screen_load(){

}

##MENU
function menu(){
	echo "	[Choose options]"
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
