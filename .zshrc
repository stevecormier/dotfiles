# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PROJECTS=~/dev

ZSH_THEME="steve"

CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/games/bin:/usr/local/git/bin"
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Source external files.
[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.private ]] && source ~/.private

