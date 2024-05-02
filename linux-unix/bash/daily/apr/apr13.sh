#!/bin/bash


##Banner
banner(){
	echo "	Mylaxymux"
	echo "	By-EnriLion"
	echo ""
}

##Functions
read_opt(){
	printf "Option:	"
	read opt
}

##Menu
menu(){
	echo "	[Choose option]"
	echo "	[a]Development"
	echo "	[b]Scripting"
	echo "	[c]More"
	echo "	[?]Manual"
	echo "	[x]Quit"
	echo "	"
}

##Second menu
second_menu(){
	echo "	[Choose option]"
	echo "	[d]News"
	echo "	[e]SSH"
	echo "	[<]Back"
	echo "	[?]Manual"
	echo "	[x]Quit"
	echo "	"
}

##Options
option(){
	if [ $opt = "?" ] || [ $opt = "[?]" ] || [ $opt = "Manual" ];then
		echo "Welcome manual"
	elif [ $opt = "x" ] || [ $opt = "[x]" ] || [ $opt = "Quit" ];then
		echo "Welcome quit"
	else
		case $opt in
			"a")	
				echo "	Development"
				;;
			"b")
				echo "	Scripting"
				;;
			"c")
				clear
				banner
				second_menu
				read_opt 
				second_option $opt
				;;
			*)
				echo "Redirection you are wrong"
				;;
		esac
	fi
}

second_option(){
	if [ $opt = "?" ] || [ $opt = "[?]" ] || [ $opt = "Manual" ];then
		echo "Welcome manual"
	elif [ $opt = "x" ] || [ $opt = "[x]" ] || [ $opt = "Quit" ];then
		echo "Welcome quit"
	else
		case $opt in
			"d")
				echo "	News"
				;;
			"e")
				echo "	SSH"
				;;
			"<")
				clear
				main
				;;
			*)
				echo "Redirection you are wrong"
				;;
		esac
	fi
}

##Main
main(){
	banner
	menu
	read_opt
	option $opt
}

main
