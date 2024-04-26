#!/bin/bash

##COLORS ANSI
colorflick=""
colorwhite=""
colorbold=""
colorreset=""
colorred=""
colorgreen=""

##GLOBAL VARIABLES

name=$(jq -r '.name' apr27.json)
username=$(jq -r '.username' apr27.json)
password=$(jq -r '.password' apr27.json)
email=$(jq -r '.email' apr27.json)

##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo "	"
}

##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo "	"
}

##ENRISOFT
function enrisoft(){
	clear
	echo "	Enrisoft"
}

##OPERATIONS
function opfsignin(){
	if [ $usr == $username ] && [ $pssd == $password ];then
		clear
		enrisoft
	else
		clear
		sleep 1
		echo "You are wrong!..."
		sleep 1
		clear
		main
	fi
}

function opfsignup(){
	if [ $eml == $email ] && [ $nm == $name ] && [ $usr == $username ] && [ $pssd == $password ];then
		clear
		sleep 1
		echo "You are wrong!..."
		echo "Already existed in the database"
		sleep 1
		clear
		main
	elif [ $eml == $email ] || [ $nm == $name ] || [ $usr == $username ] || [ $pssd == $password ];then
		clear
		sleep 1
		echo "You are wrong!..."
		echo "Already existed in the database"
		sleep 1
		clear
		main
	else
		clear
		sleep 1
		echo "Everything is stored in the database"
		sleep 1
		fstored $eml $nm $usr $pssd 
	fi

}

##FUNCTIONS

function fstored(){
	# get variables name, username, password, email
	# after that update in apr27.json
	clear 
	main
}

function fsignin(){
	echo "	Sign-in"
	echo ""
	printf "username: "
	read usr
	printf "password: "
	read pssd
	opfsignin $usr $pssd
}

function fsignup(){
	echo "	Sign-up"
	echo ""
	printf "name: "
	read nm
	printf "email:"
	read eml
	printf "username: "
	read usr
	printf "password: "
	read pssd
	opfsignup $nm $eml $usr $pssd
}

##OPTION
function option(){
	if [ $opn == "a" ] || [ $opn == "[a]" ] || [ $opn == "Sign-in" ];then
		clear
		fsignin
	elif [ $opn == "b" ] || [ $opn == "[b]" ] || [ $opn == "Sign-up" ];then
		clear
		fsignup
	else
		clear
		echo "	Exit"
	fi
}

##MAIN
function main(){
	banner
	menu
	printf "Option: "
	read opn
	option $opn
}

main

