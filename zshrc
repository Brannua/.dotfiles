# Enable vi-mode
set -o vi

# edit
alias ovr="vim ~/.vimrc"
alias ofr="vim ~/.config/fish/config.fish"
alias ozr="vim ~/.zshrc"

# reload current shell
alias rl="source ~/.zshrc"

# Some basic settings
alias q=exit
alias c=clear
alias ..="cd .."

# ...
alias v=vim
alias vi=vim
alias vmi=vim
alias ivm=vim
alias imv=vim
alias miv=vim
alias mvi=vim

alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"

# Some useful tools
alias t=tmux
alias cat=bat
alias s=neofetch

alias ls=eza
alias l="eza --all --long"
alias ll="eza --all --long"
alias lt="eza --all --long --tree"

alias bd="BBDown -p ALL"																					# bilibili videos downloader
alias yd="yt-dlp --format 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]'"	# youtube videos downloader

# Proxy
alias unproxy="unset http_proxy"
alias proxy="export http_proxy=http://127.0.0.1:1087"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh	# Enable autojump
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh										# Enable autosuggestions
source <(fzf --zsh)																																					# Set up fzf key bindings and fuzzy completion

# # Show a ^C in canceled command line in zsh like bash does
# function TRAPINT() {
# 	print -n "^C"
# 
# 	# return the same status as if the signal had not been trapped. refs: https://helpful.wiki/zsh/
# 	return $(( 128 + $1 ))
# }

# mkdir and cd into it
function mcd () {
    mkdir -p "$1"
    cd "$1"
}

# launch yazi
function r() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

