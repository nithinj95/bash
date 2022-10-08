#!/bin/bash


while [ true ]
do
    read -p "Enter 1 to show disk usage
Enter 2 to show the uptime on the system
Enter 3 show the users that are logged into the system
Enter q to quit
input: " input

    case $input in
        1)
            df -h
            ;;  
        2)
            uptime            
            ;;
        3)
            who
            ;;
        q)
            echo "Goodbye"
            break
            ;;
        *)
            echo "Invalid Option"
    
esac
echo
done