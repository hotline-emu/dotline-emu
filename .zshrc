export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="/home/hotline-emu/.oh-my-zsh"

# Powerlevel 9K Config
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

# Eye candy prefixes
POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u2911  "

# Elements for the powerline
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="blue"
POWERLEVEL9K_HOST_LOCAL_BACKGROUND="cyan"
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %m.%d.%Y}"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_MODE='nerdfont-complete'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  composer,
  docker,
  docker-compose
)

# Bring in the aliases and configs
source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.inputrc
source ~/.npmrc
source ~/.profile

# Path manipulations
PATH=:./vendor/bin:$PATH
PATH=$HOME/bin:$PATH

# NPM Tomfoolery
PATH=$HOME/.npm-packages/bin:$PATH

# Composer Tomfoolery
COMPOSER_PACKAGES="~/.composer/vendor"
PATH="$COMPOSER_PACKAGES/bin:$PATH"

# These manual plugins too
source $HOME/projects/external/phpunit.plugin.zsh/phpunit.plugin.zsh
source $HOME/projects/external/phpcs.plugin.zsh/phpcs.plugin.zsh

zstyle ':completion:*' ignored-patterns '*HEAD*'

# neofetch
