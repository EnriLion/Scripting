#!/bin/bash


##Banner

function banner(){
	echo "	Apri1"
	echo "	EasyScript"
	echo ""
}


##ExitFunction

function funcexit(){
	for n in {1..3}
	do 
		sleep 1
		echo "	Exiting in ... $n"
		sleep 2
		clear
	done
	exit 0
}

##FunctionUpdate

function funcup(){
	echo "Updating files"
	echo "Needing of root permision"
	sudo apt update 
	clear 
}

##FunctionRemove

function funcrm(){
	echo "Removing files"
	echo "Needing of root permision"
	sudo apt update
	clear

}

##Menu

				
function menu(){
	echo "	[Select options]"
	echo "	a)Updating repository"
	echo "	b)Remove repository"
	echo "	?)How to use it?"
	echo "	0)Exit"
	echo "	"
}

##Option

function option(){
	clear
	if [[ $op == "?" ]];then
		echo "	Welcome to ?"
	elif [[ $op == "0" ]];then
		funcexit
	else
		case $op in
			"a")
				funcup
				;;
			"b")
				funcrm
				;;
			*)
				break
				;;
		esac
	fi
}

##Main

function main(){
	banner
	menu
	echo -n "Choose option: "
	read op
	option $op
}

main
