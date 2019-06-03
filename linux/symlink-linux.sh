#!/bin/bash

GIT_PREFS_PATH=$(cd ../prefs/git; pwd)
SSH_PREFS_PATH=$(cd ../prefs/ssh; pwd)
BASH_PREFS_PATH=$(cd ../prefs/bash; pwd)
VSCODE_PREFS_PATH=$(cd ../prefs/visual-studio-code; pwd)
VIM_PREFS_PATH=$(cd ../prefs/vim; pwd)

# Creates a symlink for user binaries in $HOME directory
ln -sf $(pwd)/bin $HOME

# Creates symlinks for git dotfiles in $HOME directory
ln -sf $GIT_PREFS_PATH/.gitaliases $HOME/.gitaliases
ln -sf $GIT_PREFS_PATH/.gitignore_common.d $HOME
ln -sf $GIT_PREFS_PATH/.gitignore_languages.d $HOME

# Creates symlink for .bashrc in $HOME directory
ln -sf $BASH_PREFS_PATH/.bashrc $HOME/.bashrc

# Creates symlinks for VSCode in $HOME/.config/Code/User
mkdir -p $HOME/.config/Code/User
chmod 755 $HOME/.config/Code/User
ln -sf $VSCODE_PREFS_PATH/keybindings.json $HOME/.config/Code/User
ln -sf $VSCODE_PREFS_PATH/settings.json $HOME/.config/Code/User

# Creates symlink for .vimrc in $HOME directory
ln -sf $VIM_PREFS_PATH/.vimrc $HOME/.vimrc

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $SSH_PREFS_PATH/config $HOME/.ssh/config 
