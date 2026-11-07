# Ring clicker CLI

Connect two JRing-compatible rings sequentially and map the first ring's button to Left and the second ring's button to Right. Sequential connection avoids BlueZ's `org.bluez.Error.InProgress` response to overlapping connection procedures; that transient error is retried briefly. The CLI puts both rings into selfie mode (`07 01`, which shows `CA`) and translates incoming button action `06 02` into a Hyprland shortcut for the active window. On exit it sends selfie mode off (`07 00`).

## Requirements

- Python 3.10+
- `bleak` for BLE access (`python3 -m pip install bleak` if it is not installed)
- `hyprctl` and `bluetoothctl` available inside a running Hyprland/BlueZ session
- BlueZ and a working Bluetooth adapter

Hyprland's `sendshortcut` is used for key injection, so this does not need `ydotool`, an input device, or `/dev/uinput`.

## Run

```sh
python3 CLI/ring_clicker.py <LEFT_RING_MAC> <RIGHT_RING_MAC>
```

Example:

```sh
python3 CLI/ring_clicker.py AA:BB:CC:DD:EE:01 AA:BB:CC:DD:EE:02
```

Keep the presentation window focused. Before connecting, the script asks BlueZ to disconnect either ring if it is already connected to this computer (for example, by JRing). One Ctrl-C turns selfie mode off and disconnects both rings.

The protocol identifiers and bytes were recovered from the local decoded JRing app in `App_original/decompiled_base/`. The input notification check expects the two leading bytes `06 02`; packets with other leading bytes are ignored.
