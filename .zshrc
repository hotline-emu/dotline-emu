export ZSH="/home/hotline-emu/.oh-my-zsh"
export TERM=xterm-256color
ZSH_THEME="spaceship"
SPACESHIP_USER_SHOW=always
# SPACESHIP_USER_COLOR=magenta
SPACESHIP_PROMPT_ORDER=(
  venv          # virtualenv section
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
    aws
)

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
source $HOME/.inputrc
export PATH=$HOME/bin:$PATH
export PATH=$NVM_BIN:$PATH
export PATH=./vendor/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
fpath=($fpath "/home/hotline-emu/.zfunctions")

export NVM_DIR="/home/hotline-emu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
