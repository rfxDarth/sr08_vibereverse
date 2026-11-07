#!/usr/bin/env python3
"""Use two JRing-compatible BLE rings as left/right presentation clickers."""

import argparse
import asyncio
import signal
import shutil
import subprocess
import sys
import time

from bleak import BleakClient

SERVICE_UUID = "000056ff-0000-1000-8000-00805f9b34fb"
RX_UUID = "000033f4-0000-1000-8000-00805f9b34fb"
TX_UUID = "000033f3-0000-1000-8000-00805f9b34fb"
PHOTO_MODE_ON = bytes((0x07, 0x01)) + bytes(18)
PHOTO_MODE_OFF = bytes((0x07, 0x00)) + bytes(18)
BUTTON_ACTION = bytes((0x06, 0x02))
DEBOUNCE_SECONDS = 0.1
CONNECT_RETRIES = 5


async def send_arrow(key):
    proc = await asyncio.create_subprocess_exec(
        "hyprctl",
        "dispatch",
        "sendshortcut",
        f", {key}, activewindow",
        stdout=asyncio.subprocess.PIPE,
        stderr=asyncio.subprocess.PIPE,
    )
    stdout, stderr = await proc.communicate()
    if proc.returncode or b"error" in stdout.lower() or b"error" in stderr.lower():
        detail = (stderr or stdout).decode(errors="replace").strip()
        print(f"hyprctl failed sending {key}: {detail or proc.returncode}", file=sys.stderr)


async def connect(client, address):
    for attempt in range(CONNECT_RETRIES):
        try:
            await client.connect()
            return
        except Exception as exc:
            if "InProgress" not in str(exc) or attempt == CONNECT_RETRIES - 1:
                raise
            await asyncio.sleep(1 + attempt)


async def disconnect_existing(address):
    """Ask BlueZ to drop an existing local connection before Bleak connects."""
    proc = await asyncio.create_subprocess_exec(
        "bluetoothctl",
        "disconnect",
        address,
        stdout=asyncio.subprocess.PIPE,
        stderr=asyncio.subprocess.PIPE,
    )
    try:
        await asyncio.wait_for(proc.communicate(), timeout=8)
    except asyncio.TimeoutError:
        proc.kill()
        await proc.wait()
        raise RuntimeError(f"timed out disconnecting {address} via bluetoothctl")


async def run(left_mac, right_mac, debug_notifications=False):
    if not shutil.which("hyprctl"):
        raise RuntimeError("hyprctl is required; run this inside a Hyprland session")
    if not shutil.which("bluetoothctl"):
        raise RuntimeError("bluetoothctl is required to clear existing ring connections")

    stop = asyncio.Event()
    loop = asyncio.get_running_loop()
    loop.add_signal_handler(signal.SIGINT, stop.set)
    clients = [
        (BleakClient(left_mac), "left", "left"),
        (BleakClient(right_mac), "right", "right"),
    ]
    last_click = {"left": 0.0, "right": 0.0}

    try:
        # BlueZ can reject overlapping connection procedures with InProgress.
        for client, mac, _ in clients:
            print(f"Disconnecting any existing connection to {mac}…", flush=True)
            await disconnect_existing(mac)
            print(f"Connecting to {mac}…", flush=True)
            await connect(client, mac)

        for client, mac, key in clients:
            service_uuids = {service.uuid.lower() for service in client.services}
            if SERVICE_UUID not in service_uuids:
                raise RuntimeError(f"{mac}: expected JRing service {SERVICE_UUID} was not found")

            def on_notify(_sender, data, *, name=mac, arrow=key):
                if debug_notifications:
                    print(f"{name}: notify {bytes(data).hex(' ')}", flush=True)
                if len(data) < 2 or data[0:2] != BUTTON_ACTION:
                    return
                now = time.monotonic()
                if now - last_click[name] < DEBOUNCE_SECONDS:
                    return
                last_click[name] = now
                print(f"{name}: button -> {arrow}", flush=True)
                asyncio.create_task(send_arrow(arrow))

            await client.start_notify(RX_UUID, on_notify)

        for client, mac, _ in clients:
            await client.write_gatt_char(TX_UUID, PHOTO_MODE_ON, response=True)
            print(f"{mac}: selfie mode on; waiting for button presses", flush=True)

        print("Connected to both rings. Press Ctrl-C to stop.", flush=True)
        await stop.wait()
        print("Stopping; restoring rings and disconnecting…", flush=True)
    finally:
        loop.remove_signal_handler(signal.SIGINT)
        for client, _, _ in clients:
            if client.is_connected:
                try:
                    await client.write_gatt_char(TX_UUID, PHOTO_MODE_OFF, response=True)
                except Exception as exc:
                    print(f"Could not disable selfie mode: {exc}", file=sys.stderr)
                try:
                    await client.stop_notify(RX_UUID)
                except Exception:
                    pass
                await client.disconnect()


def main():
    parser = argparse.ArgumentParser(
        description="Map the first JRing button to Left and the second to Right in Hyprland."
    )
    parser.add_argument("left_mac", help="MAC address of the ring that sends Left")
    parser.add_argument("right_mac", help="MAC address of the ring that sends Right")
    parser.add_argument(
        "--debug-notifications",
        action="store_true",
        help="print raw BLE notifications to distinguish button and motion events",
    )
    args = parser.parse_args()

    if args.left_mac.lower() == args.right_mac.lower():
        parser.error("provide two different ring MAC addresses")

    try:
        asyncio.run(run(args.left_mac, args.right_mac, args.debug_notifications))
    except KeyboardInterrupt:
        print("\nDisconnecting…", flush=True)
    except Exception as exc:
        parser.exit(1, f"ring-clicker: {exc}\n")


if __name__ == "__main__":
    main()
