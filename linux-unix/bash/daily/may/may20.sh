#!/usr/bin/env bash


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

##OPTION
function option(){
	case $op in
		"a" | "[a]" | "Sign-in" | "A" | "[A]" | "SIGN-IN")
			clear
			echo "Sign-in"
			;;
		"b" | "[b]" | "Sign-up" | "B" | "[B]" | "SIGN-UP")
			clear
			echo "Sign-up"
			;;
		"c" | "[c]" | "Exit" | "C" | "[C]" | "EXIT")
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
	read op
	option $op
}

main
