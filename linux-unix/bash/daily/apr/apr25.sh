#!/bin/bash

##COLORS ANSI


##GLOBAL VARIABLES
name=$(jq -r '.name' apr25.json)
user=$(jq -r '.user' apr25.json)
email=$(jq -r '.email' apr25.json)
password=$(jq -r '.password' apr25.json)

##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo "	"
}

##APLICATIONS
enrisoft(){
	clear
	echo "Welcome EnriSoft"
}

##OPERATIONS
function opsignin(){
	if [ $usr == $user ] && [ $pssd = $password ];then
		enrisoft
	else
		clear
		sleep 1
		echo "Sorry you are wrong!"
		echo "Redirecting...to the menu"
		sleep 1
		clear
		main
	fi
}

function opsignup(){
	if [ $usr == $user ] && [ $pssd == $password ] && [ $nme == $name ] && [ $eml == $email ];then
		clear
		sleep 1
		echo "This user already exist!"
		echo "Redirecting...to the sign-in"
		sleep 1
		clear
		fsgnin
	elif [ $usr == $user ] || [ $pssd == $password ] || [ $nme == $name ] || [ $eml == $email ];then
		clear
		sleep 1
		echo "This user already exist!"
		echo "Redirecting...to the sign-in section"
		sleep 1
		clear
		fsgnin
	else
		clear
		sleep 1
		echo "Everything is stored"
		sleep 1
		clear 
		main
	fi

}

##FUNCTIONS
function fsgnin(){
	echo "	Sign-in"
	echo "	"
	printf "user:"
	read usr
	printf "password:"
	read pssd
	opsignin $usr $pssd
}

function fsgnup(){
	echo "	Sign-up"
	echo "	"
	printf "name:"
	read nme
	printf "email:"
	read eml
	printf "user:"
	read usr
	printf "password:"
	read pssd
	opsignup $nme $eml $usr $pssd
}

##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo "	"
}

##OPTION
function option(){
	case $optn in
		"a")
			clear
			sleep 1
			fsgnin
			;;
		"b")
			clear
			sleep 1
			fsgnup
			;;
		"c")
			clear
			sleep 1
			echo "Bye..."
			;;
		*)
			clear
			sleep 1
			echo "Redirecting..."
			;;
	esac
}

##MAIN
function main(){
	banner
	menu
	printf "Option:	"
	read optn
	option $optn
}
main
