#!/bin/bash

###########################################################################################

#This was written for a paticular scenerio i had please feel free to midify it as you need
#please change the subnet and server details accordingly to run it in all the machine 
#in a subnet ine by one
#
#function: login to all the available mahcine in the subnet and check the version of the OS
#and execute the command accordingly
#
############################################################################################

read -p "username: " username
read -p "password: " -s password
read -p "enter subnet (ex:10.85.12.)  : " host

i=9

until [ $i == 200 ]
do
	i=$((i+1))
	ping -c 2  ${host}$i
	var=$?
	if [ $var == 0 ]
	then

		ssh-keyscan -t ecdsa ${host}$i >> ~/.ssh/known_hosts
		sshpass -p $password ssh $username@${host}$i cat /etc/*release | grep suse
		status=$?
		if [ $status == 0 ]
		then
			sshpass -p $password ssh $username@${host}$i "mkdir /root/suse/"
			sshpass -p $password ssh $username@${host}$i "wget https://github.com/nithinj95/bash/blob/main/suse/suse_dc_tool.sh -P /root/suse/"
			sshpass -p $password ssh $username@${host}$i "chmod +x /root/suse/suse_dc_tool.sh"
			sshpass -p $password ssh $username@${host}$i "bash /root/suse/suse_dc_tool.sh -y"
			sshpass -p $password ssh $username@${host}$i "curl --insecure --user $username:root@123 -T /root/*output.tar.gz "sftp://$(hostname)/root/sftp/""
		fi
	fi	
done

