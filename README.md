# Watermelon

## Installing

	git clone --depth 1 https://github.com/cchristion/watermelon.git
	cd watermelon
	cp -rsv $(pwd)/.config ~/
	cp -rsv $(pwd)/.zshenv ~/.zshenv

## (Optional) Installing fast-syntax-highlight plugin for zsh

	mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins
	git clone --depth 1 https://github.com/zdharma-continuum/fast-syntax-highlighting ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/plugins
