export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls -G'


# For compilers to find ruby
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# For compilers to find openssl@1.1 
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

# For pkg-config to find ruby
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# For pkg-config to find openssl@1.1 
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"



alias config='/usr/bin/git --git-dir=/Users/ksc/.cfg/ --work-tree=/Users/ksc'
