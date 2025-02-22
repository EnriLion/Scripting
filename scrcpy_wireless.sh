#!/usr/bin/env bash

# FUNCTIONS
func_ip=$(adb devices  | grep 5555 | awk '{print $1}' | cut -d ":" -f1)
func_port=$(adb devices  | grep 5555 | awk '{print $1}' | cut -d ":" -f2)

function banner() {
echo "      ---------"
echo "      SCRCPY-WIRELESS-DEBIAN"
echo "      ---------"
echo "      By-EnriLion"
echo ""
}

function menu(){
	echo "      a)RUN"
	echo "      b)EXIT"
	echo ""
	
}

# function manual(){
# }

# Installer
function installer_scrcpy(){
	sudo apt update;
	sudo apt upgrade;
	sudo apt install scrcpy;

}

function installer_git(){
	if command -v git > /dev/null 2>&1;then
		echo ""
	else
		sudo apt install git;
	fi
}

function installer_nmap(){
	if command -v nmap > /dev/null 2>&1;then
		echo ""
	else
		sudo apt install nmap;
	fi
}

function run_service(){
	echo "Are you sure you want to run this service Y/yes or N/not?"
	read $service
	sleep 1
	clear
	case $service in
		"Yes" |  "y" | "YES" | "yes" | "Y")

		;;
		"No" |  "n" | "NO" | "no" | "N")
			clear 
			sleep 1
			main
		;;
		*)
			clear 
			sleep 1
			main
		;;
	esac
}

function check_ip() {
	nmap 
}


function execute(){
	sudo apt update;
	sudo apt upgrade;
	installer_git
	installer_nmap
	if command -v adb > /dev/null 2>&1; then
		if command -v scrcpy > /dev/null 2>&1;then
			#Verify if there are running in port 5555
			$fun_ip
			$fun_port
			# if [ "$func_ip" =~^[[:space:]]*$ ] && [ "$func_port"  =~ ^[[:space:]]*$ ];then
			if [[ "$func_ip" =~ ^[[:space:]]*$ ]] && [[ "$func_port" =~ ^[[:space:]]*$ ]]  then
				sleep 1
				clear
				echo "The port 5555 is not in use"
				run_service

			else 
				sleep 1
				clear
				echo "The port: $func_port is in use"
				echo "The device is: $func_ip"
				echo "Are you sure you want to connect with this device($func_ip)? Y[Yes]/N[No]"
			fi
		else
			sudo apt install ffmpeg libsdl2-2.0-0 adb wget \
				gcc git pkg-config meson ninja-build libsdl2-dev \
				libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev \
				libswresample-dev libusb-1.0-0 libusb-1.0-0-dev
			git clone https://github.com/Genymobile/scrcpy
			cd scrcpy
			./install_release.sh

		fi
	else
		sudo apt install adb;
	fi
}


function  option(){
	case $opt in
		"a" | "A" | "a)" | "A)" | "a)Run" | "a)run" | "a)RUN" )
			execute
			;;
		"b" | "B" | "b)" | "b)" | "b)Exit" | "c)exit" | "c)EXIT")
			sleep 1
			exit 0
			;;
		*)
			sleep 1
			clear
			main
			;;
	esac
}

function main(){
	banner
	menu
	printf "Option: "
	read opt
	option $opt
	
}

main
