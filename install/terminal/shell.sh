#!/usr/bin/env zsh

if [[ -f ~/.zshrc ]]; then
	cp ~/.zshrc ~/.zshrc.bak
fi

cp ~/.local/share/mynd/configs/shell/zshrc ~/.zshrc
