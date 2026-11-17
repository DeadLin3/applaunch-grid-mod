#!/usr/bin/env bash
set -e

BIN="/usr/share/APPLaunch/bin/M5CardputerZero-APPLaunch"
BAK="$HOME/M5CardputerZero-APPLaunch.stock.bak"
DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

if [ ! -f "$DIR/M5CardputerZero-APPLaunch" ]; then
    echo "ERROR: M5CardputerZero-APPLaunch not found next to install.sh" >&2
    exit 1
fi

if [ ! -f "$BAK" ]; then
    echo "Backing up stock launcher to $BAK..."
    cp "$BIN" "$BAK"
fi

echo "Installing 3xN Grid APPLaunch..."
sudo cp "$DIR/M5CardputerZero-APPLaunch" "$BIN"
sudo chmod 755 "$BIN"
systemctl --user restart APPLaunch.service
echo "Done! Press G on the home screen to toggle Grid (3xN) <-> Carousel."
