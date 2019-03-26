# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source only ID from /etc/os-release
if [ -f /etc/os-release ]; then
        source <(grep '^ID=' /etc/os-release)
        #. /etc/os-release
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

PS1='[\u@\h($ID) \w]\$ '
export PS1

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
shopt -s cdable_vars
export repos=$HOME/Repositories
export Repos=$HOME/Repositories

# Creates a disposable Ubuntu container
alias tmpsh="docker run -it --rm ubuntu /bin/bash"
alias tracert="traceroute"

alias dockersay="docker run --rm docker/whalesay cowsay"
