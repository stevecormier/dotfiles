CDPATH=~/.paths

alias thing='cd ~/dev/thingiverse'
alias mb='cd ~/dev/makerbot.com'
alias store='cd ~/dev/enterprise'

alias todo='vim ~/Dropbox/todo.txt'

alias ls='ls -GF'
alias ll='ls -l -GFh'

source ~/.git-completion.sh
source ~/.git-prompt.sh

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)

BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

PS1='\[${BLUE}\]\u\[${WHITE}\] in \[${BRIGHT}${YELLOW}\]\w\[${NORMAL}${WHITE}\]`__git_ps1 " on \[${BLUE}\]%s"`\[${WHITE}\]\r\n\[${NORMAL}\]- '
