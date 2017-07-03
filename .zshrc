# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
#export EDITOR=mvim

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="maleko"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler docker git hanami heroku pg rails rspec ruby zsh-nvm ctags)

source $ZSH/oh-my-zsh.sh

unsetopt auto_name_dirs

# Customize to your needs...

export PATH="/usr/local/bin:/bin:/usr/bin:/Users/marc/bin:/usr/local/Cellar/python/2.7.1/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Users/marc/.nodenv/shims::$PATH"

# Node
export NODE_PATH=/usr/local/lib/node

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias rspec='nocorrect bundle exec rspec'

# User configuration
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="Marc"

eval $(thefuck --alias)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#Add path for GO
export GOPATH="$HOME/workspace/go"

export PATH="$GOPATH/bin:$PATH"

bindkey "^[[3~" delete-char

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export BUNDLER_EDITOR="vi"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ctags='/usr/local/bin/ctags'
