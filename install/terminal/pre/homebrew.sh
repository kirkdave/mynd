#!/usr/bin/env zsh

if [[ ! -f "/opt/homebrew/bin/brew" ]]; then
	echo -e "Installing Homebrew package manager..."
	NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
