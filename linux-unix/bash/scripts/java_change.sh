#!/usr/bin/env bash

PS3='Please select the version: '

files=($(ls -1 /usr/lib/jvm))

files+=("Quit")

menu(){
select filename in "${files[@]}"; do
    case $filename in
        "Quit")
            echo "Exiting menu."
            break
            ;;
	 $filename)
	    source ~/.bashrc
	    sed -i '/^export JAVA_HOME=/d' ~/.bashrc
	    echo "export JAVA_HOME=/usr/lib/jvm/$filename" >> ~/.bashrc
	    source ~/.bashrc
	    source ~/.bashrc
	    source ~/.bashrc
	    sleep 3
	    clear
	    echo  "java version = $filename"
	    java --version
	    exit 0
            ;;
        *)
	echo "Invalid selection. Please choose a number from the list or 15 to Quit'."
	;;
    esac
done
}

main(){
	menu
}

main
