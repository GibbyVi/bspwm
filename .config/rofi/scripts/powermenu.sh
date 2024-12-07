#!/usr/bin/env bash

POWEROFF="loginctl poweroff"
REBOOT="loginctl reboot"
SLEEP="loginctl hybrid-sleep"
LOCK="slimlock"

rofi_command="rofi -theme themes/powermenu.rasi"

# Opciones del menú
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Variables pasadas a rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

# Mostrar menú y obtener la opción seleccionada
chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"

# Acciones según la opción seleccionada
case $chosen in
    $shutdown)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "$POWEROFF" --query "      Poweroff?"
        ;;
    $reboot)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "$REBOOT" --query "       Reboot?"
        ;;
    $lock)
        bash -c "$LOCK"
        ;;
    $suspend)
        bash -c "$SLEEP"
        bash -c "$LOCK"
        ~/.config/i3/scripts/brightness-startup
        ;;
    $logout)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "pkill -KILL -u $(whoami)" --query "       Logout?"
        ;;
esac