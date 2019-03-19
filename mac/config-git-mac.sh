#!/bin/bash

# Generates new .gitignore_global file
cat $HOME/.gitignore_common.d/{Backup.*,GPG.*,macOS.*} > $HOME/.gitignore_global

git config --global core.excludesfile $HOME/.gitignore_global
git config --global include.path $HOME/.gitaliases
git config --global user.name "Robert Ellegate"
git config --global commit.gpgSign true
