export ZSH="/home/hotline-emu/.oh-my-zsh"
ZSH_THEME="spaceship"
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR=magenta
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
source $HOME/.inputrc
export PATH=$HOME/bin:$PATH
export PATH=./vendor/bin:$PATH
