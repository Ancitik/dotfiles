# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=~/.oh-my-zsh
export EDITOR='nvim'
export URLPROXY=''
export HTTPPROXY='http://'$URLPROXY
export HTTPSPROXY='https://'$URLPROXY
export KUBECONFIG='/Users/alaurans/.kube/config'
export SPACESHIP_KUBECTL_SHOW=true
export GOPATH=$HOME/go

ZSH_THEME="spaceship"
ZSH_TMUX_AUTOSTART='false'
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  azure
  ansible
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  php           # PHP section
  docker        # Docker section
  aws           # Amazon Web Services section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
#  battery       # Battery level and status
#  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
  venv
)

plugins=(docker docker-compose git npm nvm terraform vagrant zsh-completions gatsby kubectl helm github oc tmux virtualenv)

# add aliases
source $HOME/.aliases
source $HOME/.aliases_custom

source $ZSH/oh-my-zsh.sh

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

autoload -U +X bashcompinit && bashcompinit

source <(stern --completion=zsh)
source /opt/homebrew/etc/bash_completion.d/az

# Scaleway CLI autocomplete initialization.
eval "$(scw autocomplete script shell=zsh)"
eval "$(k3d completion zsh)"
source <(argocd completion zsh)
