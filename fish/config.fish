if status is-interactive
  # Commands to run in interactive sessions can go here
end

# Enable vi-mode
fish_vi_key_bindings

# edit
alias ovr="vim ~/.vimrc"
alias ofr="vim ~/.config/fish/config.fish"
alias ozr="vim ~/.zshrc"

# reload current shell
alias rl="source ~/.config/fish/config.fish"

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

# videos' downloader
alias bd="BBDown -p ALL"
alias yd="yt-dlp --format 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]'"

# Proxy
alias unproxy="unset http_proxy"
alias proxy="export http_proxy=http://127.0.0.1:1087"

# Set up fzf key bindings
fzf --fish | source

# mkdir and cd into it
function mcd
  mkdir -p $argv
	echo $argv
  cd $argv
end

# launch yazi
function r
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

