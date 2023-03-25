# Prompt
PS1=" $ "

# Vi mode
set -o vi

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='\'

# MakeDir and cd to it
mcd () {
    mkdir -p "$1"
    cd "$1"
}

# Proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890

# Aliases
alias c=clear
alias ..="cd .."

alias mv="mv -i"
alias rm="rm -i"
alias mkdir="mkdir -p"

alias ls=exa
alias sl=exa
alias ll="exa -l"

alias tm=tmux
alias ra=ranger

