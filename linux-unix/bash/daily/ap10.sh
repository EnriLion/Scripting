#!/bin/bash


##Variable
username=""
password=""
##Banner
banner(){
	echo "	Apr10"
	echo "	by-EnriLion"
	echo "	"
}

##Functions
func_log(){
	clear
	echo "	Welcome Login"
	echo "	"
	sleep 1
	printf "username: "
	read user
	printf "password: "
	read pass
}

func_sign(){
	clear
	echo "	Welcome Sign up"
	echo "	"
	sleep 1
	printf "email:"
	read email
	printf "new username:"
	read user
	printf "new passowrd:"
	read pass

}

##Option
op(){
	if [ $op = "1" ] || [ $op = "1]" ] ;then
		func_log
	elif [ $op = "2" ] || [ $op = "2]" ];then
		func_sign
	elif [ $op = "3" ] || [ $op = "3]" ];then
		echo "Exit..."
	else
		clear
		echo "You are wrong..."
		sleep 1
		main
	fi
}

##Menu
menu(){
	echo "	[Choose option]"
	echo "	1]Login"
	echo "	2]Sign up"
	echo "	3]Exit"
	echo "	"
}

##Main
main(){
	banner
	menu
	printf "Option: "
	read op
	op $op
}
main
