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

# Eye candy prefixes
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{027}\u2660 %F{033}\u2666 %F{039}\u2663 %F{051}\u2665 %F{087}\u2911 %F{014}"

# Elements for the powerline
POWERLEVEL9K_BATTERY_VERBOSE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery user public_ip vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

# The only appropriate timestamp format
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git,
  tmux,
  composer,
  docker,
  docker-compose
)

source $ZSH/oh-my-zsh.sh
# PHPUnit plugin
source $HOME/projects/external/phpunit.plugin.zsh/phpunit.plugin.zsh
source $HOME/projects/external/phpcs.plugin.zsh/phpcs.plugin.zsh

# Manually set language environment
export LANG=en_US.UTF-8

# Personal configs
source $HOME/.aliases
source $HOME/.inputrc
source $HOME/.npmrc
source $HOME/.profile

# For lazy runs of phpunit, etc.
export PATH=:./vendor/bin:$PATH
