#!/usr/bin/env bash
# _____             _                 _____ _____ 
#|   __|___ ___ ___| |_ ___ _ _ _____|     |   __|
#|__   | . | -_|  _|  _|  _| | |     |  |  |__   |
#|_____|  _|___|___|_| |_| |___|_|_|_|_____|_____|
#      |_|   
# SpectrumOS - Embrace the Chromatic Symphony!
# By: gibranlp <thisdoesnotwork@gibranlp.dev>
# MIT licence 
# 
#
# Source and destination paths
SRC="$HOME/SpectrumHypr/alacritty/alacritty.toml"
DEST_DIR="$HOME/.config/alacritty"
DEST_FILE="$DEST_DIR/alacritty.toml"
BACKUP_FILE="$DEST_DIR/alacritty-backup.toml"

# Ensure the destination directory exists
mkdir -p "$DEST_DIR"

# If a config already exists, back it up
if [ -f "$DEST_FILE" ]; then
    echo "Backing up existing alacritty.toml to alacritty-backup.toml"
    cp "$DEST_FILE" "$BACKUP_FILE"
fi

# Copy the new config
echo "Copying new alacritty.toml to $DEST_DIR"
cp "$SRC" "$DEST_FILE"

echo "Done!"
