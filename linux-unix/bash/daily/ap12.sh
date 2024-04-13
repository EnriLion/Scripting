#!/bin/bash


##Colors ANSI

##Banner
banner(){
	echo "	Lazymux"
	echo "	By-EnriLion"
	echo "	"
}

##Functions

#Function Instructions
func_ins(){
	clear
	sleep 1
	echo "Welcome instructions"
}

#Function Quit 
func_quit(){
	clear
	sleep 1
	echo "Quit..."
	sleep 1
}

##Menu
menu(){
	echo "	[Choose option]"
	echo "	[a]Development"
	echo "	[b]Scripting"
	echo "	[c]More"
	echo "	[d]All"
	echo "	[?]Instructions"
	echo "	[x]Quit"
	echo "	"
}

##Second Menu
# second_menu(){
#
# }

##Option
option(){
	if [ $op = "?" ] || [ $op = "[?]" ] || [ $op = "Instructions" ];then 
		func_ins
	elif [ $op = "x" ] || [ $op = "[?]" ] || [ $op = "Quit" ];then 
		func_quit
	else
		case $op in
			"a")
				echo "Development option"
				;;
			"b")
				echo "Scripting option"
				;;
			"c")
				echo "More options"
				;;
			"d")
				echo "All options"
				;;
			*)
				sleep 1
				clear
				echo "	Sorry but you are wrong"
				echo "	Redirecting to the menu"
				main
				sleep 1
				;;
		esac
	fi
}

##Main
main(){
	banner
	menu
	printf "Option: "
	read op
	option $op

}

main
