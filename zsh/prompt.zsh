# https://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html
autoload -U colors && colors
autoload -U vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats "%{$reset_color%}%B%m%u%c %{$fg[green]%}%b %{$fg[magenta]%}%~"

# Set up the prompt
setopt PROMPT_SUBST
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$fg[red]%}]%{$reset_color%}$ "
RPROMPT='$vcs_info_msg_0_'

