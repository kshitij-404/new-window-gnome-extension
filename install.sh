#!/bin/bash

# Define the target directory
TARGET_DIR="$HOME/.local/share/gnome-shell/extensions/new-window@localhost.com"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Find all files and directories in the current directory, excluding install.sh
# Then, copy them to the target directory
find . -maxdepth 1 -not -name 'install.sh' -not -name '.' -exec cp -r {} "$TARGET_DIR" \;