#!/bin/bash

##COLOR ANSI

##Banner

##Variables
os_name=$(uname -o)
db_fdr_name=$(uname -a | cut -c7-12)


banner(){
	echo "	Mylazymux"
	echo "	By-EnriLion"
	echo "	"
	sleep 1
}

##Loading Animation

load_animation(){
	clear
	echo "	Loading..."
	sleep 1
}

##Knowing OS

knowos(){
	load_animation
	if [ $os_name = "GNU/Linux" ];then 
		clear
		echo "	You're operating system is Linux"
		sleep 2
		if [ $db_fdr_name = "debian" ];then
			clear
			echo "	You're distribution is Debian"
			sleep 2
			clear
			deb_opt
		elif [ $db_fdr_name = "fedora" ];then
			clear
			echo "	You're distribution is Fedora"
			sleep 1
			clear
		fi
	elif [ $os_name = "Android" ];then 
		echo "	You're operating system is Android Termux"
		ter_menu
	fi
}

##Menu
menu(){
	banner
	echo "	[Choose options]"
	echo "	[1]Development"
	echo "	[2]Scripting"
	echo "	[3]All"
	echo "	[4]Choose"
	echo "	[?]Manual"
	echo "	[0]Quit"
	echo "	"
}

deb_opt(){
	menu
}

##Options

##Main

main(){
	banner
	knowos
}
main
