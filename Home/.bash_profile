# .bash_profile

if [ -f ~/.bashrc ]
then
	. ~/.bashrc
fi

EDITOR='/usr/bin/vim'
export EDITOR
export FCEDIT=vim

PATH=$PATH:~/env/Scripts
export PATH
