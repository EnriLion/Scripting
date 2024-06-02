#!/usr/bin/env bash

##GLOBAL VARIABLES
##BANNER
function banner(){
	echo "	MyLazymux"
	echo "	By-EnriLion"
	echo ""
}


##MENU

#MENU_ANDROID
function menu_android(){
	echo "	[Choose options] -1/2"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

#SEC_MENUANDROID
function menu_androidtwo(){
	echo "	[Choose options] -2/2"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""

}

##MAIN
function main(){
	banner
	menu_android
	printf "Option: "
	read op 
	option $op
}

main
