
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='[\u@\h \W]\$ '

# Fzf
source "/usr/share/fzf/key-bindings.bash"
source "/usr/share/fzf/completion.bash"
export FZF_COMPLETION_TRIGGER='\'

# MakeDir and cd to it
mcd () {
    mkdir -p "$1"
    cd "$1"
}

export EDITOR=vim

# Vim mode
set -o vi
bind -m vi-insert "Control-l: clear-screen"
bind -m vi-command "Control-l: clear-screen"

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

