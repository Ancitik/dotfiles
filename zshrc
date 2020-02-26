export ZSH=~/.oh-my-zsh
export EDITOR='vim'
export URLPROXY=''
export HTTPPROXY='http://'$URLPROXY
export HTTPSPROXY='https://'$URLPROXY

eval $(thefuck --alias)

ZSH_THEME="af-magic"

plugins=(docker docker-compose git github history npm nvm)

# add aliases
source $HOME/.aliases
source $HOME/.aliases_custom

source $ZSH/oh-my-zsh.sh

export PATH="$PATH"
