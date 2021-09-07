
# Path to your oh-my-zsh installation.
export ZSH="/home/lpj/.oh-my-zsh"

# default editor
export EDITOR=/usr/bin/vim

# proxy
export https_proxy=http://127.0.0.1:8889
export http_proxy=http://127.0.0.1:8889
export all_proxy=http://127.0.0.1:8889

# random agnoster robbyrussell
ZSH_THEME="strug"

# double esc to add todo
bindkey -s '\e\e' '\C-asudo \C-e'

# autojump need to be installed manually
plugins=(
    autojump
    colored-man-pages
    command-not-found
    extract
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# useful alias 
alias q="exit"
alias c="clear"
alias mv="mv -i"
alias x="extract"
alias his="history"
alias us="yay -Syyu"
alias s="screenfetch -D arch"

# git
alias gts="git status"
alias gtr="git rm"
alias gta="git add ."
alias gtc="git commit -m"
alias gtp="git push"
alias gtl="git log --reverse"
alias gtd="git diff"

# open & reload
alias ozr="vim ~/.zshrc"
alias rzr="source ~/.zshrc"

# useful programs
alias fd="rg"
alias cat="bat"
alias less="bat"
alias more="bat"
alias ps="procs"
alias top="htop"
alias ls="exa -al"
alias ra="ranger"
alias cowsay="fortune -s | cowsay"

alias fy="t"
export YOUDAO_APP_ID=xxx
export YOUDAO_APP_KEY=xxx

cowsay
