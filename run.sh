#!/bin/bash

function my_cmake
{
	cmake .
	make
}

function selection
{

	if [ "$1" = "mycmake" ]
	then
		echo "hello"
	elif [ "$1" = "mymake" ]
	then
		make clean
		make
	elif [ "$1" = "bootstrap" ]
	then
		$(pwd)/bootstrap.sh
	else
		echo "Wrong for selection"
		exit 1
	fi
}
selection bootstrap 
