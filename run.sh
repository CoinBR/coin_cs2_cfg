#!/bin/sh
set -e

DIR=$(cd "$(dirname "$0")" && pwd)
cd "$DIR/cfg"

echo "Copying current cfgs to cs2 parent directory..."
find . -maxdepth 1 -type f -exec cp -f -- '{}' "$DIR/.." \;

cd "$DIR"
echo "Done copying cfgs."
