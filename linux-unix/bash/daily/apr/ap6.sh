#!/bin/bash

##Colors ANSI

##Banner
function banner(){
	echo "	Mylazymux"
	echo "	By-EnriLion"
	echo "	"
}

##Menu
function menu(){
	echo "	[Choose option]"
	echo "	[a] Update"
	echo "	[b] Remove"
	echo "	[c] All"
	echo "	[?] Manual"
	echo "	[0] Exit"
	echo "	"

}

##Options
function opts(){
	if [ $op = "?" ] || [ $op = "[?]" ] || [ $op = "Manual" ] || [ $op = "MANUAL" ] ;then
		echo "Redirecting to manual"
	elif [ $op = "0" ] || [ $op = "[0]" ] || [ $op = "Exit" ] || [ $op = "EXIT" ] ;then
		echo "Bye..."
	fi
}

##Main
function main(){
	banner
	menu
	printf "Option:	"
	read op
	opts $op
}
main
