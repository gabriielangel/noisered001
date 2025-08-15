#!/usr/bin/env bash
set -e
APPNAME=TemporalDenoiser
APP=dist/${APPNAME}.app
OUT=dist/${APPNAME}.dmg
if command -v create-dmg >/dev/null 2>&1; then
  create-dmg "$APP" "dist/"
else
  TMPDIR=$(mktemp -d)
  cp -R "$APP" "$TMPDIR/"
  hdiutil create -volname "$APPNAME" -srcfolder "$TMPDIR" -ov -format UDZO "$OUT"
  rm -rf "$TMPDIR"
fi
