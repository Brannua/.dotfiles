##   _________  _   _ ____   ____
##  |__  / ___|| | | |  _ \ / ___|
##    / /\___ \| |_| | |_) | |
##   / /_ ___) |  _  |  _ <| |___
##  /____|____/|_| |_|_| \_\\____|
##
##  Author: lpj
##

#
##### Default
#
export ZSH="/home/lpj/.oh-my-zsh"

#
##### Cache
#
if [ ! -d "$HOME/.cache/zsh" ]; then
    mkdir -p $HOME/.cache/zsh
fi
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST


#
##### ZSH_THEME
#
ZSH_THEME="bira"


#
##### ZSH_Plugins
# 
plugins=(
    extract
    command-not-found
    zsh-autosuggestions
    zsh-syntax-highlighting
    colored-man-pages
)

#
##### Load
#
source $ZSH/oh-my-zsh.sh


#
##### Proxy
# 
export https_proxy=http://127.0.0.1:8889
export http_proxy=http://127.0.0.1:8889
export all_proxy=http://127.0.0.1:8889


#
##### Alias
# 
alias s="screenfetch"
alias us="sudo pacman -Syu"

alias open="xdg-open"
alias ovr="vim ~/.vimrc"
alias ozr="vim ~/.zshrc"

alias ls="exa --icons"
alias l="exa --icons --header --long -aa --git"
alias ll="exa --icons --header --long -aa --git"

alias q="exit"
alias c="clear"
alias mv="mv -i"
alias rm="rm -i"
alias x="extract"

alias gts="git status"
alias gta="git add ."
alias gtc="git commit -m"
alias gtp="git push"
alias gtd="git diff | bat"

alias tm="tmux"
alias tree="broot"
alias grep="rg"
alias top="htop"
alias ps="procs"


#
##### https://liupj.top/2022/02/25/display-android-screen-to-manjaro-pc/
#
alias scrcpy="scrcpy -w -S -m 1920"


#
##### Translator
#
export YOUDAO_APP_ID=有道智云
export YOUDAO_APP_KEY=有道智云
alias fy="t"


#
##### Node Version Manager
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


#
##### Fuzzy File Finder（https://github.com/junegunn/fzf#using-git）
#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#
##### https://github.com/Brannua/cowsay-words
#
alias v="fortune -s | cowsay"
v

