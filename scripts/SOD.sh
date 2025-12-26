#!/bin/bash
export PATH="/usr/local/bin:$PATH"

# Change to the Notebooks directory
cd ~/GitHub/Notebooks || exit 1

# List of folders to update
dirs=(workbook musicbook notebook)

for dir in "${dirs[@]}"; do
  if [ -d "$dir/.git" ]; then
    echo "Updating $dir..."
    cd "$dir" && git pull && cd ..
  else
    echo "$dir is not a git repository. Skipping."
  fi
done
