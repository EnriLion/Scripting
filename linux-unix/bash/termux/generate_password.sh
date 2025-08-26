#!/usr/bin/env bash


password=$( tr -dc 'A-Za-z0-9!?%=@' < /dev/urandom | head -c 10)

blockchain=$(date +%s%N | sha256sum | base64 | head -c 8)

final_password="${password:0:5}${blockchain}${password:5:5}"
echo "This is your password: $final_password"

sleep 45s
clear

ttyd -W -p 5173 -c leon:$final_password bash




