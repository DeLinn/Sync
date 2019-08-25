# .bashrc

# for mac
if [ -f /etc/bashrc ]
then
	. /etc/bashrc
fi
#alias gp='git push'
#alias gb='git branch'
#alias gc='git commit -am'
#alias gco='git checkout'

# alias
alias gst='git status'
alias gcm='git checkout master'
alias gu='run up'
alias gd='run down'
alias vi='vim -O'
alias vibash='vi ~/.bashrc'
alias la='ls -a'
alias ll='ls -l'
alias newsh='run new_script'
alias r='run'
alias su='run githubup'
alias sd='run githubdown'
alias cm='git clean -df && cmake . && make && ./main'
alias musicdown='youtube-dl -o "%(title)s.%(ext)s" -x --audio-format mp3'
function musiclistdown
{
	while read line <$1; do musicdown $line;done
}

alias mld=musiclistdown
function term
{
	#alias sshr="$ONEDRIVE/Projects/ssh/root"
	#alias sshu="$ONEDRIVE/Projects/ssh/user"
	alias sshu="$HOME/env/Home/ssh/user"
	alias sshr="$HOME/env/Home/ssh/root"
	
	alias sscp="$HOME/env/Home/ssh/myscp"
	alias down="wget www.zhaowo.xyz/diy/"
	export PROJECT="$ONEDRIVE/Projects"
	alias cdp="cd $PROJECT"
}

if [ `hostname` = "house" ]
then
#	export PATH="/usr/local/bin/anaconda3/bin:$PATH"
	export XDG_RUNTIME_DIR="/home/user/.jupyter"
	alias ls='ls --color=auto'
elif [ `hostname -s` = "orange" ]
then
	export ONEDRIVE=/Users/mymba/OneDrive
	alias ls='ls -G'
	term
elif [ `hostname -s` = "SurfacePro4" ]
then
	export ONEDRIVE=/mnt/c/Users/zhang/OneDrive
	alias ls='ls --color=auto'
	#alias java='cmd.exe /C java'
	#alias mvn='cmd.exe /C mvn'
	term
fi

export PS1="\[\033[33m\][\u@\[\033[1;31m\]\h]\]\033\[[36m\] {\033[1;35m\]\w\]\033\[[36m\]}\n\033\[[32m\]>>>\033\[[37m\] "

#if [ `hostname` = "SurfacePro4" ]
#then
#	sudo service ssh --full-restart
#fi

