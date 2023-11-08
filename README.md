# Dotfiles

## Installing

	git clone https://github.com/cchristion/dotfiles.git
	cd dotfiles
	ln -s .config ${XDG_CONFIG_HOME:-$HOME/.config}
	ln -s .zshenv ${XDG_CONFIG_HOME:-$HOME/.zshenv}

## (Optional) Installing fast-syntax-highlight plugin for zsh

	mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins
	cd ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins
	git clone https://github.com/zdharma-continuum/fast-syntax-highlighting
