#!/usr/bin/env zsh

if [[ -f ~/.zshrc ]]; then
	cp ~/.zshrc ~/.zshrc.bak
fi
cp ~/.local/share/mynd/configs/shell/zshrc ~/.zshrc

if [[ -f ~/.zprofile ]]; then
	cp ~/.zprofile ~/.zprofile.bak
fi
cp ~/.local/share/mynd/configs/shell/zprofile ~/.zprofile

if [[ -f ~/.p10k.zsh ]]; then
	cp ~/.p10k.zsh ~/.p10k.zsh.bak
fi
cp configs/shell/p10k.zsh ~/.p10k.zsh
