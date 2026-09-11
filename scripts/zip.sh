SCRIPT_DIR=$(cd -- "$(dirname -- "$0")" && pwd)
source "$SCRIPT_DIR"/clean.sh
ZIP=dist/ccsc-se-2026-146-good-enough.zip
bsdtar --exclude='./dist/*.zip' -caf "$ZIP" ./*
bsdtar -tf "$ZIP"