# Basic auto/tab complete
autoload -U compinit
compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots) # Include hidden files.

# Use vim keys in tab complete menu
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# keybindings
bindkey '^[f' autosuggest-accept # <alt-f>

