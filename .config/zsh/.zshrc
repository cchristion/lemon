# Custom Fork of Luke's config for the Zoomer Shell
# https://github.com/LukeSmithxyz/voidrice/blob/master/.config/zsh/.zshrc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] && source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

# Set default shell to zsh
export SHELL="/bin/zsh"

# Automatically cd into typed directory.
setopt autocd

# Enable Comments
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   # Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line && zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

# History complete command
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Load aliases and shortcuts if existent.
[[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cmd" ]] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/cmd"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh
[[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/.p10k.zsh" ]] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/.p10k.zsh"

# Use LS_COLORS to color-code completion menu entries
[[ -z "$LS_COLORS" ]] || zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Load syntax highlighting; should be last.
source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" 2>/dev/null

# Load powerlevel10k theme; should be last
source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme" 2>/dev/null
