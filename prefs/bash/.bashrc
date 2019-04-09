# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source only ID from /etc/os-release
if [ -f /etc/os-release ]; then
        source <(grep '^ID=' /etc/os-release)
        #. /etc/os-release
        PS1='[\u@\h($ID) \w]\$ '
else
        PS1='[\u@\h \w]\$ '
fi
export PS1

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

export GPG_TTY=$(tty)

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
shopt -s cdable_vars
export repos=$HOME/Repositories
export Repos=$HOME/Repositories

# Creates disposable Docker containers
alias tmpsh="docker run -it --rm ubuntu /bin/bash" # Disposable Ubuntu bash shell
alias dockersay="docker run --rm docker/whalesay cowsay" # Disposable Whalesay
alias dsu='docker run --rm -it -v="/:/opt" --name Docker_SU ubuntu /bin/bash -c "(apt-get update -y >/dev/null 2>&1; apt-get install vim.tiny -y >/dev/null 2>&1) & /bin/bash"' # Disposable shell that mounts root

# Attempt at creating a chromium instance without any user data. Essentially attempt at running chromium in guest mode
#alias tmpchrome="TMP_DIR=$RANDOM && chromium-browser --user-data-dir=$TMP_DIR --bwsi & rm -rf $TMP_DIR"

# Fixes dumb common typos
alias tracert="traceroute"

