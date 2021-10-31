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

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '( %b )'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%1d ${vcs_info_msg_0_} %# '

########
# Alias
########

alias pgup='brew services start postgres'
alias pgdown='brew services stop postgres'

alias redup="brew services start redis"
alias reddown="brew services stop redis"

# python simple server optional port param ( defaults to 8000 )
alias serve='python -m SimpleHTTPServer $1'


