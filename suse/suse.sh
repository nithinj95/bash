#!/bin/bash

read -p "username: " username
read -p "password: " -s password
read -p "enter subnet (ex:10.85.12.)  : " host

i=5

until [ $i == 20 ]
do
	i=$((i+1))
	ssh-keyscan -t ecdsa ${host}$i >> ~/.ssh/known_hosts
	sshpass -p $password ssh $username@${host}$i cat /etc/*release | grep SLES
	status=$?
	if [ $status == 0 ]
	then
		sshpass -p $password ssh $username@${host}$i "bash /root/scripts/suse_dc_tool.sh -y"
		sshpass -p $password ssh $username@${host}$i "curl --insecure --user $username:$password -T /root/*output.tar.gz "sftp://192.168.2.15/root/sftp/""
	fi	
done

