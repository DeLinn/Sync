#!/bin/bash

function remove_scripts
{
	sudo rm -i /usr/local/bin/run
	sudo rm -i ~/run
	sudo rm -i ~/run.sh
}

mypath=$(pwd)
function path
{
	echo -n "Your path is $mypath, please check(y/n)"
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
<<<<<<< HEAD
#	ln -sf Home/* -t ~
=======
}

function copy_preferences
{
	path
	runsetting
	echo "Do you want to change your git setting name(y/n)"
	read answer
	if [ $answer = 'y' ]
	then
		gitsetting
	fi
	
	ln -sf $mypath/Home/.vimrc ~
	ln -sf $mypath/Home/.tmux.conf ~
	ln -sf $mypath/Home/.netrc ~
	ln -sf $mypath/Home/.bashrc ~
	ln -sf $mypath/Home/.bash_profile ~
	ln -sf $mypath/Home/.inputrc ~
	echo "All file copied"
>>>>>>> 33df9df... bootstrap done
}

function welcome
{
	while :
	do
		echo "Do you want to remove run shell scripts(y/n)"
		read answer

		if [ ! "$answer" ]; then
			continue
		fi
		if [ $answer = 'y' ]
		then
			remove_scripts
		elif [ $answer = 'n' ]
		then
			echo "not remove run shell scripts"
			break
		else
			continue	
		fi
	done
}
echo 'This script will set up your environment for coding'
echo 'Have fun!'
welcome
copy_preferences

