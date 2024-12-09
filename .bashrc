# Establecer la IP objetivo
function set_target() {
    export TARGET_IP="$1"
    # Actualiza la variable para Polybar sin necesidad de reiniciarla
    polybar-msg hook ip_target 1
}

# Eliminar la IP objetivo
function drop_target() {
    unset TARGET_IP
    # Actualiza la variable para Polybar sin necesidad de reiniciarla
    polybar-msg hook ip_target 1
}

# Alias para comandos más cortos
alias set="set_target"
alias drop="drop_target"