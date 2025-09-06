#!/usr/bin/bash


choice=$(printf "poweroff\nexit i3\nsuspend\nhibernate\nreboot\ncancel[Esc]" | rofi -dmenu -config exit.rasi)

case $choice in
    "poweroff")
        echo "The system will power off!"
        shutdown now
        ;;
    "hibernate")
        echo "[Error] : hibernation not implemented" | rofi -dmenu
        # systemctl hibernate
        ;;
    "exit i3")
        echo "The X-server session will be finished"
        i3-msg exit
        ;;
    "cancel[Esc]")
        echo "Canceled"
        exit 1
        ;;
    "reboot")
        echo "The system will be rebooted"
        reboot
        ;;
    "suspend")
        echo "The system will be suspended"
        systemctl suspend
        ;;
esac
