SCRIPT_DIR=$(cd -- "$(dirname -- "$0")" && pwd)
source "$SCRIPT_DIR"/clean.sh
bsdtar -caf ccsc-se-2026-146-good-enough.zip ./*
bsdtar -tf ccsc-se-2026-146-good-enough.zip