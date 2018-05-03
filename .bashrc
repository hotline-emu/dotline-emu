# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# This is a modified version of boweevil's, .bashrc. I already used this file in my own.
source $HOME/.aliases

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
        elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# I keep a bin folder for global scripts.
PATH=$HOME/bin:$PATH

# For lazy runs of phpunit, etc.
PATH=:./vendor/bin:$PATH

# Add git branch if its present to PS1
parse_git_branch() {
    git branch 2> /dev/null | sed -e ' /^[^*]/d' -e 's/*\(.*\)/ [\1 ]/'
}

spade() {
    echo -e '\u2660 '
}

club() {
    echo -e '\u2663 '
}

heart() {
    echo -e '\u2665 '
}

diamond() {
    echo -e '\u2666 '
}

# Arrow unicode character, and some swappables.
arrow() {
    # echo -e '\u21e2' # dot dot arrow
    echo -e '\u2325 ' # Branch notation
    # echo -e '\u22d9 ' # Triple chevron
    # echo -e '\u30e0' # Katakana hotness
}

# An overly complicated (but dope) terminal display.
PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[0;91m\]$(spade)\[\033[0;35m\]$(club)\[\033[0;94m\]$(heart)\[\033[0;96m\]$(diamond)\[\033[0;00m\]\[\033[1;32m\][ \w ]\[\033[0;36m\]$(parse_git_branch)\[\033[1;31m\] $(arrow) \[\033[0;33m\]'
export PS1

# You rarely see this, but its what you see if you extend your command to a new line.
PS2='\[\033[0;91m\]$(spade)'
export PS2

# NPM environmental configurations.
NPM_PACKAGES="/home/hotline-emu/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Composer environmental configurations.
COMPOSER_PACKAGES="/home/hotline-emu/.composer/vendor"
PATH="$COMPOSER_PACKAGES/bin:$PATH"
