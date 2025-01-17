
# Proxy
alias proxy="export http_proxy=http://127.0.0.1:1087"
alias unproxy="unset http_proxy"

# Enable vi-mode
set -o vi

# edit & reload
alias ozr="vim ~/.zshrc"
alias r="source ~/.zshrc"

# Some basic settings
alias q=exit
alias c=clear
alias mv="mv -i"
alias ..="cd .."

# Some useful tools
alias t=tmux
alias cat=bat
alias l="eza --all --long"
alias ll="eza --all --long"
alias bd="BBDown -p ALL" # bilibili videos downloader
alias yd="yt-dlp --format 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]'" # youtube videos downloader

# Show a ^C in canceled command line in zsh like bash does
TRAPINT() {
	print -n "^C"
	return $(( 128 + $1 ))
}

# MakeDir and cd to it
mcd () {
    mkdir -p "$1"
    cd "$1"
}

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Enable autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

cd ~/Desktop
eza --all --long
