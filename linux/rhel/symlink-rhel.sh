#!/bin/bash

DNF_PREFS_PATH=$(cd ../../prefs/dnf; pwd)

# Creates a symlink for dnf-automatic configuration files in /etc/dnf
ln -sf $DNF_PREFS_PATH/automatic.conf /etc/dnf