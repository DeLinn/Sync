#!/usr/bin/env bash
# This means auto select default bash

# cross-platform
PLATFORM="$(uname -s)"
case "$PLATFORM" in
	Darwin)
	;;
	Linux)
	;;

# find script path
 SCRIPT_PATH=$(DIR=`dirname "$0"` ; cd "$DIR" ; echo "$PWD")

function check_os
{
	if [ `hostname -s` = "SurfacePro4" ]
	then
		true
	elif [ `hostname -s` = "mymba" ]
	then
		true
	else
		echo "not mymac nor my surface"
		false
	fi
}

# create link for projects
function create_p
{
	if check_os
	then
		echo "Now make soft link to your onedrive projects"
		. ~/.bashrc
		ln -sf $ONEDRIVE/Projects ~/p
	fi
}

function question
{
	while :
	do
		echo -n $1
		read answer

		if [ ! "$answer" ]; then
			continue
		fi
		if [ $answer = 'y' ]
		then
			modify
			break
		elif [ $answer = 'n' ]
		then
			echo $2
			break
		else
			continue	
		fi
	done
}

lines=$(sed -n '$=' $1)

something='echo'

for i in `seq 1 $lines`
do
	$something `sed -n $i'p' $1`
done

# equal to cat somefile | xargs -l $something

grep -i $* /dev/null
