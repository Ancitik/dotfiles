export ZSH=~/.oh-my-zsh
export EDITOR='vim'
export URLPROXY=''
export HTTPPROXY='http://'$URLPROXY
export HTTPSPROXY='https://'$URLPROXY
export SPACESHIP_KUBECTL_SHOW=false

eval $(thefuck --alias)

ZSH_THEME="af-magic"
# ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  php           # PHP section
  docker        # Docker section
#  aws           # Amazon Web Services section
  kubectl       # Kubectl context section
#  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
#  battery       # Battery level and status
#  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

plugins=(docker docker-compose git npm nvm terraform vagrant zsh-completions gatsby kubectl helm github)

# add aliases
source $HOME/.aliases
source $HOME/.aliases_custom

source $ZSH/oh-my-zsh.sh

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

autoload -U compinit && compinit
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
source <(stern --completion=zsh)
source /etc/bash_completion.d/azure-cli
