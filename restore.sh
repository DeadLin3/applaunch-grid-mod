#!/usr/bin/env bash
set -e

BIN="/usr/share/APPLaunch/bin/M5CardputerZero-APPLaunch"
BAK="$HOME/M5CardputerZero-APPLaunch.stock.bak"

if [ ! -f "$BAK" ]; then
    echo "ERROR: Backup not found at $BAK" >&2
    exit 1
fi

echo "Restoring stock APPLaunch..."
sudo cp "$BAK" "$BIN"
sudo chmod 755 "$BIN"
systemctl --user restart APPLaunch.service
echo "Stock APPLaunch restored."
