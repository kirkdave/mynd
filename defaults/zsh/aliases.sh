alias ls='eza -lh --group-directories-first --icons'
alias ll='ls'
alias la='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
eval "$(zoxide init zsh)"
alias cd='z'

# move between directories quickly
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# quicker access to tools
alias vim="nvim"
alias n="nvim"
alias dc="docker-compose"
