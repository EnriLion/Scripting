#!/usr/bin/env bash


##GLOBAL VARIABLES
BAR='▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'
PS1=''
red="\e[31m"
green="\e[32m"
white="\e[37m"
bold="\e[1m"
reset="\033[m"
declare  adv_exit="Exit..."
declare  adv_load="Loading "
user=$(jq -r '.user' may16.json)
name=$(jq -r '.name' may16.json)
email=$(jq -r '.email' may16.json)
password=$(jq -r '.password' may16.json)
v_arr=()

##BANNER
function banner(){
	tput civis
	echo -e "$bold$white	EnriSoft"
	echo -e "	By-EnriLion $reset"
	echo ""
}

##FUNCTIONS
function funcload(){
	v="$1"
	if [ $v = $adv_exit ];then
		c=0
		while [ $c -le 2 ];
		do
			c=$(( c+1 ))
			echo -ne "$bold$red$v $c$reset"
			sleep 1
			clear
		done
	else
		for i in {1..10}; do
			c=$(( c+10 ))
			echo -ne "\r${BAR:0:$i} $v $c%"
			sleep 1
		done
	fi
	
}

##MENU
function menu(){
	echo -e "$bold$white	[Choose options]"
	echo -e "	[a]Sign-in"
	echo -e "	[b]Sign-up"
	echo -e "	[c]Exit$reset"
	echo ""
}

##OPTION
function option(){
	case $op in
		"a" | "[a]" | "Sign-in" | "SIGN-IN")
			clear
			sleep 1
			funcload $adv_load
			clear
			echo "Sign-in"
			;;
		"b" | "[b]" | "Sign-up" | "SIGN-UP")
			clear
			sleep 1
			funcload $adv_load
			clear
			echo "Sign-up"
			;;
		"c" | "[c]" | "Exit" | "EXIT")
			clear
			sleep 1
			clear
			funcload $adv_exit
			;;
		*)
			clear
			while [ ${#v_arr[@]} -le 2 ];
			do
				c=$(( c+1 ))
				v_arr+=($c)
				sleep 1
				if [ ${#v_arr[@]} -eq 3 ];then
					echo "	This is your last attempt"
					echo "	Attempt: "${v_arr[-1]}
				else
					echo "	You have " ${v_arr[-1]}"-3" "attempts"
					echo "	Attempt: "${v_arr[-1]}
				fi
				sleep 1
				clear
				main
				
			done
			clear
			sleep 1
			echo "Bye..."
			sleep 1
			clear
			exit 0
			;;
	esac
}

##MAIN
function main(){
	banner
	menu
	printf $bold$white"Option: $reset"
	read op
	option $op
}

main
