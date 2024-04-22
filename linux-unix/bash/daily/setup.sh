#!/bin/bash

##COLOR  ANSI
##BANNER
function banner(){
	echo "	Enrisoft"
	echo "	By-EnriLion"
	echo "	"
}

##FUNCTIONS
function setneo(){
	clear
	sleep 1
	echo "	Neovim"
	sleep 1
	clear 
}

function setvim(){
	clear
	sleep 1
	echo "Downloading git"
	sleep 1
	clear
	apt install git 
	clear
	sleep 1
	echo "Setting up git"
	sleep 1
	clear
	clear
	sleep 1
	echo "	Downloading vim-plug"
	sleep 1
	clear
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	clear
	sleep 1
	echo "	Setting up through my lazyvim"
	sleep 1
	clear
	curl -O https://raw.githubusercontent.com/EnriLion/vimrc/5ca8325aee71e2bacd78b4140152d1bef3f31ff2/.vimrc

}

##MENU
function menu(){
	echo "	[Choose option]"
	echo "	[a]Neovim"
	echo "	[b]Vim"
	echo "	[c]Exit"
	echo "	"
}

##OPTION
function option(){
	case $opt in
		"a")
			clear
			setneo
			;;
		"b")
			clear
			setvim
			;;
		"c")
			clear
			sleep 1
			echo "	Exit..."
			sleep 1
			clear
			exit 0
			;;
		*)
			clear 
			sleep 1
			echo "Wrong option"
			sleep 1
			clear
			main
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
