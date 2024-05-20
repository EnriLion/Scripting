#!/usr/bin/env bash


##GLOBAL VARIABLES

user=$(jq -r '.user' may18.json)
name=$(jq -r '.name' may18.json)
email=$(jq -r '.email' may18.json)
password=$(jq -r '.password' may18.json)

##COLORS ANSI
##BANNER
function banner(){
	echo "	EnriLion"
	echo "	By-EnriLion"
	echo ""
}

##MENU
function menu(){
	echo "	[Choose development]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo ""
}

##ENRISOFT
function enrisoft(){
	echo "Welcome $user to EnriSoft"
}

##FUNCTION
function func_signin(){
	printf "user: "
	read usr
	printf "password: "
	read psd
	if [ $user = $usr ] && [ $password = $psd ];then
		enrisoft
	else
		clear
		main
	fi
}

function func_signup(){
	printf "name:"
	read nme
	printf "user: "
	read usr
	printf "email:"
	read eml
	printf "password: "
	read psd

}

##OPTION
function option(){
	case $op in
		"a" | "A" | "Sign-in" | "SIGN-IN")
			clear
			sleep 1
			echo "Loading"
			sleep 1
			clear
			func_signin
			;;
		"b" | "B" | "Sign-up" | "SIGN-UP")
			clear
			sleep 1
			echo "Loading"
			sleep 1
			clear
			func_signup
			;;
		"c" | "C" | "Exit" | "EXIT")
			clear
			sleep 1
			echo "Loading"
			sleep 1
			clear
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
	read op
	option $op
}

main
