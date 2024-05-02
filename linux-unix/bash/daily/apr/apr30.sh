#!/bin/bash

##COLOR ANSI
os=$(uname -o)
##BANNER
function banner(){
	echo "	MyLazyVim"
	echo "	By-EnriLion"
	echo "	"
}

##FUNCTIONS

##KNOWOS
function knwos(){
	case $os in
		"GNU/Linux")
			printf "This is your operating system $os [Y/y]Yes or [N/n]No:  "
			read ans
			if [ $ans == "y" ] || [ $ans == "Y" ] || [ $ans == "yes" ] || [ $ans == "YES" ] || [ $ans == "Yes" ];then
				clear
				sleep 1
				echo "	Ok"
				echo "	Redirecting..."
				sleep 1
				clear
				optionlinux
			elif [ $ans == "n" ] || [ $ans == "N" ] || [ $ans == "no" ] || [ $ans == "NO" ] || [ $ans == "No" ];then
				clear
				sleep 1
				banner
				whichos
				printf "Option: "
				read optwo	
				optiontwo $optwo
			fi
			;;
		"Android")
			printf "This is your operating system $os [Y/y]Yes or [N/n]No:  "
			read ans
			if [ $ans == "y" ] || [ $ans == "Y" ] || [ $ans == "yes" ] || [ $ans == "YES" ] || [ $ans == "Yes" ];then
				clear
				sleep 1
				echo "	Ok"
				echo "	Redirecting..."
				sleep 1
				clear
				optionandroid
			elif [ $ans == "n" ] || [ $ans == "N" ] || [ $ans == "no" ] || [ $ans == "NO" ] || [ $ans == "No" ];then
				clear
				sleep 1
				banner
				whichos
				printf "Option: "
				read optwo	
				optiontwo $optwo
			fi
			;;
		"WSL")
			printf "This is your operating system $os [Y/y]Yes or [N/n]No:  "
			read ans
			if [ $ans == "y" ] || [ $ans == "Y" ] || [ $ans == "yes" ] || [ $ans == "YES" ] || [ $ans == "Yes" ];then
				clear
				sleep 1
				echo "	Ok"
				echo "	Redirecting..."
				sleep 1
				clear
				optionwsl
			elif [ $ans == "n" ] || [ $ans == "N" ] || [ $ans == "no" ] || [ $ans == "NO" ] || [ $ans == "No" ];then
				clear
				sleep 1
				banner
				whichos
				printf "Option: "
				read optwo	
				optiontwo $optwo
			fi
			;;
		*)
			print "Unknow operating system"
	esac
}

##OPTIONS
function optiontwo(){
	case $optwo in
		"a" | "[a]" | "Linux\Unix")	
			clear
			sleep 2
			echo "You choose Linux"
			echo "Warning: Remember that if this is not your os is not going to  work"
			sleep 2
			clear
			optionlinux
			;;
		"b" | "[b]" | "Macos")	
			clear
			sleep 2
			echo "Macos"
			echo "Warning: Remember that if this is not your os is not going to  work"
			sleep 2
			clear
			optionlinux
			;;
		"c" | "[c]" | "Windows(WSL)")	
			clear
			sleep 2
			echo "WSL"
			echo "Warning: Remember that if this is not your os is not going to  work"
			sleep 2
			clear
			optionwsl
			;;
		"d" | "[d]" | "Android")	
			clear
			sleep 2
			echo "WSL"
			echo "Warning: Remember that if this is not your os is not going to  work"
			sleep 2
			clear
			optionandroid
			;;
		"d" | "[d]" | "Other")	
			clear
			sleep 1
			echo "Sorry we don't know what other os you could be using"
			echo "Sorry"
			exit 0
			;;
	esac
}

function optionwsl(){
	banner
	wslmenu
	printf "Option: "
	read opnwsl

}

function optionlinux(){
	banner
	linuxmenu
	printf "Option: "
	read opnlinux

}

function optionandroid(){
	banner
	androidmenu
	printf "Option: "
	read opnandroid

}

##MENUS

function  whichos(){
	echo "	[Choose options]"
	echo "	[a]Linux\Unix"
	echo "	[b]Macos"
	echo "	[c]Windows(WSL)"
	echo "	[d]Android"
	echo "	[e]Other"
	echo "	"
}

function linuxmenu(){
	echo "	[Choose options]"
	echo "	[a]Neovim"
	echo "	[b]Vim"
	echo "	[c]Exit"
	echo "	"

}

function androidmenu(){
	echo "	[Choose options]"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo "	"
}

function wslmenu(){
	echo "	[Choose options]"
	echo "	[a]Neovim"
	echo "	[b]Exit"
	echo "	"
}

##MAIN
function main(){
	banner
	knwos

}

main
