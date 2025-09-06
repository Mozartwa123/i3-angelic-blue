#!/usr/bin/bash

# switch between active workspaces
# this script is parsing json with jq and awk, so please install them!
switchto=$(i3-msg -t get_workspaces | jq '.[] | if (.focused == true) then "some " + .name else "nothing " + .name end' | tr -d '"' | awk -f $HOME/.config/rofi/workspaces/workspaces.awk | rofi -dmenu -config $HOME/.config/rofi/workspaces/base_1.rasi)
i3-msg workspace $switchto
