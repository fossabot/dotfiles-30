#!/bin/bash

# Generates new .gitignore_global file
cat $HOME/.gitignore_common.d/{Backup.*,GPG.*,macOS.*} > $HOME/.gitignore_global

source ../prefs/git/.gitconfig_common
