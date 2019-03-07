#!/bin/sh
ROOT="$(pwd)"

set -e

# This script facillitates the setup of a new GNU/Linux environment
# Heavily based off the Docker convenience script at get.docker.com
# 
# How to use:
#	$ git clone https://github.com/rje6459/dotfiles
#	$ cd ./dotfiles/linux
#	$ sh setup.sh
#
# NOTE: Make sure to verify the contents of the script
#	you downloaded matches the contents of setup.sh
#	located at https://github.com/rje6459/dotfiles/linux/setup.sh
#	before executing.

DRY_RUN=${DRY_RUN:-}
while [ $# -gt 0 ]; do
	case "$1" in
		--dry-run)
			DRY_RUN=1
			;;
		--*)
			echo "Illegal option $1"
			;;
	esac
	shift $(( $# > 0 ? 1 : 0 ))
done

command_exists() {
	command -v "$@" > /dev/null 2>&1
}

get_distribution() {
	lsb_dist=""
	# Every system that we officially support has /etc/os-release
	if [ -r /etc/os-release ]; then
		lsb_dist="$(. /etc/os-release && echo "$ID")"
	fi
	# Returning an empty string here should be alright since the
	# case statements don't act unless you provide an actual value
	echo "$lsb_dist"
}

do_setup() {
	echo "# Executing setup script"

	user="(id -un 2>/dev/null || true)"

	sh_c='sh -c'
	if [ "$user" != 'root' ]; then
		if command_exists sudo; then
			sh_c='sudo -E sh -c'
		elif command_exists su; then
			sh_c='su -c'
		else
			cat >&2 <<-'EOF'
			Error: this script needs the ability to run commands as root.
			We are unable to find either "sudo" or "su" available to make this happen.
			EOF
			exit 1
		fi
	fi

	# if being run as dry run, change sh command to echo
	if is_dry_run; then
		sh_c="echo"
	fi

	# perform some very rudimentary platform detection
	lsb_dist=$( get_distribution )
	lsb_dist="$(echo "$lsb_dist" | tr '[:upper:]' '[:lower:]')"

	# Run setup for each distro accordingly
	case "$lsb_dist" in
		ubuntu|debian|raspbian)
			$sh_c './Debian/setup.sh'
			exit 0
			;;
		centos|fedora|rhel|ol|sles)
			$sh_c './RHEL/setup.sh'
			exit 0
			;;
	esac
	exit 1
}

# wrapped up in a function for protection against only getting
# half this file during "curl | sh"
do_setup
