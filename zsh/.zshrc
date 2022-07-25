SHELL_CFG_DIR=~/Code/dotfiles/shell
ZSH_CFG_DIR=~/Code/dotfiles/zsh
PLUGINS_DIR=/usr/share/zsh/plugins

########################
# common
########################

if [[ -f $SHELL_CFG_DIR/aliases ]]; then
    source $SHELL_CFG_DIR/aliases
fi

if [[ -f $SHELL_CFG_DIR/funcs ]]; then
    source $SHELL_CFG_DIR/funcs
fi

########################
# zsh
########################

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

if [[ -f $ZSH_CFG_DIR/env.zsh ]]; then
    source $ZSH_CFG_DIR/env.zsh 
fi

if [[ -f $ZSH_CFG_DIR/completion.zsh ]]; then
    source $ZSH_CFG_DIR/completion.zsh 
fi

if [[ -f $ZSH_CFG_DIR/aliases.zsh ]]; then
    source $ZSH_CFG_DIR/aliases.zsh 
fi

if [[ -f $ZSH_CFG_DIR/prompt.zsh ]]; then
    source $ZSH_CFG_DIR/prompt.zsh 
fi

if [[ -f $ZSH_CFG_DIR/vi.zsh ]]; then
    source $ZSH_CFG_DIR/vi.zsh 
fi

if [[ -f $ZSH_CFG_DIR/funcs.zsh ]]; then
    source $ZSH_CFG_DIR/funcs.zsh
fi

########################
# plugins
########################

if [[ -f $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -f $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# fzf
[[ -f /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh
[[ -f /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                    # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

hello
