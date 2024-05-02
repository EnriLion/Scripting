#!/bin/bash


##COLOR ANSI

##GLOBAL VARIABLES
knos=$(uname -o)

##BANNER
function banner(){
	clear
	echo "	MyLazyVim"
	echo "	By-EnriLion"
	echo ""
}

##FUNCTION
function answer(){
	printf "Its ok if we continue Y/y[Yes] or N/n[No]: "
	read ans
	if [ $ans == "Yes"] || [ $ans == "yes" ] || [ $ans == "YES" ] ;then
		clear
	elif [ $ans == "No"] || [ $ans == "no" ] || [ $ans == "NO" ] ;then
		clear
		sleep 1
		echo "Ok then..."
		echo "Redirecting to the menu"
		sleep 1
		clear
		main
	fi
}

##OS
function knowope(){
	case $knos in
		"GNU/Linux")
			echo "You operating system is $knos"
			answer 
			clear
			banner
			menulinux
			printf "Option: "
			read menuans
			operations $menuans
			;;
		"Android")
			echo "You operating system is $knos"
			answer 
			clear
			banner
			menuandroid
			printf "Option: "
			read menuans
			operations $menuans
			;;
		"WSL")
			echo "You operating system is $knos"
			answer 
			clear
			banner
			menuwsl
			printf "Option: "
			read menuans
			operations $menuans
			;;
		*)
			clear
			sleep 1
			echo "Your operating system is diferent"
			exit 0
			;;
	esac
}

##OPERATIONS

function operations(){
	if [ -z $menuans ];then
		if [ $knos = "GNU\Linux" ];then
			case $menuans in
				"a" | "Vim" | "VIM"  | "[a]" | "vim" )
					clear
					sudo apt update;
					sudo apt upgrade ;
					sudo apt install vim
					;;
				"b" | "Neovim" | "NEOVIM"  | "[b]" | "neovim" )
					clear
					sudo apt update;
					sudo apt upgrade ;
					sudo apt install nvim;
					;;
				"c" | "Exit" | "EXIT"  | "[c]" | "exit" )
					clear
					sleep 1
					echo "Bye"
					sleep 1
					clear
					;;
				*)
					;;
			esac
		elif [ $knos = "Android" ];then
			case $menuans in
				"a" | "Vim" | "VIM"  | "[a]" | "vim" )
					clear
					sudo apt update;
					sudo apt upgrade ;
					sudo apt install vim
					;;
				"b" | "Other" | "OTHER"  | "[b]" | "other" )
					clear
					banner
					menuandroidsecond
					printf "Option:	"
					read opand
					operandroid $opand
					;;
				"c" | "Exit" | "EXIT"  | "[c]" | "exit" )
					clear
					sleep 1
					echo "Bye"
					sleep 1
					clear
					;;
				*)
					;;
			esac
		fi
	else
		clear
		echo "Bye"
		exit 0
	fi

}

function operandroid(){
	case $opand in
		"a" | "Neovim" | "neovim" | "NEOVIM" | "[a]")
			;;
		"b" | "VsCode" | "vscode" | "VSCODE" | "VsCode(CodeServer)" | "[b]")
			;;
		"c" | "Exit" | "EXIT"  | "[c]" | "exit" )
			clear
			sleep 1
			echo "Bye"
			sleep 1
			clear
			;;
	esac

}

##MENUS

function menulinux(){
	echo "	[Choose options - v.Linux]"
	echo "	[a]Vim"
	echo "	[b]Neovim"
	echo "	[c]Exit"
	echo ""
}

function menuandroid(){
	echo "	[Choose options - v.Android][1-2]"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

function menuwsl(){
	echo "	[Choose options - v.WSL]"
	echo "	[a]Vim"
	echo "	[b]Neovim"
	echo "	[c]Exit"
	echo ""
}

function menuandroidsecond(){
	echo "	[Choose options][2-2]"
	echo "	[a]Neovim"
	echo "	[b]Vscode(CodeServer)"
	echo "	[c]Exit"
	echo ""
}


##OPTION

function option(){
	case $op in
		"a")
			clear
			echo "Vim"
			;;
		"b")
			clear
			echo "Neovim"
			;;
		"c")
			clear
			echo "Exit"
			;;
		*)
			clear
			echo "Sleep"
			;;
	esac
}

##MAIN
function main(){
	banner
	knowope
	menu
	printf "Option: "
	read op
	option $op
}

main
