#!/bin/bash
vncDemonPath=/lib/systemd/system
while read line
do
  userInfo=($line)
  cp $vncDemonPath/vncserver@.service $vncDemonPath/vncserver@:${userInfo[1]}.service
  sed -i -e "s/<USER>/${userInfo[0]}/g" $vncDemonPath/vncserver@:${userInfo[1]}.service

done < userlist.txt
