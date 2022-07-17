export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git vi-mode python)
source $ZSH/oh-my-zsh.sh
bindkey -v

if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi
