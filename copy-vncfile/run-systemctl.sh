#!/bin/bash

while read line
do
  userInfo=($line)
  
  systemctl daemon-reload
  systemctl start vncserver@:${userInfo[1]}.service
  systemctl enable vncserver@:${userInfo[1]}.service  

done < userlist.txt
