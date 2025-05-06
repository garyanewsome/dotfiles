SUBL="/Applications/Sublime\\ Text.app/Contents/SharedSupport/bin/subl"
export SUBL=$SUBL
alias subl=$SUBL

SMERGE="/Applications/Sublime\\ Merge.app/Contents/SharedSupport/bin/smerge"
export SMERGE=$SMERGE
alias smerge=$SMERGE

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#################
# Set zsh prompt
#################

autoload -U colors && colors

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
PROMPT='%{$fg[green]%}%n%{$reset_color%} %{$fg[blue]%}%1~%{$reset_color%} %{$fg[yellow]%}$(parse_git_branch)%{$reset_color%} $ '


########
# Alias
########

alias pgup='brew services start postgres'
alias pgdown='brew services stop postgres'

alias redup="brew services start redis"
alias reddown="brew services stop redis"

alias repl="NODE_PATH=$(npm root -g) node"

# python simple server optional port param ( defaults to 8000 )
alias serve='python -m SimpleHTTPServer $1'

############
# Functions
############

docker-reset () {
    docker rmi $(docker images -a -q) || true
    docker system prune -f
    docker volume prune -f
}
