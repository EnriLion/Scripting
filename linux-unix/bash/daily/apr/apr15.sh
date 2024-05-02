#!/bin/bash


##Colors ANSI

##Banner
function banner(){
	echo "	EnriSoftware"
	echo "	By-EnriLion"
	echo "	"
}

function login(){
	clear
	sleep 1
	printf "	user: "
	read us
	printf "	password:"
	read pass
}

function signin(){
	clear
	sleep 1
	printf "	email:"
	read em
	printf "	user:"
	read usr
	printf "	password:"
	read psswd
}

##Menu
function menu(){
	echo "	[Choose options]"
	echo "	[a]Login"
	echo "	[b]Sign-in"
	echo "	[x]Exit"
	echo "	"
}

##Option
function options(){
	if [ $opt = "x" ];then
		clear
		sleep 1
		echo "Bye.."
		sleep 1
		exit 0
	else
		case $opt in
			"a")
				clear
				login
				;;
			"b")
				clear
				signin
				;;
			*)
				clear
				echo "You are wrong"
				sleep 1
				clear
				main
				;;
		esac
	fi
}

##Main
function main(){
	banner
	menu
	printf "Option:	"
	read opt
	options $opt
	
}

main
