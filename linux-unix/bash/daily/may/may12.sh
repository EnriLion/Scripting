#!/bin/bash


##COLOR ANSI;
#GLOBAL VARIABLES
declare -r advbye="Redirecting to menu"
declare -r advload="Loading..."
declare -r advexit="Exit..."
optos=$(uname -o)

##BANNER
function banner(){
	clear
	echo "	MyLazyVim"
	echo "	By-EnriLion"
	echo ""
}

##KNOWOS
function knowops(){
	case $optos in
		"Android")
			menuandroid
			printf "Option: "
			read op
			optionandroid $op
			;;
		"GNU\Linux")
			menuandroid
			printf "Option: "
			read op
			optionandroid $op
			;;
	esac
}

##FUNCTION
function funcload(){
	v="$1"
	c=60
	while [ $c -le 90 ];
	do 
		c=$(( $c +10 ))
		clear
		echo -ne $c$v"%"
		sleep 1
	done
	clear
}

##MENU
function menuandroid(){
	echo "	[Choose options] -[Android 1-2]"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

function otroandroid(){
	echo "	[Choose options] -[Android 2-2]"
	echo "	[a]Neovim"
	echo "	[b]Back"
	echo "	[c]Exit"
	echo ""

}


##OPTION
function optionandroid(){
	case $op in
		"a" | "[a]" | "Vim" | "VIM")
			clear
			funcload $advload
			;;
		"b" | "[b]" | "Other" | "OTHER")
			clear
			funcload $advload
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			clear
			funcload $advexit
			;;
	esac
}

##MAIN
function main(){
	banner
	knowops
}

main
