# Path to your oh-my-zsh installation.
export ZSH="/home/lpj/.oh-my-zsh"

# ZSH_THEME="random"
ZSH_THEME="bira"

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

# video downloader（lux, in AUR is lux-dl.）
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
alias s="screenfetch"
alias open="xdg-open"

alias q="exit"
alias c="clear"
alias mv="mv -i"
alias rm="rm -i"
alias x="extract"

alias l="exa --icons --header --long -aa --git"
alias ll="exa --icons --header --long -aa --git"
alias ls="exa"

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

# 终端复用器
alias tm="tmux"

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

# 背单词
# alias v="fortune -s | cowsay"
# v

