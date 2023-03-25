
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# MakeDir and cd to it
mcd () {
    mkdir -p "$1"
    cd "$1"
}

export EDITOR=vim

# Aliases
alias c=clear
alias ..="cd .."
alias reload=". ~/.bashrc; echo bashrc reloaded."

alias mv="mv -i"
alias rm="rm -i"
alias mkdir="mkdir -p"

alias ls=exa
alias sl=exa
alias ll="exa -l"

alias tm=tmux
alias ra=ranger

