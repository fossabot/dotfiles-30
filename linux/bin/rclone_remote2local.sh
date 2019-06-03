#!/bin/bash

GDRIVE_DIR=$HOME/Google\ Drive

echo '[rclone] Syncing remote -> local.'

if [ -d "$GDRIVE_DIR" ]; then
    if ! ps ax | grep -v grep | grep "rclone sync" > /dev/null; then
        rclone sync gDrive:/ "$GDRIVE_DIR" && echo '[rclone] Finished remote -> local sync.'
    else
        echo '[rclone] A sync is already running.'
    fi
fi
