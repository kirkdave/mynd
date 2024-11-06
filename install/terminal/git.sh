if [[ -f ~/.gitconfig ]]; then
	cp ~/.gitconfig ~/.gitconfig.bak
fi

cp configs/git/gitconfig ~/.gitconfig
