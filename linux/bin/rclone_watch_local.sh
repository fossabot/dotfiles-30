#!/bin/bash

GDRIVE_DIR=$HOME/Google\ Drive

echo '[rclone] Watching locally.'

if [ -d "$GDRIVE_DIR" ]; then
    while true; do
        # sync at max every 10 minutes
        inotifywait -r "$GDRIVE_DIR" && bash ~/bin/rclone_local2remote.sh && sleep 10m
    done
fi
