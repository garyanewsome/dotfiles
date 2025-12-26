#!/bin/bash
export PATH="/usr/local/bin:$PATH"

DATE=$(date +%Y-%m-%d)

cd ~/GitHub/Notebooks/musicbook && git add . && git commit --allow-empty -m "RnP MacBook Pro - Musicbook Auto Sync: ($DATE)" && git push
