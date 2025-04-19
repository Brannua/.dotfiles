# Enable vi-mode
set -o vi

# https://www.ruanyifeng.com/blog/2015/04/fortune.html
fortune | cowsay

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

# Some useful tools
alias f=fish
alias t=tmux
alias cat=bat
alias s=neofetch

alias ls=eza
alias l="eza --all --long"
alias ll="eza --all --long"
alias lt="eza --all --long --tree"

# videos' downloader
alias bd="BBDown -p ALL"
alias yd="yt-dlp --format 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]'"

# Proxy
alias unproxy="unset http_proxy"
alias proxy="export http_proxy=http://127.0.0.1:1087"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(fzf --zsh)

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

# 设置 fd 的默认排除项（按需修改）
# --hidden：搜索隐藏文件
# --follow：跟踪符号链接
export FD_OPTIONS="--hidden --follow --max-depth 5"
export FD_OPTIONS="$FD_OPTIONS --exclude .cache --exclude .local --exclude .tldrc --exclude .Trash --exclude .V2rayU --exclude .vim --exclude Library"
export FD_OPTIONS="$FD_OPTIONS --exclude .git --exclude node_modules"

export FZF_DEFAULT_COMMAND="fd --type f $FD_OPTIONS"

alias fzfdf="fd --type f $FD_OPTIONS | fzf --reverse --preview 'bat --color=always --style=numbers {}'"
alias fzfdd="fd --type d $FD_OPTIONS | fzf --reverse --preview 'eza --tree --level=2 --icons {}'"

