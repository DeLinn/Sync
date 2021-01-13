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
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1

