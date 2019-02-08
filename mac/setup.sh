#!/usr/bin/env bash
ROOT="$(pwd)"

set -e

"$ROOT/symlink-mac.sh"
"$ROOT/config-mac.sh"
"$ROOT/install-mac-dev-apps.sh"
"$ROOT/config-git-mac.sh"

echo All Done!
echo Restarting shell
exec "$(which $SHELL)" -l