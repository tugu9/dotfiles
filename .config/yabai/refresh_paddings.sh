#!/bin/sh

MAIN_DISPLAY_UUID="37D8832A-2D66-02CA-B9F7-8F30A301B230"

MAIN_DISPLAY_SPACES=$(yabai -m query --displays | jq -r ".[] | select(.uuid == \"$MAIN_DISPLAY_UUID\") | .spaces")

for space in $(echo $MAIN_DISPLAY_SPACES | sed 's/[][,]//g'); do
    yabai -m config --space "$space" top_padding 7
done

SIDE_MONITOR_SPACES=$(yabai -m query --displays | jq -r ".[] | select(.uuid != \"$MAIN_DISPLAY_UUID\") | .spaces")

for space in $(echo $SIDE_MONITOR_SPACES | sed 's/[][,]//g'); do
    yabai -m config --space "$space" top_padding 38
done
