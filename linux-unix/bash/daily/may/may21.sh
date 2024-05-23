#!/usr/bin/env bash


##GLOBAL VARIABLES
know_os=$(uname -o)
##BANNER
function banner(){
	echo "	MyLazyMux"
	echo "	By-EnriLion"
	echo ""
}

##MENUS
function menu_android(){
	echo "[Choose options]"
	echo "[a]Vim"
	echo "[b]Other"
	echo "[c]Exit"
	echo ""
}
# Linux
# Debian
# Fedora
# Redhat

##FUNCTIONS

function recogn_os(){
	if [ $know_os = "Android" ];then
		clear
		sleep 1
		echo "You're operating system is $know_os"
	elif [ $know_os = "GNU/Linux" ];then
		clear
		sleep 1
		echo "You're operating system is $know_os"
	elif [ $know_os = "WSL" ];then
		clear
		sleep 1
		echo "You're operating system is $know_os"
	fi
}

##MAIN
function main(){
	banner
	recogn_os
}
main
