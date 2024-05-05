#!/bin/bash


##COLOR ANSI

##PUBLIC VARIABLES
user=$(jq -r '.user' may3.json)
name=$(jq -r '.name' may3.json)
email=$(jq -r '.email' may3.json)
password=$(jq -r '.password' may3.json)

##BANNER
function banner(){
	clear
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo ""
}

##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-up"
	echo "	[b]Sign-in"
	echo "	[c]Exit"
	echo ""
}

##ENRISOFT
function enrisoft(){
	banner
	echo "Welcome $user"
}

##FUNCTIONS
function funcsignup(){
	clear
	echo "	Sign-up"
	echo ""
	printf "user: "
	read uss
	printf "password: "
	read pss
	if [ $uss == $user ] && [ $pss == $password ];then
		clear
		echo -ne  '####          (33%)\r'
		sleep 1
		echo -ne '########      (66%)\r'
		sleep 1
		echo -ne '#############(100%)\r'
		echo -ne '\n'
		sleep 1
		clear
		sleep 1
		enrisoft
	else
		clear
		sleep 1
		echo "You are wrong"
		sleep 1
		clear
		# main
	fi
}

function funcsignin(){
	clear
	echo "	Sign-in"
	echo ""
	printf "name: "
	read nm 
	printf "email: "
	read em 
	printf "user: "
	read uss
	printf "password: "
	read pss
	if [ $uss == $user ] && [ $pss == $password ] && [ $nm == $name ] && [ $em == $email ] || [ $uss == $user ] || [ $pss == $password ] || [ $nm == $name ] || [ $em == $email ];then
		clear
		sleep 1
		echo "Hey are you wrong this is not the section of sign-in"
		echo "Or the user exist."
		sleep 1 
		funcsignin
		clear
	elif [ $uss != $user ] && [ $pss != $password ] && [ $nm != $name ] && [ $em != $email ] || [ $uss != $user ] || [ $pss != $password ] || [ $nm != $name ] || [ $em != $email ];then
		#Functions
		clear
		sleep 1
		echo "Database stored"
	else
		sleep 1
		echo "You are wrong..."
		sleep 1
		clear
		main
	fi
}

##OPTION
function option(){
	case $opt in
		"a" | "[a]" | "Sign-up")
			clear
			funcsignup
			;;
		"b" | "[b]" | "Sign-in")
			clear
			funcsignin
			;;
		"c" | "[c]" | "Exit")
			clear
			echo "Exit"
			;;
		*)
			clear
			main
			;;
	esac
}

##MAIN
function main(){
	banner
	menu
	printf "Option: "
	read opt
	option $opt
}

main
