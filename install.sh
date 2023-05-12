#!/bin/bash

# Nombre del script
SCRIPT_NAME="virtualboxbackup"

# Ruta al directorio actual
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ruta al script
SCRIPT_PATH="${DIR}/${SCRIPT_NAME}.sh"

# Comprobar si el script existe
if [ ! -f "$SCRIPT_PATH" ]; then
    echo "No se encontró el script ${SCRIPT_NAME}.sh en el directorio actual."
    exit 1
fi

# Copiar el script a /usr/local/bin
sudo cp "$SCRIPT_PATH" "/usr/local/bin/${SCRIPT_NAME}"

# Dar permisos de ejecución al script
sudo chmod +x "/usr/local/bin/${SCRIPT_NAME}"

echo "El script ${SCRIPT_NAME} ha sido instalado correctamente."
