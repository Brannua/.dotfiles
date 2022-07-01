#!/usr/bin/env bash

DOTFILES_PATH=~/Code/dotfiles
BASH_SRC_PATH=$DOTFILES_PATH/bash

if [[ -f $BASH_SRC_PATH/.env ]]; then
    . $BASH_SRC_PATH/.env
fi

if [[ -f $BASH_SRC_PATH/.aliases ]]; then
    . $BASH_SRC_PATH/.aliases
fi

alias dot="cd $DOTFILES_PATH"
alias rl=". ~/.bashrc; echo '~/.bashrc reloaded.'"

