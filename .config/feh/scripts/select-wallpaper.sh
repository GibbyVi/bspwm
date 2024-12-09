#!/bin/bash

# Ruta donde tienes tus fondos de pantalla
WALLPAPER_DIR="~/.config/feh/wallpapers"

# Obtener la lista de fondos de pantalla
WALLPAPERS=$(find "$WALLPAPER_DIR" -type f -iname "*.jpg" -o -iname "*.png" | sort)

# Usar rofi para seleccionar el fondo
SELECTED_WALLPAPER=$(echo "$WALLPAPERS" | rofi -dmenu -i -p "Selecciona un fondo:")

# Establecer el fondo seleccionado
if [ -n "$SELECTED_WALLPAPER" ]; then
    feh --bg-scale "$SELECTED_WALLPAPER"
fi