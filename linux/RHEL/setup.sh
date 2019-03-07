#!/usr/bin/env bash
ROOT="$(pwd)"

set -e

"$ROOT/symlink-rhel.sh"
"$ROOT/config-rhel.sh"
"$ROOT/install-rhel-dev-apps.sh"
"$ROOT/config-git-rhel.sh"

echo All Done!
echo Restarting shell
exec "$(which $SHELL)" -l
