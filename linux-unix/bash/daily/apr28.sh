#!/bin/bash
##COLOR ANSI

##GLOBAL VARIABLES
nos=$(name -o)

##BANNER
function banner(){
	echo "	MyLazyVim"
	echo "	By-EnriLion"
	echo "	"
}

##MENU
function menu(){
	echo "	(Choose options)"
	echo "	(a)Vim"
	echo "	(b)Neovim"
	echo "	(c)Exit"
	echo "	"
}

##

##OS
function fopsystem(){
	if [ $nos = "Android"];then 
		echo "Your operating system is $nos"
		echo "Your operating system is correct?[Yes/y] or [No/no]"
		read unkcorrect
		if [ $unkcorrect == "Yes"] || [ $unkcorrect == "y" ];then 
			clear
			sleep 1
			echo "Ok then you are ready to proceed "
		elif [ $unkcorrect == "No"] || [ $unkcorrect == "no" ];then 
			clear
			sleep 1
			echo "Ok bye"
		fi
		echo "For that reason is ideal to use Vim do you still want to use Neovim"
	elif [ $nos = "GNU/Linux"];then 
		echo "Your operating system is $nos"
	fi
}

##MENU
function option(){
	if [ $opt = "a" ];then
		clear
		echo "Vim"
	elif [ $opt = "b" ];then
		clear
		echo "Neovim"
	elif [ $opt = "c" ];then
		clear
		echo "Exit"
	fi
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
