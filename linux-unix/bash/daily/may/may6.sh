#!/bin/bash

##BANNER
banner(){
	echo "Tic-tac-toe"
	echo "By-EnriLion"
	echo ""
}

menu(){
	echo "[Choose options]"
	echo "[a]Play"
	echo "[b]Instructions"
	echo "[c]Exit"
	echo ""
}

loading(){
	clear
	sleep 1
	echo -ne "Lo"
	sleep 1
	clear
	echo -ne "Lo"
	sleep 1
	clear
	echo -ne "Loadi"
	sleep 1
	clear
	echo -ne "Loading."
	sleep 1
	clear
}

instructions(){
	clear
	echo "Instructions"
	echo "	a)Back"
	echo "	b)Menu"
}

option(){
	case $op in
		"a" | "[a]" | "Play" | "PLAY")
			loading
			clear
			echo "Play"
			;;
		"b" | "[b]" | "Instructions" | "INSTRUCTIONS")
			loading
			clear
			instructions
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			loading
			clear
			echo "Exit"
			;;
		*)
			main
			;;
	esac
}

main(){
	banner
	menu
	printf "Option: "
	read op
	option $op
}

main

