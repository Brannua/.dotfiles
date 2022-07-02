#!/usr/bin/env bash

DOTFILES_PATH=~/Code/dotfiles
BASH_SRC_PATH=$DOTFILES_PATH/bash
GIT_SRC_PATH=$DOTFILES_PATH/git

if [[ -f $BASH_SRC_PATH/.env ]]; then
    . $BASH_SRC_PATH/.env
fi

if [[ -f $BASH_SRC_PATH/.aliases ]]; then
    . $BASH_SRC_PATH/.aliases
fi

if [[ -f $GIT_SRC_PATH/.gitstatus/gitstatus.prompt.sh ]]; then
    . $GIT_SRC_PATH/.gitstatus/gitstatus.prompt.sh
fi

alias dot="cd $DOTFILES_PATH"
alias rl=". ~/.bashrc; echo '~/.bashrc reloaded.'"

