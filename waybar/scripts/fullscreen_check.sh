#!/usr/bin/env bash

check_fs() {
    # Safely parse JSON structure from hyprctl
    if hyprctl activewindow -j | grep -q '"fullscreen": true\|"fullscreen": 1'; then
        echo '{"text": "⛶", "class": "fullscreen"}'
    else
        echo '{"text": "", "class": "windowed"}'
    fi
}

# Run once on startup to set initial state
check_fs
