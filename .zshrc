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

# test net speed(yay -S speed-test)
alias netspeed="speed-test -v"

# download videos from internet(sudo pacman -S you-get)
alias dvideo="you-get"

# random agnoster robbyrussell strug fino juanghurtado
ZSH_THEME="tjkirch"

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
alias his="history | bat"
alias us="sudo pacman -Syu"
alias s="screenfetch"

# git
alias gts="git status"
alias gtr="git rm"
alias gta="git add ."
alias gtc="git commit -m"
alias gtp="git push"
alias gtl="git log | bat"
alias gtd="git diff | bat"

# open & reload
alias ozr="vim ~/.zshrc"
alias rzr="source ~/.zshrc"
alias ovr="vim ~/.vimrc"

# useful programs
alias fd="rg"
alias bat="bat"
alias ps="procs"
alias top="htop"
alias ls="exa"
alias ra="ranger"

# translator
alias fy="t"
export YOUDAO_APP_ID=有道智云
export YOUDAO_APP_KEY=有道智云

# PATH
export PATH=$PATH:/home/lpj/.local/share/gem/ruby/3.0.0/bin

# cowsay words
alias v="fortune -s | cowsay"
v

# musicbox
alias music="musicbox"