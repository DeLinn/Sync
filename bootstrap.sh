#!/bin/bash

echo 'This script will set up your environment for coding'
echo 'Have fun!'

function remove_scripts
{
	sudo rm -i /usr/local/bin/run
	sudo rm -i ~/run
	sudo rm -i ~/run.sh
}

mypath=$(pwd)
function path
{
	echo -n "Your path is $mypath, please check:(y/n)"
	read answer
	if [ $answer = "n" ]
	then
		exit 1
	fi
}

function copy_preferences
{
	path
	sudo ln -sf $mypath/run.sh /usr/local/bin/run
	if [ -f /usr/local/bin/run ] && [ $(realpath /usr/local/bin/run) = "$mypath/run.sh" ]
	then
		echo "the link of run.sh has been moved to /usr/local/bin"
	else
		echo "executable copy failed"
		exit 1
	fi
#	ln -sf Home/* -t ~
}

#remove_scripts
copy_preferences


