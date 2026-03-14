#!/bin/bash

SHUTDOWN="󰐥  Shutdown"
REBOOT="󰑓  Reboot"
LOGOUT="󰍃  Logout"
SUSPEND="󰤄  Suspend"
HIBERNATE="󰒲  Hibernate"

CHOICE=$(printf '%s\n' "$SHUTDOWN" "$REBOOT" "$LOGOUT" "$SUSPEND" "$HIBERNATE" \
    | wofi \
        --dmenu \
        --prompt "Power" \
        --width 25% \
        --height 32% \
        --style "$HOME/.config/wofi/style.css" \
        --cache-file /dev/null \
        --no-actions \
        --insensitive)

case "$CHOICE" in
    "$SHUTDOWN")   systemctl poweroff  ;;
    "$REBOOT")     systemctl reboot    ;;
    "$LOGOUT")     swaymsg exit        ;;
    "$SUSPEND")    systemctl suspend   ;;
    "$HIBERNATE")  systemctl hibernate ;;
esac
