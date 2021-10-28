SUBL="/Applications/Sublime\\ Text.app/Contents/SharedSupport/bin/subl"
export SUBL=$SUBL
# export EDITOR=$SUBL
alias subl=$SUBL

SMERGE="/Applications/Sublime\\ Merge.app/Contents/SharedSupport/bin/smerge"
export SMERGE=$SMERGE
alias smerge=$SMERGE

PERSONALBIN="$HOME/bin"
COMPOSERBIN="$HOME/.composer/vendor/bin"
# GIT_PATH="/usr/local/Cellar/git/2.9.0"

RVM="$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH=$PERSONALBIN:$COMPOSERBIN:$GIT_PATH:$RVM:$PATH

export NVM_DIR="/Users/garyanewsome/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PS1="\W $ "

### Not Working Section
GPG_TTY=$(tty)
export GPG_TTY
###

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias cheat="cht.sh"
eval $(thefuck --alias)

cowsay -f tux < /Users/garyanewsome/GitHub/cowsay.txt
alias cowlist="cowsay -f tux < '/Users/garyanewsome/GitHub/cowsay.txt'"

alias phalcon=$COMPOSERBIN/phalcon.php

alias pgup='brew services start postgres'
alias pgdown='brew services stop postgres'

alias redup="brew services start redis"
alias reddown="brew services stop redis"

alias mysqlup='mysql.server start'
alias mysqldown='mysql.server stop'

alias ugh='rm -rf node_modules/ bower_components/ && npm cache clean && bower cache clean && npm i && bower i'

# python simple server
alias serve='python -m SimpleHTTPServer'

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /Users/garyanewsome/.nvm/versions/node/v6.3.1/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /Users/garyanewsome/.nvm/versions/node/v6.3.1/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
