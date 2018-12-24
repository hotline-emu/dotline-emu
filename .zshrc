export ZSH="/home/hotline-emu/.oh-my-zsh"
ZSH_THEME="spaceship"
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR=magenta
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
)

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
source $HOME/.inputrc
export PATH=$HOME/bin:$PATH
export PATH=./vendor/bin:$PATH
fpath=($fpath "/home/hotline-emu/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
