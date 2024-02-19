# Custom Fork of Luke's config https://github.com/LukeSmithxyz/voidrice/blob/master/.config/zsh/.zshrc

# Source Powerlevel10k instant prompt
source "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh" 2>/dev/null

# Options
setopt autocd interactive_comments HIST_EXPIRE_DUPS_FIRST HIST_IGNORE_ALL_DUPS SHARE_HISTORY

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh/history"

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Key bindings
bindkey -M menuselect 'h' vi-backward-char 'k' vi-up-line-or-history 'l' vi-forward-char 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e
autoload edit-command-line && zle -N edit-command-line
bindkey '\C-e' edit-command-line

# History complete command
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Color-coded completion menu (if LS_COLORS is set)
[[ -z "$LS_COLORS" ]] || zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Themes and plugins
source "$XDG_CONFIG_HOME/zsh/.p10k.zsh" 2>/dev/null
source "$XDG_CONFIG_HOME/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme" 2>/dev/null
source "$XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" 2>/dev/null

# Extra configurations
source "$XDG_CONFIG_HOME/zsh/.extras"
source "$XDG_CONFIG_HOME/zsh/.local"

