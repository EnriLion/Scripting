#!/bin/bash

##Banner
function banner(){
	echo "	Scripting Mar 21 2024"
	echo "My Termux Lazy"
	echo "	By- EnriLion"
	echo "	"
}

##

##Menu
function menu(){
	echo "	[Choose option]"
	echo "	a) Development"
	echo "	b) Scripting"
	echo "	d) Choosing option"
	echo "	c) All"
	echo "	d) Quit"	
}

##Selecting
function selectop(){
	if [[ $opsel == "c" ] || [ $opsel == "C"] || [ $opsel == "All"] || [ $opsel == "ALL" ]]
	then	
		echo "You select option $opsel"
	elif [[ $opsel == "b" ] || [ $opsel == "B"] || [ $opsel == "Development"] || [ $opsel == "DEVELOPMENT" ]]
		echo "You select option $opsel"
	else 
		break
	fi
}


##Main
function main(){
	banner
	menu
	read opsel
	selectop $opsel
	
}

main

