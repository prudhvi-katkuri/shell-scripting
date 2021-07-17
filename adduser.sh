#!/bin/bash
if [ $(id -u) -eq 0 ]; then
   echo -e "enter username: \c"
   read  username
   echo -e "enter passwd: \c"
   read -s  password
    egrep "^$username" /etc/passwd >/dev/null
     if [ $? -eq 0 ]; then
	echo "$username exists!"
	exit 1
     else
	pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
 useradd -m -p $pass $username
 [ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
 fi
 else 
	 echo "only root can add user"
	 exit 2
 fi


