# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Return nothing for non-interactive shell such as scp
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
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

# Sets the GPG TTY to default TTY
export GPG_TTY=$(tty)

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
shopt -s cdable_vars
export repos=$HOME/Repositories
export Repos=$HOME/Repositories

# Docker specific aliases and functions
function dcsh() {
    if [ $# -eq 0 ]
    then
        echo "No service provided"
    else
        docker-compose exec $1 /bin/bash
    fi
}
export -f dcsh

function update-docker-host(){
	# clear existing docker.local entry from /etc/hosts
	sudo sed -i '' '/[[:space:]]docker\.local$/d' /etc/hosts

	# get ip of running machine
	export DOCKER_IP="$(echo ${DOCKER_HOST} | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')"

	# update /etc/hosts with docker machine ip
	[[ -n $DOCKER_IP ]] && sudo /bin/bash -c "echo \"${DOCKER_IP}	docker.local\" >> /etc/hosts"
}
export -f update-docker-host

alias tmpsh="docker run -it --rm ubuntu /bin/bash" # Disposable Ubuntu bash shell
alias tmpsh-fedora="docker run -it --rm fedora /bin/bash" # Disposable Fedora bash shell
alias dockersay="docker run --rm docker/whalesay cowsay" # Disposable Whalesay, fun to run with fortune subshell ex. dockersay $(fortune hitchhiker)
alias dsudo='docker run --rm -it -v="/:/opt" --name Docker_SU ubuntu /bin/bash -c "(apt-get update -y >/dev/null 2>&1; apt-get install vim.tiny -y >/dev/null 2>&1) & /bin/bash"' # Disposable shell that mounts root
alias dc='docker-compose' # Simple alias for docker-compose
alias dcu='docker-compose up --build -d' # Builds and brings up a detatched container using docker-compose
alias dcd='docker-compose down -v' # Brings down container using docker-compose
alias dcr='docker-compose restart' # Restarts service using docker-compose
alias dclog='docker-compose logs -f' # Shows logs for container using docker-compose
alias dcps='docker-compose ps' # Shows running processes using docker-compose

# Attempt at creating a chromium instance without any user data. Essentially attempt at running chromium in guest mode
#alias tmpchrome="TMP_DIR=$RANDOM && chromium-browser --user-data-dir=$TMP_DIR --bwsi & rm -rf $TMP_DIR"

# Fixes dumb common typos
alias tracert="traceroute"
alias sl='ls'
