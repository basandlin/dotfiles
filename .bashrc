# .bashrc

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim ~/.vimrc'
alias ba='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias ti='service ntpd restart'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

source ~/.git-completion.bash

# for work
export HIGHBEAMS_SETTINGS="/opt/searchlight/searchlight/settings.py"
alias e='cd /opt/empty-canyon/'
alias g='cd /opt/empty-canyon/spotlight/static/javascripts/nma'
alias gs='gulp styles'
alias i='cd /opt/empty-canyon/etc/instance'
alias int='cd /opt/empty-canyon/spotlight/integration'
alias display='Xvfb :10 -ac &'
alias nt='python3 -m "nose"'

export http_proxy=http://10.2.0.123:8888
export https_proxy=http://10.2.0.123:8888
export ftp_proxy=http://10.2.0.123:8888
export no_proxy="localhost, 127.0.0.1, 10.2.0.28"

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
