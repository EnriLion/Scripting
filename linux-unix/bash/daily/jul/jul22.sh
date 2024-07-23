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
				"a" | "[a]" | "A" | "[A]" | "NEOVIM" | "neovim" | "Neovim" | "nvim" | "NVIM" )
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
			printf "Option: "
			read res_menu
			case $res_menu in
				"a" | "[a]" | "A" | "[A]" | "vim" | "VIM" | "Vim" )
					clear
					a=("vim")
					func_bothdeb $a
					;;
				"b" | "[b]" | "B" | "[B]" | "other" | "OTHER" | "Other" )
					clear
					banner
					menu_sec_andr
					printf "Option: "
					read $op
					func_sec_and $op
					;;
				"c" | "[c]" | "C" | "[C]" | "exit" | "EXIT" | "Exit" )
					echo "	Bye..."
					clear
					;;
				*)
					clear
					sleep 1
					echo "Wrong..."
					sleep 1
					clear
					main
					;;
			esac
		;;
		*)
			clear
			echo "Sorry we aren't supporting that operating system yet.. We are considering (WSL and More Distributions)"
			;;
	esac
}


##FUNCTION 


##Function Setting Up Git
function func_git(){
	##Setting up if git exists then  continue 
	clear
	sleep 1.5
	echo "	User Git.Config "
	echo "	Insert your Username and Email"
	echo "	"
	sleep 1.5
	prinf "Username: "
	read usrgit
	git config --global user.name "$usrgit"
	prinf "Email: "
	read emgit
	git config --global user.email "$emgit"
	clear
	sleep 1.5
	echo "	Do you want to set-up ssh-keygen? y/Y or n/N"
	read ini_ssh
	if [ "$ini_sh" == "y" ] || [ "$ini_sh" == "Y" ] || [ "$ini_sh" == "yes"] || [ "$ini_sh" == "YES" ];then 
		clear
		if [ -d /sys/firmware/efi ]; then
			ssh-key -t ed25519 -C "$emgit"
			cd $HOME
			sleep 1
			echo "	Copy this to your Github/Gitlab"
			cat .ssh/id_ed25519.pub
		else
			ssh-key -t rsa -b 4096 -C "$emgit"
			cd $HOME
			sleep 1
			echo "	Copy this to your Github/Gitlab"
			cat .ssh/id_rsa.pub
		fi
	elif [ "$ini_sh" == "n" ] || [ "$ini_sh" == "N" ] || [ "$ini_sh" == "no"] || [ "$ini_sh" == "NO" ];then 
		clear
		echo "Exit process Git..."
		main
	else
		clear
		main
	fi

}

#FUNCTION INSTALL 

#FUNCTION INSTALL SOFTWARE

function func_install(){
	function set_init_and(){
		pkg update 
		pkg upgrade 
		apt update 
		apt upgrade
		##The commmand to run termux to a storage
		termux-setup-storage
		##Set-up Git
		apt install git
		##Setting up Git User
		func_git
		##Set-up Vim/Nvim
		apt install $a
	}
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
			elif [ "$a" = "vim" ];then
				#SETTING UP VSCODE
				echo "Setting up"
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
			if [ "$a" = "vim" ];then
				a=("vim")
				set_init_and $a
			elif [ "$a" = "nvim" ];then
				a=("neovim")
				set_init_and $a
			else
				clear
				echo "You are wrong..."
				main
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

##Function Second Operation Android
function func_sec_and(){
	case $op in
		"a" | "[a]" | "A" | "[A]" | "NEOVIM" | "neovim" | "Neovim" | "nvim" | "NVIM" )
			clear
			a=("nvim")
			func_bothdeb $a
			;;
		"b" | "[b]" | "B" | "[B]" | "back" | "BACK" )
			clear
			function_knowop
			;;
		"c" | "[c]" | "C" | "[C]" | "exit" | "Exit" | "EXIT" )
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

##MENU WSL
# function menu_wsl(){
#
# }

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

#MENU WSL(Windows Subsystem Linux)
function menu_wsl(){
	echo "	[Choose to stick with]"
	echo "	[a]PowerShell"
	echo "	[b]Debian-Distro"
	echo "	[d]Exit"
	echo ""
}

##MAIN
function main(){
	clear
	banner
	screen_load
	function_knowop
}

main
