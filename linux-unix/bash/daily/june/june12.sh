#!/usr/bin/env bash
# Github = EnriLion

##GLOBAL VARIABLES
know_os=$(uname -o)
BAR='▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'
# empty_arr=()

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
			printf "Option: "
			read res_menu
			case $res_menu in
				"a" | "[a]" | "A" | "[A]" | "NEOVIM" | "neovim" | "Neovim" )
					clear
					a=("nvim")
					echo "Installing...neovim"
					;;
				"b" | "[b]" | "B" | "[B]" | "VSCODE" | "vscode" | "Vscode" )
					clear
					b=("code")
					echo "Installing...vscode"
					;;
				"c" | "[c]" | "C" | "[C]" | "BOTH" | "both" | "Both" )
					clear
					a=("nvim")
					b=("code")
					func_bothdeb $a $b
					;;
				"d" | "[d]" | "D" | "[D]" | "exit" | "Exit" | "EXIT" )
					clear
					echo "Bye..."
					sleep 1
					exit 0
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

#FUNCTION INSTALL SOFT
function func_install(){
	sudo apt update ; sudo apt upgrade -y
	if [[ -z "$a" && -z "$b" ]];then
		if [[ $b = "code" ]];then
		fi
		sudo apt install $a ; sudo apt install $b
	elif [[ -z "$a" ]];then
		sudo apt install $a
	elif [[ -z "$b" ]];then
		sudo apt install $b
	fi
}

#FUNCTION OTHER OPT
function func_bothdeb(){
	clear
	if [[ $a == "nvim" && $b == "code" ]];then 
		a=("Neovim")
		b=("VsCode")
	fi
	echo "	Are you going to install $a and $b"
	echo "	Y/y[Yes] or N/n[Not] to proceed"
	printf "Option: "
	read ans
	case $ans in
		"y" | "Y" | "Yes" | "YES" | "yes")
			a=("nvim")
			b=("code")
			echo "Installing...neovim"
			func_install $a $b
			sleep 1
			clear
			echo "See you..."
			sleep 1
			exit 0
			;;
		"n" | "N" | "Not" | "NOT" | "not")
			clear
			echo "Ok... be sure of your option"
			echo "Redirecting to menu"
			sleep 2
			clear
			main
			;;
		*)
			clear
			sleep 1
			main
			;;
	esac


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
