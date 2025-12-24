#!/bin/bash

choice=$(printf "Logout\nRestart\nShutdown\nCancel" | wofi --dmenu --prompt "Power Options")

case "$choice" in
    Logout) hyprctl dispatch exit;;
    Restart) systemctl reboot;;
    Shutdown) systemctl poweroff;;
    Cancel) exit 0;;
    *) exit 1;;
esac
