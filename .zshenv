export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# XDG paths
export XDG_DATA_HOME="${XDG_DATA_HOME:=$HOME/.local/share}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:=$HOME/.cache}"

# Add local bin to path
export PATH="$HOME/.local/bin:$PATH"

# Shell and locale config
export SHELL="/bin/zsh"
export LC_ALL="C.UTF-8"

# Comment to enable tmux
TMUX=X
