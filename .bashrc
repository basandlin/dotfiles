# .bashrc

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias sv='source ~/.vimrc'
alias ba='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

source ~/.git-completion.bash

# for work
export HIGHBEAMS_SETTINGS="~/settings.py"

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
