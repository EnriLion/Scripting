#!/bin/bash


c=-1

until [ $c -gt 98 ]
do
	((c=c+2))
	echo $c
done

