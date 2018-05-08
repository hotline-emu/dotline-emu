# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/hotline-emu/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster" # Has nice powerline.

# Powerlevel 9K Config
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# Left prompt backgrounds
POWERLEVEL9K_PUBLIC_IP_BACKGROUND='087'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='045'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='033'

# Left prompt foregrounds
POWERLEVEL9K_PUBLIC_IP_FOREGROUND='242'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='238'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='255'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="»» "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery user public_ip vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git,
  tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Manually set language environment
export LANG=en_US.UTF-8