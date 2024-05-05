#!/bin/bash

##BANNER
function banner(){
	echo "	EnriSoft"
	echo "	By-EnriLion"
	echo ""
}

##MENUS

function menumain(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo ""

}

function menu(){
	echo "	[Choose options]"
	echo "	[a]Create"
	echo "	[b]Reload"
	echo "	[c]Update"
	echo "	[d]Delete"
	echo ""
}


##LOADING
function loadingsc(){
	clear
	echo -ne "	Loading(40%...    )\r"
	sleep 1
	echo -ne "	Loading(60%.....  )\r"
	sleep 1
	echo -ne "	Loading(100%......)\r"
	sleep 1
	clear
}


##OPTIONS

function optionmain(){
	case $opt in
		"a" | "Sign-in" | "SIGN-IN" | "[a]")
			clear
			loadingsc
			echo "Sign-in"
			;;
		"b" | "Sign-up" | "SIGN-UP" | "[b]")
			clear
			echo -ne "Loading(40%...    )"
			echo -ne "Loading(60%.....  )"
			echo -ne "Loading(100%......)"
			sleep 1
			clear
			echo "Sign-up"
			;;
		"c" | "Exit" | "EXIT" | "[d]")
			clear
			sleep 1
			for i in {1..3}
			do 
			sleep 1
			echo -ne "Bye."
			done
			;;
		*)
			clear
			echo "You are wrong"
			;;
	esac
}

function option(){
	case $opt in
		"a" | "Create" | "create" | "CREATE" | "[a]")
			clear
			;;
		"b" | "Reload" | "reload" | "RELOAD" | "[b]")
			;;
		"c" | "Update" | "update" | "UPDATE" | "[c]")
			;;
		"d" | "Delete" | "delete" | "DELETE" | "[d]")
			;;
		*)
			;;
	esac

}

##MAIN 
function main(){
	banner
	menumain
	printf "Option: "
	read opt
	optionmain $opt
}

main
