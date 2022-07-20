DOTFILES_PATH=~/Code/dotfiles
SHELL_SRC_PATH=$DOTFILES_PATH/shell
ZSH_SRC_PATH=$DOTFILES_PATH/zsh

if [[ -f $ZSH_SRC_PATH/.cfg ]]; then
    source $ZSH_SRC_PATH/.cfg
fi

if [[ -f $SHELL_SRC_PATH/.aliases ]]; then
    source $SHELL_SRC_PATH/.aliases
fi

if [[ -f $SHELL_SRC_PATH/.functions ]]; then
    source $SHELL_SRC_PATH/.functions
fi

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias dot="cd $DOTFILES_PATH"
alias rl="source ~/.zshrc; echo '~/.zshrc reloaded.'"

