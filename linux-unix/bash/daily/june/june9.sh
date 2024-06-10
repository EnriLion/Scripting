#!/usr/bin/env bash
# Github = EnriLion

##GLOBAL VARIABLES
know_os=$(uname -o)
BAR='▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'
empty_arr=()

##BANNER
function banner(){
	echo "	Mylazymux"
	echo "	By-EnriLion"
	echo ""
}

##FUNCTIONS
#FUNCTION KNOWING OPERATING SYSTEM
function function_knowop(){
	case $know_os in
		"GNU/Linux")
			clear
			banner
			menu_linux_deb
			func_option 
			read res_menu
			case $res_menu in
				"a" | "[a]" | "A" | "[A]" | "NEOVIM" | "neovim" | "Neovim" )
					clear
					echo "neovim"
					;;
				"b" | "[b]" | "B" | "[B]" | "VSCODE" | "vscode" | "Vscode" )
					clear
					echo "vscode"
					;;
				"c" | "[c]" | "C" | "[c]" | "BOTH" | "both" | "Both" )
					clear
					echo "both"
					;;
				*)
					clear
					main
					;;
			esac
			;;
		"Android")
			clear
			banner
			menu_and
			func_option 
			read res_menu
			case $res_menu in
				"a" | "[a]" | "A" | "[A]" | "vim" | "VIM" | "Vim" )
					clear
					;;
				"b" | "[b]" | "B" | "[B]" | "other" | "OTHER" | "Other" )
					screen_load
					clear
					;;
				"c" | "[c]" | "C" | "[C]" | "exit" | "EXIT" | "Exit" )
					echo "	Bye..."
					clear
					;;
				*)
					;;
			esac
			;;
		*)
			clear
			echo "Sorry we aren't supporting that operating system yet"
			;;
	esac
}

#FUNCTION READ OPTION
function  func_option(){
	printf "Option: "
}

#FUNCTION SCREEN LOADING
function screen_load(){
	c=10
	for i in {1..9}; do
		tput civis
		c=$((c+10))
		echo -ne "\r${BAR:0:$i}Loading - $c%"
		sleep 0.2
		tput cnorm
	done
}

##MENU

#MENU ANDROID
function menu_and(){
	echo "	[Choose options] -1/2"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

#MENU SECOND ANDROID
function menu_sec_and(){
	echo "	[Choose options] -2/2"
	echo "	[a]Neovim"
	echo "	[b]Back"
	echo "	[c]Exit"
	echo ""
}

#MENU LINUX DEBIAN BASED DISTROS
function menu_linux_deb(){
	echo "	[Choose options]"
	echo "	[a]Neovim"
	echo "	[b]Vscode"
	echo "	[c]Both"
	echo "	[d]Exit"
	echo ""
}

##MAIN
function main(){
	banner
	screen_load
	function_knowop
}

main
