HISTCONTROL=ignorespace

DOTFILES_PATH=~/Code/dotfiles
SHELL_SRC_PATH=$DOTFILES_PATH/shell
BASH_SRC_PATH=$DOTFILES_PATH/bash
GIT_SRC_PATH=$DOTFILES_PATH/git

if [[ -f $BASH_SRC_PATH/.cfg ]]; then
    . $BASH_SRC_PATH/.cfg
fi

if [[ -f $SHELL_SRC_PATH/.aliases ]]; then
    . $SHELL_SRC_PATH/.aliases
fi

if [[ -f $SHELL_SRC_PATH/.functions ]]; then
    . $SHELL_SRC_PATH/.functions
fi

alias dot="cd $DOTFILES_PATH"

alias r=". ~/.bashrc; echo '~/.bashrc reloaded.'"
alias rl=". ~/.bashrc; echo '~/.bashrc reloaded.'"

