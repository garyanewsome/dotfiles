#!/bin/bash
export PATH="/usr/local/bin:$PATH"

DATE=$(date +%Y-%m-%d)

cd ~/GitHub/Notebooks/notebook && git add . && git commit --allow-empty -m "RnP MacBook Pro - Notebook Auto Sync: ($DATE)" && git push
