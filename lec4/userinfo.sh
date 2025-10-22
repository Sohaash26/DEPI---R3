#!/bin/bash

userfile="user_info.txt"

signup() {

	echo "please sign up:"
	read -p "enter your username:" username
	read -p "enter your password:" password
	echo
	read -p "enter your age:" age

	if grep -q "^$username:" "$userfile" 2>/dev/null; then
		echo "!!username already exist!!"
		return 

	fi

	echo "$username:$password:$age" >> "$userfile"
	echo "sign up successfully."
}


signin() {
	echo "please sign in:"

	read -p "enter your username:" username
	read -p "enter your password:" password
	echo


	if grep -q "^$username:$password:" "$userfile" 2>/dev/null; then

		echo "weclcome $username"
	else
		echo "Incorrect username / password!!"
	fi
}

echo
echo "-----------Menu:----------"
echo "Please Select One of the Following:" 
echo " 1) Sign Up"
echo " 2) Sign In"
read choice


case $choice in

	1) signup ;;
	2) signin;;

esac

