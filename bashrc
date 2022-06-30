### 
###  ____    _    ____  _   _ ____   ____     ____ _   _ ____ _____ ___  __  __ 
### | __ )  / \  / ___|| | | |  _ \ / ___|   / ___| | | / ___|_   _/ _ \|  \/  |
### |  _ \ / _ \ \___ \| |_| | |_) | |      | |   | | | \___ \ | || | | | |\/| |
### | |_) / ___ \ ___) |  _  |  _ <| |___   | |___| |_| |___) || || |_| | |  | |
### |____/_/   \_\____/|_| |_|_| \_\\____|___\____|\___/|____/ |_| \___/|_|  |_|
###                                     |_____|                                 
###  Author: lpj
###

export EDITOR=vim

#
##### Activate vi mode with <Escape>
#
set -o vi
bind -m vi-command "Control-l: clear-screen"
bind -m vi-insert "Control-l: clear-screen"

#
##### fzf
#
[[ -f /usr/share/fzf/completion.bash ]] && . /usr/share/fzf/completion.bash
[[ -f /usr/share/fzf/key-bindings.bash ]] && . /usr/share/fzf/key-bindings.bash

#
##### 别名
#
alias v=vim
alias c=clear
alias q=exit
alias t=tree
alias fig=figlet
alias s=neofetch
alias open=xdg-open

#
##### Git
#
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gs="git status"
alias gd="git diff"
alias gl="git log"

#
#### 加参数
#
alias mv="mv -i"
alias rm="rm -i"
alias mkdir="mkdir -p"
alias xclip="xclip -sel clip"

#
##### 替代品
#
alias ls=exa
alias sl=exa
alias grep=rg
alias top=htop
alias ps=procs

#
##### 自定义
#
alias ll="exa -lhaa"
alias ghs="sudo cat ~/.secrets/.ghs | xclip"

#
##### NVM
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

