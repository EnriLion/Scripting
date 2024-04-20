#!/bin/bash

##Color ANSI
color_white=""
color_blinking=""
color_bold=""
color_red=""
color_green=""
color_reset=""

##Public variables
name=$(jq -r '.name' u.json)
user=$(jq -r '.user' u.json)
email=$(jq -r '.email' u.json)
password=$(jq -r '.password' u.json)

##Banner
banner(){
	echo "	EnriSoftware"
	echo "	By-EnriLion"
	echo "	"
}

##Functions
comprob_signin(){
	if [ $ussr == $user ] && [ $pss == $password ];then
		enrisoft
	else
		clear
		sleep 1
		echo "You are wrong..."
		sleep 1
		clear
		main
	fi
}

comprob_signup(){
	if [ $ussr == $user ] && [ $pss == $password ] && [ $em == $email ] && [ $nm == $name ];then
		clear
		sleep 1
		echo "Ups the user actually existed"
		echo "Sorry but you need to enter to the sign in option"
		clear
		main
	else

	fi

}

signin(){
	echo "	Sign-in"
	echo "	"
	printf "user:"
	read ussr
	printf "password:"
	read pss
	comprob_signin $ussr $pss
}

signup(){
	echo "	Sign-up"
	echo "	"
	printf "name:"
	read nm
	printf "email:"
	read em
	printf "user:"
	read ussr
	printf "password:"
	read pss
	comprob_signup $name $email $ussr $pss
}

enrisoft(){
	clear
	echo "	Enrisoft"
}


##Menu
menu(){
	echo "	[Choose options]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo "	"
}

##Options
options(){
	case $op in
		"a")
			clear
			signin
			;;
		"b")
			clear
			signup
			;;
		"c")
			clear
			echo "	Bye"
			;;
		*)
			clear
			sleep 1
			echo "	You are going to be redirected"
			echo "	To the menu"
			sleep 1
			clear
			main
			;;
	esac
}

##Main
main(){
	banner
	menu
	printf "Option: "
	read op
	options $op
}
main
