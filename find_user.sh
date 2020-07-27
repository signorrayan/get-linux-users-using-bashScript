#!/usr/bin/env bash

while read -rp "Enter username: " user_name
do
    if [ -z "$user_name" ]
    then
        echo "Enter a non-empty username!"    
        continue
    fi

    if grep -q "^$user_name:" /etc/passwd
    then
        echo "$user_name FOUND"
        exit 0
    else
        echo "$user_name NOT FOUND!" >&2
        exit 1
    fi
done
