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
					func_bothdeb $a
					;;
				"b" | "[b]" | "B" | "[B]" | "VSCODE" | "vscode" | "Vscode" )
					clear
					a=("code")
					func_bothdeb  $a
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
			menu_andr
			func_option 
			read res_menu
			case $res_menu in
				"a" | "[a]" | "A" | "[A]" | "vim" | "VIM" | "Vim" )
					clear
					a=("vim")
					;;
				"b" | "[b]" | "B" | "[B]" | "other" | "OTHER" | "Other" )
					clear
					banner
					menu_sec_andr
					printf "Option: "
					read $op
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

#FUNCTION INSTALL SOFTWARE


function func_install(){
	case $know_os in
		"GNU/Linux")
			if [ "$a" = "nvim" ];then
				#SETTING UP NEOVIM
				sudo apt upgrade
				sudo apt update
				sudo apt install neovim
			elif [ "$a" = "code" ];then
				#SETTING UP VSCODE
				curl -o code.deb https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
				sudo dpkg -i code.deb
			elif [[ "$a" == "nvim"  && "$b" == "code" ]];then
				#SETTING UP NEOVIM
				sudo apt upgrade
				sudo apt update
				sudo apt install neovim
				#SETTING UP VSCODE
				curl -o code.deb https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
				sudo dpkg -i code.deb
			else 
				sleep 1
				echo "You are wrong..."
				sleep 1
				clear
				main
			fi
			;;
		"Android")
			if [[ -n "$1" && -n "$2" ]];then
				pkg update 
				apt update
				apt install $a ; pkg install $a ; apt install $b ; pkg install $b
				##The commmand to run termux to a storage
				termux-setup-storage
			elif [[ -n "$1" ]];then
				pkg update 
				apt update
				apt install $a ; pkg install $a
				##The commmand to run termux to a storage
				termux-setup-storage
			fi
			;;
		*)
			clear
			echo "We are in process to make this script available for any operatin-system or distribution"
			;;
	esac
}

#FUNCTION OTHER OPERATION
function func_bothdeb(){
	clear
	if [[ -n "$a" ]];then
		echo "	Are you going to install - $a "
		ins_editors=false #Indicate if there is more than one editor
	elif [[ $a == "nvim" && $b == "code" ]];then 
		a=("Neovim")
		b=("VsCode")
		echo "	Are you going to install  $a and $b "
		ins_editors=true 
	fi
	echo "	Y/y[Yes] or N/n[Not] to proceed"
	printf "Option: "
	read ans
	case $ans in
		"y" | "Y" | "Yes" | "YES" | "yes")
			if $ins_editors ;then
				echo "Installing... $a and $b"
				a=("nvim")
				a=("code")
				func_install $a $b
			else
				func_install $a
			fi
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
function menu_andr(){
	echo "	[Choose options] -1/2"
	echo "	[a]Vim"
	echo "	[b]Other"
	echo "	[c]Exit"
	echo ""
}

#MENU SECOND ANDROID
function menu_sec_andr(){
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
