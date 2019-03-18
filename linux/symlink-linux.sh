#!/bin/bash

GIT_PREFS_PATH=$(cd ../prefs/git; pwd)
SSH_PREFS_PATH=$(cd ../prefs/ssh; pwd)

ln -sf $(pwd)/bin $HOME
ln -sf $GIT_PREFS_PATH/.gitaliases $HOME/.gitaliases
ln -sf $GIT_PREFS_PATH/.gitignore_common.d $HOME/.gitignore_common.d
ln -sf $GIT_PREFS_PATH/.gitignore_languages.d $HOME/.gitignore_languages.d

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $SSH_PREFS_PATH/config $HOME/.ssh/config 
