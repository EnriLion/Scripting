#!/usr/bin/bash env sh


##COLORS ANSI(American National Standar Institute)

##PUBLIC VARIABLES
exstate=$(echo -ne " Exit in...$i")
loadstate=$(echo -ne "	Loading in...$i")
##BANNER
function banner(){
	clear
	echo "	Tictactoe"
	echo "	By-EnriLion"
	echo ""
}


##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a]Play"
	echo "	[b]Instructions"
	echo "	[c]Exit"
	echo ""
}

##FUNCTION 
function fload(){
	var="$1"
	clear
	for i in {3..1}
	do
		clear
		echo -ne $var $i
		sleep 1
		clear
	done
}

#Matrix
function game_board(matix){
	
}

##OPTION
function option(){
	case $op in 
		"a" | "[a]" | "Play" | "PLAY")
			clear
			fload $loadstate
			echo " Be rady to play"
			echo "	3..2..1"
			;;
		"b" | "[b]" | "Instructions" | "INSTRUCTIONS")
			clear
			fload $loadstate
			echo "	Instructions"
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			fload $exstate
			exit 0
			;;
		*)
			clear
			sleep 1
			echo "You are wrong."
			sleep 1
			clear
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

