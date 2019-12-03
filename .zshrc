export ZSH="/home/hotline-emu/.oh-my-zsh"
export TERM=xterm-256color

ZSH_THEME="steeef"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
    ssh-agent
)

# Completion settings
zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

# SSH-Agent load these
zstyle :omz:plugins:ssh-agent identities id_rsa james.galecki

#Default terminal
export EDITOR=/usr/bin/emacs

#Source files
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
source $HOME/.inputrc

# Path modifications
export PATH=$HOME/bin:$PATH
export PATH=$NVM_BIN:$PATH
export PATH=./vendor/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
fpath=($fpath "/home/hotline-emu/.zfunctions")

# Lazy load NVM environment, will not invoke until first request of nvm, node, or npm
export NVM_DIR="/home/hotline-emu/.nvm"
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}

# Start tmux on launch
if [ "$TMUX" = ""  ]; then tmux; fi

