#!/bin/bash

# Imprimir el PID del launcher
echo "PID del launcher: $$"

# Lanzar el terminal
gnome-terminal --full-screen -- ./script_terminal.sh

# Mantener el launcher activo
while true; do
    sleep 1
done
