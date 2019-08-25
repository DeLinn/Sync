#!/bin/bash

function my_cmake
{
	cmake .
	make
}

function gitup
{
	string=$*
	git add -A .
	git commit -m "${string:-Auto upload}"
	git checkout master
	git merge work
	git push
	git checkout work
}

function gitdown
{
		git checkout master
		git pull
		git checkout work
		git merge master
}

function selection
{

	if [ "$1" = "mycmake" ]
	then
		my_cmake
	elif [ "$1" = "up" ]
	then
		shift
		gitup $*
	elif [ "$1" = "githubup" ]
	then
		shift
		(cd ~/env;gitup $*)
	elif [ "$1" = "down" ]
	then
		gitdown
	elif [ "$1" = "githubdown" ]
	then
		(cd ~/env;gitdown)
	elif [ -n "$1" ]
	then
		name=$1
		shift
		sh `find ~ -name $name` $@
	else
		echo "Wrong for selection"
		exit 1
	fi
}

selection $@ 
