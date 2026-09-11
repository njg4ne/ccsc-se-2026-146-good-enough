#!/usr/bin/env bash
SCRIPT_DIR=$(cd -- "$(dirname -- "$0")" && pwd)
# root dir above script dir and dist dir in root dir
DIST=$(cd -- "$SCRIPT_DIR"/.. && pwd)/dist

podman compose run --rm tex

# if src/manuscript.pdf, move it to dist/Manus.pdf
if [ -f "$SCRIPT_DIR"/../src/manuscript.pdf ]; then
    mv "$SCRIPT_DIR"/../src/manuscript.pdf "$DIST"/ccsc-se-2026-146-good-enough.pdf
fi

source "$SCRIPT_DIR"/clean.sh