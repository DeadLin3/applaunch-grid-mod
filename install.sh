#!/usr/bin/env bash
set -e

BIN="/usr/share/APPLaunch/bin/M5CardputerZero-APPLaunch"
BAK="$HOME/M5CardputerZero-APPLaunch.stock.bak"
RELEASE_URL="https://github.com/DeadLin3/applaunch-grid-mod/releases/download/v0.1.0/M5CardputerZero-APPLaunch"
DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

SRC_BIN="$DIR/M5CardputerZero-APPLaunch"
TMP_BIN=""

if [ ! -f "$SRC_BIN" ]; then
    TMP_BIN="/tmp/M5CardputerZero-APPLaunch.$$"
    echo "Downloading M5CardputerZero-APPLaunch from GitHub Releases..."
    curl -fSL "$RELEASE_URL" -o "$TMP_BIN"
    SRC_BIN="$TMP_BIN"
fi

if [ ! -f "$BAK" ]; then
    echo "Backing up stock launcher to $BAK..."
    cp "$BIN" "$BAK"
fi

echo "Installing 3xN Grid APPLaunch..."
sudo cp "$SRC_BIN" "$BIN"
sudo chmod 755 "$BIN"
[ -n "$TMP_BIN" ] && rm -f "$TMP_BIN"
systemctl --user restart APPLaunch.service
echo "Done! Press G on the home screen to toggle Grid (3xN) <-> Carousel."
