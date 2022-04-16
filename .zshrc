# Path to your oh-my-zsh installation.
export ZSH="/home/lpj/.oh-my-zsh"

# ZSH_THEME="random"
# ZSH_THEME="agnoster"
# ZSH_THEME="fino"
ZSH_THEME="juanghurtado"
# ZSH_THEME="tjkirch"
# ZSH_THEME="strug"
# ZSH_THEME="robbyrussell"

# Create a cache folder if it isn't exists
if [ ! -d "$HOME/.cache/zsh" ]; then
    mkdir -p $HOME/.cache/zsh
fi

# Define a custom file for compdump
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump-$HOST-$ZSH_VERSION"

# default editor
export EDITOR=/usr/bin/vim

# proxy
export https_proxy=http://127.0.0.1:8889
export http_proxy=http://127.0.0.1:8889
export all_proxy=http://127.0.0.1:8889

# net-speed-tester
# 访问 speed-test 的 github 获取下载安装方式
alias netspeed="speed-test -v"

# video downloader
# lux，访问其 github 网站获取下载安装方式，在 AUR 上，包名为 lux-dl 或 lux-dl-bin
alias annie="lux"

plugins=(
    sudo
    colored-man-pages
    command-not-found
    extract
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias ozr="vim ~/.zshrc"
alias ovr="vim ~/.vimrc"
alias us="sudo pacman -Syu"
alias s="neofetch"

alias q="exit"
alias c="clear"
alias mv="mv -i"
alias rm="rm -i"
alias x="extract"

alias ls="exa"
alias l="exa --long --git"
alias lt2="exa --tree --level=2"

# git
alias gts="git status"
alias gtr="git rm"
alias gta="git add ."
alias gtc="git commit -m"
alias gtp="git push"
alias gtd="git diff | bat"
alias gtl="git log | bat"

alias grep="rg" # ripgrep
alias bat="bat"
alias top="htop"
alias ps="procs"

# translator
alias fy="t"
export YOUDAO_APP_ID=有道智云
export YOUDAO_APP_KEY=有道智云

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# 手机投屏
alias scrcpy="scrcpy -w -S -m 1920"

# cowsay words
alias v="fortune -s | cowsay"
v

alias t="tmux"
