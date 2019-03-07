#!/usr/bin/env bash
ROOT="$(pwd)"

set -e

"$ROOT/symlink-debian.sh"
"$ROOT/config-debian.sh"
"$ROOT/install-debian-dev-apps.sh"
"$ROOT/config-git-debian.sh"

echo All Done!
echo Restarting shell
exec "$(which $SHELL)" -l
