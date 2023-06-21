#! /bin/bash

read -p 'Username: ' user
read -sp 'Password: ' pass

if (( $user == "mca44" && $pass == "password" ))
then
	echo -e "\nWelcome! You are Sucessfull login\n"
else
	echo -e "\nUnsuccessful login\n"
fi
