#!/bin/bash
while read username
do
    adduser $username
    echo "$username:password" | sudo chpasswd
    echo "The $username create finish."
done < userlist.txt
