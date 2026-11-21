# APPLaunch 3xN Grid Mod for M5Stack CardputerZero

![APPLaunch 3xN Grid Demo](demo.gif)

Adds a **3-column scrollable tile grid** home layout to `M5CardputerZero-APPLaunch` (`CardputerZero/launcher`), with instant live switching between **Grid (3xN)** and the stock **Carousel** via the `G` key.

## Features
- **3 tiles per row** (`94x66` px each, `40x40` icon + `12px` label), remaining apps scroll smoothly downward.
- **Full 4-way navigation** (`F`/`Z`/`X`/`C` or Arrow keys, `Enter` or tap to launch).
- **Live layout toggle:** press **`G`** on the home screen to switch between `Grid` and `Carousel` (saved in `~/.config/applaunch/home_layout`).
- **Non-destructive:** `install.sh` backs up the stock binary to `~/M5CardputerZero-APPLaunch.stock.bak` and `restore.sh` reverts it anytime.

## Quick Install (on CardputerZero)
One-line install via SSH or terminal:
```bash
curl -fsSL https://raw.githubusercontent.com/DeadLin3/applaunch-grid-mod/main/install.sh | bash
```

Or clone the repo:
```bash
git clone https://github.com/DeadLin3/applaunch-grid-mod.git
cd applaunch-grid-mod && chmod +x install.sh restore.sh && ./install.sh
```

## Rollback to Stock
```bash
curl -fsSL https://raw.githubusercontent.com/DeadLin3/applaunch-grid-mod/main/restore.sh | bash
```

## For Upstream PR (`CardputerZero/launcher`)
Apply `applaunch-grid-3xn.patch` at the root of `https://github.com/CardputerZero/launcher`:
```bash
git apply applaunch-grid-3xn.patch
```
