#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Downloads/wallpapers"

# Use wofi to select a wallpaper
selected_wallpaper=$(find "$WALLPAPER_DIR" -type f | wofi --show dmenu)

# If a wallpaper was selected, proceed
if [[ -n "$selected_wallpaper" ]]; then
    # Set the wallpaper using swww
    swww img "$selected_wallpaper"

    # Update the color scheme using wal
    wal -i "$selected_wallpaper"

    # Wait a bit to ensure wal has generated the colors
    sleep 1

    # Reload Waybar to apply the new wal colors
    killall waybar
	waybar
    
else
    echo "No wallpaper selected."
fi
