#!/bin/bash

echo "enter username: \c"
read -r name
if [ $name = "prudhvi" -o $name = "reddy" ];then
	echo "enter passwd: \c"
	read -r passwd
	if [ $passwd = "reddy" ];then
		echo welcome prudhvi
	else
		echo worng passwd
	fi
else
	echo worng username
fi

