#!/bin/bash
export PATH="/usr/local/bin:$PATH"

DATE=$(date +%Y-%m-%d)

cd ~/GitHub/Notebooks/workbook && git add . && git commit --allow-empty -m "RnP MacBook Pro - Workbook Auto Sync: ($DATE)" && git push
