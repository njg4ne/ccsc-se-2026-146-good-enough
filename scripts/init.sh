#!/usr/bin/env bash

# Resolve the absolute path of the directory containing this script
SCRIPT_DIR=$(cd -- "$(dirname -- "$0")" && pwd)
CURRENT_SCRIPT=$(cd -- "$(dirname -- "$0")" && pwd)/$(basename -- "$0")


for script in "$SCRIPT_DIR"/*.sh; do
    chmod +x "$script"
done