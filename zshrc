# Prompt(see manPage of zshmisc)
PS1="[%1/]$ "

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

# AutoJump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# AutoSuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890

# Java Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home

# https://code.visualstudio.com/docs/setup/mac
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Show a ^C in canceled command line in zsh like bash does
TRAPINT() {
	print -n "^C"
	return $(( 128 + $1 ))
}

# Aliases
alias q=exit
alias c=clear
alias ..="cd .."
alias ...="cd ../.."
alias reload=". ~/.zshrc; echo zshrc reloaded."

alias mv="mv -i"
alias rm="rm -i"
alias mkdir="mkdir -p"

alias ls=exa
alias sl=exa
alias ll="exa -l"

alias tm=tmux
alias ra=ranger
alias s=neofetch

