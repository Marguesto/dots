# .bashrc

set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PATH="$HOME/.emacs.d/bin:~/bin:$PATH"
alias ls='ls --color=auto'
alias ranger='ranger -c'
alias rcc='tcc -run'
#alias cc='cd ~/Programming/C/K\&R/ && cd $1'
alias cc='cd ~/Programming/ts/EloquentJavascript/ && cd $1'
alias gtoken='cat "misc/token/github" | xclip'
PS1='[\u@\h \W]\$ '
