# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -la'
alias l='ll'
alias a='axel -a'
alias g='git'
alias ..='cd ..'
alias ...='cd ../../'
alias youtube-dl-mp3='youtube-dl  --extract-audio --audio-format mp3'
alias aptitude='sudo aptitude'
alias apt-get='sudo apt-get'
alias psaux='ps aux'
alias psgrep='psaux | grep -v grep | grep'

if type "git" > /dev/null 2>&1; then
    alias g='git'
    alias add='git add'
    alias commit='git commit'
    alias pull='git pull'
    alias push='git push'
    alias checkout='git checkout'
fi
