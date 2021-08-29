# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/lpj/.oh-my-zsh"

# ZSH_THEME="random"
# ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"
ZSH_THEME="strug"

# 连续按两下 ESC 键，即可快速将 sudo 添加到命令最前端
# bindkey -s '\e\e' '\C-asudo \C-e'

# 连续按两下 ESC 键，即可快速将 fy 添加到命令最前端
bindkey -s '\e\e' '\C-afy \C-e'

## 需要安装 autojump
plugins=(
    colored-man-pages
    command-not-found
    extract
    autojump
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# 常用命令
alias q="exit"
alias mv="mv -i"
alias c="clear"
alias cls="clear"
alias ls="exa -al"
alias x="extract"
alias top="htop"
alias his="history"
alias more="bat"

# system
alias us="yay -Syyu"
alias p="shutdown -h now"

# 应用软件
alias ra="ranger"
alias s="screenfetch -D archlinux"
alias gitk="gitkraken ./"
alias transoss="devilspie"
alias train="sl | lolcat"
alias rain="cmatrix | lolcat"

# fd，an alternative to `find`，aim to be faster and easier to use than `find`

# 翻译软件
alias fy="t"

export YOUDAO_APP_ID=xxx
export YOUDAO_APP_KEY=xxx

# 微信配置文件
alias winecfg="/opt/apps/com.qq.weixin.deepin/files/run.sh winecfg"

# git
alias gts="git status"
alias gta="git add ."
alias gtc="git commit -m"
alias gtp="git push"
alias gtl="git log"
alias gtd="git diff"
alias gtr="git rm"

# open & reload
alias ovr="vim ~/.vimrc"
alias ozr="vim ~/.zshrc"
alias rzr="source ~/.zshrc"

# 默认编辑器
export EDITOR=/usr/bin/vim

# 开启终端，老牛说话，语言包位于 -> /usr/share/fortune/
alias cow="fortune -s | cowsay"
cow

# 小猫咪 oneko
alias mice="oneko &"

# 用 rg 匹配文件中的字符
# 比如 rg alias ~/.zshrc 就会输出 ~/.zshrc 文件中所有的 alias

alias ps="procs" # usage: ps 进程名
