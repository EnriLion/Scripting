#!/bin/bash 

##Banner
function banner(){
	clear
	echo  "	Scripts mar 19"
	echo  "	Termux lazy"
	echo  " -EnriLion-"
	echo  "	"
}

##Menu
function optionslgs(){
	echo  " [Languages]"
	echo  "	"
	echo  "	Choose the language you know"
	echo  "	a)Spanish - Español"
	echo  "	b)English - Ingles"
	echo  "	c)Exit"
}

##
function chops(){
	if [[ $op = "a" ]];then
		clear
		bash spsetup.sh
	elif [[ $op = "b" ]];then
		clear
		bash ensetup.sh
	elif [[ $op = "c" ]];then
		clear
		echo "Bye... se you later"
		exit 0
	else
		echo "No is the correct option"
		sleep 2
		clear 
		main
	fi
}

##Main
function main(){
	banner
	optionslgs
	read op
	chops $op
}
main
