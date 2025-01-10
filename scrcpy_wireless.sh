#!/usr/bin/env bash

# FUNCTIONS
func_port=$(5555)
func_ip=$()

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

function execute(){
	sudo apt update;
	sudo apt upgrade;
	installer_git
	installer_nmap
	if command -v adb > /dev/null 2>&1; then
		if command -v scrcpy > /dev/null 2>&1;then
			sleep 1
			clear
			echo "Your device is already in the port 5555"
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
