
# Proxy
alias proxy='export all_proxy=socks5://127.0.0.1:1080'
alias unproxy='unset all_proxy'

# Enable vim-mode
set -o vi

cd ~/Desktop
eza --all --long

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
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

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

# Downloader
alias bd="BBDown -p ALL" # bilibili videos downloader
alias yd="yt-dlp --format 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]'" # youtube videos downloader
