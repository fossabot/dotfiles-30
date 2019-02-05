#!/bin/bash
ln -sf $(pwd)/bin $HOME
ln -sf ../prefs/git/.gitconfig $HOME/.gitconfig
ln -sf ../prefs/git/.gitaliases $HOME/.gitaliases

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $(pwd)/ssh/config $HOME/.ssh/config