#!/bin/bash

GIT_PREFS_PATH=$(cd ../prefs/git; pwd)

ln -sf $(pwd)/bin $HOME
ln -sf $GIT_PREFS_PATH/.gitconfig $HOME/.gitconfig
ln -sf $GIT_PREFS_PATH/.gitaliases $HOME/.gitaliases

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $(pwd)/ssh/config $HOME/.ssh/config
