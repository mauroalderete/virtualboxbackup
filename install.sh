#!/bin/bash

# Name of script
SCRIPT_NAME="virtualboxbackup"

# Path to current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Path to script
SCRIPT_PATH="${DIR}/${SCRIPT_NAME}.sh"

# Comprobate if the script exists
if [ ! -f "$SCRIPT_PATH" ]; then
    echo "Don't found the script ${SCRIPT_NAME}.sh in the current directory."
    exit 1
fi

# Copy the script to /usr/local/bin
cp "$SCRIPT_PATH" "/usr/local/bin/${SCRIPT_NAME}"

# Make the script executable
chmod +x "/usr/local/bin/${SCRIPT_NAME}"

echo "The script ${SCRIPT_NAME} has been installed correctly."
