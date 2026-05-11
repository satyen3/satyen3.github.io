#!/bin/sh
set -eu

SOURCE="${HOME}/Documents/Phd Application/CV/cv_1.pdf"
TARGET="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)/static/cv.pdf"

if [ ! -f "$SOURCE" ]; then
  echo "Missing source PDF: $SOURCE" >&2
  exit 1
fi

cp "$SOURCE" "$TARGET"
echo "Synced CV to $TARGET"
