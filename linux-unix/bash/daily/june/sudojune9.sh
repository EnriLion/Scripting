#!/usr/bin/env bash



function func_load(){
	for i in {1..3}
	do
		echo -ne "Loading in $i"
		sleep 1
		clear
	done

}

function func_up_deb(){
        sudo apt update &> /dev/null ; sudo apt upgrade -y &> /dev/null  > record_june9.log
	if [ $? -eq 0 ];then
		func_load
		echo "Package  lists updated successfully."
	else
		echo "Error updating packages contact it support(red)"	
		exit 0
	fi
}


function main(){
	func_up
}

main


