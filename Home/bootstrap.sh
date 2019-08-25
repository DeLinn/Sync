#!/bin/bash

function cover
{
	sudo ln -sf $(pwd)/run.sh /usr/local/bin/run
}

function gitsetting
{
	cp $(pwd)/Home/.gitconfig ~
	sed -i -e "s/morgan/`hostname -s`/"  ~/.gitconfig

	sed -n 2p ~/.gitconfig
	echo "gitsetting is done"

#	cp $(pwd)/Home/.netrc ~
}

function copy
{
	#for git and github
	gitsetting
	
	ln -sf $(pwd)/Home/.vimrc ~
	ln -sf $(pwd)/Home/.tmux.conf ~
	ln -sf $(pwd)/Home/.bashrc ~
	ln -sf $(pwd)/Home/.bash_profile ~
	ln -sf $(pwd)/Home/.inputrc ~
	echo "All file linked copied"

	if [ -f ~/.profile ]
	then
		echo ". ~/.bash_profile" >> ~/.profile
	fi
}

copy
exit
