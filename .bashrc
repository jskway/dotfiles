export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls -G'




alias config='/usr/bin/git --git-dir=/Users/ksc/.cfg/ --work-tree=/Users/ksc'
