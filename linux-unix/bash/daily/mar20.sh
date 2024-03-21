#!/bin/bash

##Banner
function banner(){
	echo "	Script Mar 20 2024"
	echo "	MyTermuxVim"
}

##NEW MENU
function menu(){
PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            clear
            echo "  Configuration of development"
            ;;
        "Option 2")
            clear
            echo "  Configuration of scripting"
            ;;
        "Option 3")
            clear
            echo "Configuration of all"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
}

##Main
function main(){
	banner
	menu
}
main

