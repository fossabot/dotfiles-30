#!/bin/bash

GDRIVE_DIR=$HOME/Google\ Drive

echo '[rclone] Syncing local -> remote.'

if [ -d "$GDRIVE_DIR" ]; then
    if ! ps ax | grep -v grep | grep "rclone sync" > /dev/null; then
        rclone sync "$GDRIVE_DIR" gDrive:/ && echo '[rclone] Finished local -> remote sync.'
    else
        echo '[rclone] A sync is already running.'
    fi
fi
