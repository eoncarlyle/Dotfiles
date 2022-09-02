export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git vi-mode python)
source $ZSH/oh-my-zsh.sh
bindkey -v
alias git1L="git log --oneline | head"
