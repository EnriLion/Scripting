#!/bin/bash


##COLOR ANSI
##PUBLIC VARIABLES
user=
name=
email=
password=
##BANNER
banner(){
	echo "	Apr21"
	echo "	By-EnriLion"
	echo ""
}


##FUNCTIONS
infunc(){
	echo "	Sign-in"
	echo "	"
	printf "user:"
	printf "password:"
}

upfunc(){
	echo "	Sign-up"
	echo "	"
	printf "name:"
	printf "email:"
	printf "user:"
	printf "password:"
}

##MENU
menu(){
	echo "	[Choose option]"
	echo "	[a]Sign-in"
	echo "	[b]Sign-up"
	echo "	[c]Exit"
	echo ""

}


##OPTIONS
options(){
	if [ $op = "a" ];then
		clear
		infunc
	elif [ $op = "b" ];then
		clear
		upfunc
	elif [ $op = "c" ];then
		clear
		echo "	Exit"
	else
		clear
		echo "	You are wrong"
	fi
}


##MAIN
main(){
	banner
	menu
	printf "Option: "
	read op
	options $op
}

main
