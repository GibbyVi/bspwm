#!/usr/bin/env bash

rofi_command="rofi -theme themes/promptmenu.rasi"

yes_text=""
no_text=""
query="Are you sure?"

if [[ $# -eq 0 ]]; then
    echo -e "Usage: \e[100m \e[32mpromptmenu\e[39;100m -y <command> \e[0m"
    echo -e "Todas las opciones:\n" \
        "\e[34mOPCIONAL \e[39;100m [ -o | --yes-text ] <text> \e[0m\n" \
        "\e[34mOPCIONAL \e[39;100m [ -c | --no-text ] <text> \e[0m\n" \
        "\e[35mREQUERIDO  \e[39;100m [ -y | --yes-command ] <command> \e[0m\n" \
        "\e[34mOPCIONAL \e[39;100m [ -n | --no-command ] <command> \e[0m\n" \
        "\e[34mOPCIONAL \e[39;100m [ -q | --query ] txt \e[0m"
    exit 1
else
    while [ $# -ne 0 ]; do
        case "$1" in
            -o | --yes-text) # Opcional
                [ -n "$2" ] && yes_text="$2" || yes_text=""
                shift
                ;;
            -c | --no-text) # Opcional
                [ -n "$2" ] && no_text="$2" || no_text=""
                shift
                ;;
            -y | --yes-command) # Requerido
                [ -n "$2" ] && yes_command="$2"
                shift
                ;;
            -n | --no-command) # Opcional
                [ -n "$2" ] && no_command="$2"
                shift
                ;;
            -q | --query) # Opcional
                [ -n "$2" ] && query="$2"
                shift
                ;;
        esac
        shift
    done
fi

options="$yes_text\n$no_text"

chosen="$(echo -e "$options" | $rofi_command -p "$query" -dmenu -selected-row 1)"

case $chosen in
    $yes_text)
        eval "$yes_command"
        ;;
    $no_text)
        eval "$no_command"
        ;;
esac