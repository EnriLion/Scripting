#!/bin/bash
#
##COLOR ANSI 
colorgreen='\e[32m'
colorred='\e[31m'
colorwhite='\e[37m'
colorflick='\e[5m'
colorreset='\e[0m'
colorbold='\e[1m'

##BANNER
function banner(){
	echo -e "${colorflick}${colorwhite}${colorbold}	Mylazyvim"
	echo -e "	By-EnriLion ${colorreset}"
	echo -e ""
}


##FUNCTIONS
function fvim(){
	echo "Vim"
}

function fneovim(){
	echo "Neovim"
}

##MENU
function menu(){
	echo -e "${colorwhite}${colorbold}	[Choose options]"
	echo -e "	[a]Vim"
	echo -e "	[b]Neovim"
	echo -e "	[c]Exit ${colorreset}"
	echo ""
}

##

##OPTION
function option(){
	case $opn in
		"a" | "[a]" | "Vim")
			clear
			fvim
			;;
		"b" | "[b]" | "Neovim")
			clear
			fneovim
			;;
		"c" | "[c]" | "Exit")
			clear
			sleep 1
			echo "Bye..."
			sleep 1
			clear
			;;

		*)
			clear 
			sleep 1
			echo -e "${colorred}${colorbold}Wrong..."
			echo -e "Read the manual...${colorreset}"
			sleep 1
			clear 
			main
			;;
	esac
}

##MAIN
function main(){
	banner
	menu
	printf "${colorwhite}${colorbold}Option:	${colorreset}"
	read opn
	option $opn
}

main
