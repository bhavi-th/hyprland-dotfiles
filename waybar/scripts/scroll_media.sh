#!/usr/bin/env bash

LEN=25
LAST_TRACK=""
CURRENT_DISPLAY=""

while true; do
    STATUS=$(playerctl status 2>/dev/null)
    
    if [ "$STATUS" = "Playing" ]; then
        TRACK=$(playerctl metadata --format '{{ title }}' 2>/dev/null)
        
        # If it's a new song, reset our scrolling container
        if [ "$TRACK" != "$LAST_TRACK" ]; then
            LAST_TRACK="$TRACK"
            if [ ${#TRACK} -gt $LEN ]; then
                CURRENT_DISPLAY="$TRACK    "
            else
                CURRENT_DISPLAY="$TRACK"
            fi
        fi
        
        # Output the current frame
        echo "   ${CURRENT_DISPLAY:0:$LEN}"
        
        # If the text is longer than our window, shift it forward by 1 character
        if [ ${#TRACK} -gt $LEN ]; then
            first_char="${CURRENT_DISPLAY:0:1}"
            rest="${CURRENT_DISPLAY:1}"
            CURRENT_DISPLAY="$rest$first_char"
        fi

    else
        echo ""
        LAST_TRACK=""
    fi
    
    sleep 0.2
done
