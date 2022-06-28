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
alias c=clear
alias q=exit
alias t=tree
alias fig=figlet
alias s=neofetch
alias open=xdg-open

#
##### Git
#
alias gta="git add"
alias gtc="git commit"
alias gtp="git push"
alias gts="git status"
alias gtd="git diff"
alias gtl="git log"

#
#### 加参数
#
alias mv="mv -i"
alias rm="rm -i"
alias xclip="xclip -sel clip"

#
##### 替代品
#
alias ls=exa
alias grep=rg
alias top=htop
alias ps=procs

#
##### 自定义
#
alias ll="exa -lhaa --icons"
alias ghs="sudo cat ~/.secrets/.ghs | xclip"

