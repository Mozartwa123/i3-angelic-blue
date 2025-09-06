pactl set-sink-volume @DEFAULT_SINK@ -5% && pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | awk '{ print $5 }' | rofi -dmenu -config /home/mozartwa123/.config/rofi/volume.rasi
