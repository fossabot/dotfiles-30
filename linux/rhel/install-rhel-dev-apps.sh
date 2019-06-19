#!/bin/bash

dnf install -y \
    burp
    chromium
    chromium-libs-media-freeworld
    code
    dnf-automatic
    docker-ce
    docker-ce-cli
    fail2ban
    ffmpeg
    fortune-mod
    golang
    gource
    htop
    nmap
    peek
    prename
    ruby
    snapd
    vlc

cat $HOME/.config/Code/User/extensions.list | xargs -n1 code --install-extension
