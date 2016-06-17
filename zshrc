# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PROJECTS=~/dev

ZSH_THEME="steve"

CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(gitfast)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/games/bin:/usr/local/git/bin"
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Source external files.
[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.localrc ]] && source ~/.localrc


source /Users/stephen.cormier/.iterm2_shell_integration.zsh

export NVM_DIR="/Users/stephen.cormier/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
