# Enable vi-mode in zsh
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e
autoload edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

