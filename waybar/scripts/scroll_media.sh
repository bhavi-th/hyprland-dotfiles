#!/usr/bin/env bash

zscroll -l 45 \
  --delay 0.3 \
  --update-check true \
  "playerctl metadata --format '{{ title }}'" 2>/dev/null

wait
