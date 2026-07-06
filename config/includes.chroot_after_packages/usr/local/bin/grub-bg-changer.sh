#!/bin/bash
# GRUB background changer for Lilidog/Beardog. Made by sleekmason 05 Jul 2026

source "$HOME/.config/wallpapers.conf"

full_fs=$(df ~ | tail -1 | awk '{print $1}')
fs=$(basename "$full_fs")
if ! grep -q "$fs" /proc/partitions; then
    notify-send -i preferences-system -u low "Not for use in a live environment."
    exit 0
fi

notify-send -i dialog-error -u low "Are you in the system controlling GRUB?"
notify-send -u low "(usually the last distribution installed)"

if ! command -v gm >/dev/null 2>&1 && ! command -v convert >/dev/null 2>&1; then
    notify-send -i dialog-error "Please install GraphicsMagick or ImageMagick to continue."
    exit 0
fi

GRUB_DIR="/boot/grub"
SELECTION=$(mktemp /tmp/grub-sel-XXXXXX)
grubset(){
    feh -g +30+30 -r -t -P -N --scale-down -W 804 -E 84 -y 134 -J 100 \
    --index-info "" \
    --action ";echo %F > $SELECTION; pkill -f feh-grub" \
    $GRUB_BGDIR1 $GRUB_BGDIR2 $GRUB_BGDIR3
}
export -f grubset
"grubset" & sleep 0.2 && wmctrl -r "feh [thumbnail mode]" -T "Change the GRUB image folder in ~/.config/wallpapers.conf"
wait
selected_wallpaper=$(cat "$SELECTION" 2>/dev/null | xargs)
rm -f "$SELECTION"
if [[ -z "$selected_wallpaper" || ! -f "$selected_wallpaper" ]]; then
    exit 0
fi

BASENAME=$(basename "$selected_wallpaper")
PNG_NAME="${BASENAME%.*}.png"
TMP_PNG=$(mktemp /tmp/grub-bg-XXXXXX.png)

if command -v gm >/dev/null 2>&1; then
    gm convert "$selected_wallpaper" -type TrueColor "$TMP_PNG" 2>/dev/null
elif command -v convert >/dev/null 2>&1; then
    convert "$selected_wallpaper" -type TrueColor -depth 8 PNG24:"$TMP_PNG" 2>/dev/null
fi

if [[ ! -f "$TMP_PNG" || ! -s "$TMP_PNG" ]]; then
    notify-send -i dialog-error "feh-grub: Image conversion failed."
    rm -f "$TMP_PNG"
    exit 1
fi

notify-send --urgency low "Please enter your password."
yad --progress --pulsate --no-buttons --skip-taskbar --center --borders=10 \
    --title="GRUB BG Changer" \
    --image="preferences-desktop-wallpaper" \
    --text=" After entering your password, please wait\n for this dialog to close before rebooting.\n (approx. 10-15 seconds)" \
    --no-focus &
YAD_PID=$!
pkexec bash -c "
    rm -f '$GRUB_DIR'/*.png '$GRUB_DIR'/*.jpg '$GRUB_DIR'/*.jpeg &&
    cp -f '$TMP_PNG' '$GRUB_DIR/$PNG_NAME' &&
    chmod 644 '$GRUB_DIR/$PNG_NAME' &&
    update-grub
"
PKEXIT=$?
kill "$YAD_PID" 2>/dev/null
wait "$YAD_PID" 2>/dev/null

if [[ $PKEXIT -eq 0 ]]; then
    notify-send -u low "GRUB background changed to $PNG_NAME"
else
    notify-send -i dialog-error "GRUB update cancelled."
fi

rm -f "$TMP_PNG"
exit 0
