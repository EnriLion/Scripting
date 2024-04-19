#!/bin/bash

##Color ANSI
color_blink="\e[5m"
color_bold="\e[1m"
color_white="\e[0;37m"
color_red="\e[31m"
color_green="\e[32m"
color_reset="\e[0m"

##Global variables
name=$(jq -r '.name' data.json)
user=$(jq -r '.user' data.json)
email=$(jq -r '.email' data.json)
password=$(jq -r '.password' data.json)
##Banner
banner(){
	echo -e "	${color_blink}SoftwareEnri"
	echo -e "	By-EnriLion"
	echo -e "	${color_reset}"
}

##Menu
menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[x]Exit"
	echo "	"
}

##Functions

comp(){
	if [ $nm == $name ] && [ $us == $user ] && [ $pss == $password ];then
		clear
		sleep 1
		echo "	Welcome $user"
		sleep 1
		clear
		enrisoft
	# elif [ $us = $user ];then
	# 	clear
	# 	sleep 1
	# 	echo "	Welcome $user"
	# 	sleep 1
	# 	clear
	# 	enrisoft
	# elif [ $pss = $password ];then
	# 	clear
	# 	sleep 1
	# 	echo "	Welcome $user"
	# 	sleep 1
	# 	clear
	# 	enrisoft
	else
		clear
		sleep 1
		echo "	Ups you are wrong in something"
		echo "	You are going to be redirected..."
		sleep 1
		clear
		main
	fi
}

enrisoft(){
	echo "	Welcome to EnriSoft" 
	echo "	The best software tool in the planet" 
}

signin(){
	echo "	Sign-in"
	echo "	"
	printf "name:"
	read nm
	printf "user:"
	read us
	printf "password:"
	read pss
	comp $nm $us $pss

}

signup(){
	echo "	Sign-up"
	echo "	"
	printf "name:"
	read nm
	printf "email:"
	read email
	printf "user:"
	read us
	printf "password:"
	read pss
}

#Options
options(){
	if [ $opt = "a" ];then
		clear
		sleep 1
		signin
	elif [ $opt = "b" ];then
		clear
		sleep 1
		signup
	elif [ $opt = "x" ];then
		clear
		sleep 1
		echo "Bye..."
		sleep 1
		clear
		exit 0
	fi

}

##Main
main(){
	banner
	menu
	printf "Option:"
	read opt
	options $opt
}

main
