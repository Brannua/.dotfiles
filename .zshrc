# Create a cache folder if it isn't exists
if [ ! -d "$HOME/.cache/zsh" ]; then
    mkdir -p $HOME/.cache/zsh
fi

# Define a custom file for compdump
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump-$HOST-$ZSH_VERSION"

# Path to your oh-my-zsh installation.
export ZSH="/home/lpj/.oh-my-zsh"

# default editor
export EDITOR=/usr/bin/vim

# proxy
export https_proxy=http://127.0.0.1:8889
export http_proxy=http://127.0.0.1:8889
export all_proxy=http://127.0.0.1:8889

# ZSH_THEME="random"
ZSH_THEME="muse"
# ZSH_THEME="strug"
# ZSH_THEME="juanghurtado"
# ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"

# autojump need to be installed manually
plugins=(
    sudo
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
alias us="sudo pacman -Syu"
alias s="screenfetch"

# git
alias gts="git status"
alias gtr="git rm"
alias gta="git add ."
alias gtc="git commit -m"
alias gtp="git push"
alias gtl="git log | bat"
alias gtd="git diff"

# open & reload
alias ozr="vim ~/.zshrc"
alias rzr="source ~/.zshrc"
alias ovr="vim ~/.vimrc"

# useful programs
alias fd="rg"
alias bat="bat"
alias ps="procs"
alias top="htop"
alias ls="exa -al"
alias ra="ranger"

# translator
alias fy="t"
export YOUDAO_APP_ID=有道智云
export YOUDAO_APP_KEY=有道智云

# cowsay words
alias cowsay="fortune -s | cowsay"
cowsay
