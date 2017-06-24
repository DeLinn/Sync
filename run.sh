#!/bin/bash

if [ -f .profile ]
then
	. .profile
else
	echo ".profile file doesn't exit"
	exit
fi

function my_cmake
{
	cmake .
	make
}

function selection
{

	if [ "$1" = "mycmake" ]
	then
		my_cmake
	elif [ "$1" = "mymake" ]
	then
		make clean
		make
	elif [ "$1" = "bootstrap" ]
	then
		$mypath/bootstrap.sh
	else
		echo "Wrong for selection"
		exit 1
	fi
}

selection $1 
