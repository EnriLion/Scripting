#!/bin/bash


##GLOBAL VARIABLES
adexit=$( echo -ne "Exit... $c \r" )
adload=$( echo -ne "Loading... $c \r" )
adbye=$( echo -ne "Bye... $c \r" )
##COLOR ANSI
# red=''
# green=''
# flick=''
# bold=''

##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo ""
}

##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo ""
}

##FUNCTIONS
function funcloadi(){
	c=60
	v="$1"
	while [  $c -le 99 ];
	do
		c=$(( $c + 10 ))
		clear
		echo -ne $v $c
		sleep 1
		clear
	done
}

##OPTION
function option(){
	case $op in
		"a" | "[a]" | "Sign-in" | "SIGN-IN")
			clear
			funcloadi $adload
			clear
			echo "Sign-in"
			;;
		"b" | "[b]" | "Sign-up" | "SIGN-UP")
			clear
			funcloadi $adload
			clear
			echo "Sign-up"
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			clear
			funcloadi $adexit
			clear
			echo "Exit"
			;;
		*)
			clear
			funcloadi $adbye
			clear
			exit 0
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
