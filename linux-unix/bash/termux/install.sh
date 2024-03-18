#!/data/data/com.termux/files/usr/bin/bash



## ANSI Colors (FG & BG)

## Directories
# PREFIX='/data/data/com.termux/files/usr'
# TERMUX_DIR="$HOME/.termux"
# DIR="$(pwd)"

## Banner
banner () {
	clear
	echo "	MyTermuxLazy"
	echo "	BY EnriLion"
	echo "	"
}
## Menu
function display_options(){
	echo "	[?] Help"
	echo "	[1] Development"
	echo "	[2] Configure terminal appearence "
	echo "	[3] Back to normal"
	echo "	[0] Exit"
	echo "	"
	echo "	[Select options] "
	
}

##Option 1
function development_option(){
	echo "Hey welcome to development option"
}
##Option 2
function configuret_option(){
	echo "Configuration of the terminal that so cool"
}
##Option 2
function configureb_option(){
	echo "Disclaimer"
	echo "configuration Back to Normal"
}

## Menu
function handle_options(){
	
	if [[ "$1" == "?" ]] ; then
		echo "Hey Who to use this script?"
	elif [ $1 -eq 0 ] ; then
		echo  "Exiting..."
		exit 0
	else
		case $1 in
			1)
		        	development_option
				;;
			2)
				configuret_option
				;;
			3)
				configureb_option
				;;
			*)
				echo "You didn't choice the correct option"
				;;
		esac

	fi

}

## Main
main () {
 banner
 display_options
 read option
 handle_options $option
}

main
