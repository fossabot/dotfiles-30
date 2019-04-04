#!/bin/bash

# Generates new .gitignore_global file
cat $HOME/.gitignore_common.d/{Backup.*,GPG.*,Linux.*} > $HOME/.gitignore_global

# Source common configurations
source ../prefs/git/.gitconfig_common

# Sets gpg2 as default gpg program if present
if [ -x /usr/bin/gpg2 ]; then
        git config --global gpg.program /usr/bin/gpg2
fi
