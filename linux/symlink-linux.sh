#!/bin/bash

GIT_PREFS_PATH=$(cd ../prefs/git; pwd)
SSH_PREFS_PATH=$(cd ../prefs/ssh; pwd)

ln -sf $(pwd)/bin $HOME
ln -sf $GIT_PREFS_PATH/.gitconfig $HOME/.gitconfig
ln -sf $GIT_PREFS_PATH/.gitaliases $HOME/.gitaliases

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $SSH_PREFS_PATH/config $HOME/.ssh/config 
