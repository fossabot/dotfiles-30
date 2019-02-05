#!/bin/bash
ln -sf $(pwd)/bin $HOME
ln -sf $(pwd)/git/.gitconfig $HOME/.gitconfig
ln -sf $(pwd)/git/.gitaliases $HOME/.gitaliases

mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ln -sf $(pwd)/ssh/config $HOME/.ssh/config