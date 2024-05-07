#!/bin/bash



##BANNER
function banner(){
	echo "	May5"
	echo "	By-EnriLion"
	echo ""
}


##PUBLIC VARIABLES
user=$(jq -r '.user' may5.json)
name=$(jq -r '.name' may5.json)
email=$(jq -r '.name' may5.json)
pasword=$(jq -r '.name' may5.json)

##MENU
function menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo ""
}

##AP

##FUNCTION
function funsignin(){
	echo "	Sign-in"
	printf "user:"
	read uss
	printf "password:"
	read pss

	if [ $ussr == $user  ] && [ $pss == $password ];then
		clear
		sleep 1
		echo -ne "L30%\r"
		sleep 1
		echo -ne "Load60%\r"
		sleep 1
		echo -ne "Loading.\r"
		sleep 1
		clear
	else
		for i in {1..3}
		do
			sleep 1
			echo -ne "Bye.\r"
		done
		clear
		enrisoft
	fi
}

function funsignup(){
	echo "	Sign-up"
	echo "name:"
	read nme
	echo "email:"
	read eml
	echo "user:"
	read ussr
	echo "password:"
	read pssd
}

##OPTION
function option(){
	if [ $op == "a" ] || [ $op == "[a]" ] || [ $op == "Sign-in" ] || [ $op == "SIGN-IN" ];then
		clear
		sleep 1
		funsignin
	elif [ $op == "b" ] || [ $op == "[b]" ] || [ $op == "Sign-up" ] || [ $op == "SIGN-UP" ];then
		clear
		sleep 1
		funsignup
	else
		clear
		sleep 1
		echo "Exit"
		sleep 1
		exit 0
	fi
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
