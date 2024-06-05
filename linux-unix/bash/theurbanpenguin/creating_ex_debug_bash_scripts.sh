#!/usr/bin/env bash

##Understanding the PATH Environment
echo $PATH

##Script of an example of a path called user
if [[ $USER != "enrique" ]]
then
	echo "Hello world"
else
	echo "Bye"
fi

##to debug a file in bash "bash -x [current script]

