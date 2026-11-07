#!/usr/bin/env python3
"""Read and print a JRing-compatible ring's firmware OTA product code."""

import argparse
import asyncio

from bleak import BleakClient

RX_UUID = "000033f4-0000-1000-8000-00805f9b34fb"
TX_UUID = "000033f3-0000-1000-8000-00805f9b34fb"
INFO_REQUEST = bytes((0x0C,)) + bytes(19)


async def read_code(address):
    loop = asyncio.get_running_loop()
    response = loop.create_future()

    async with BleakClient(address) as client:
        def on_notify(_sender, data):
            packet = bytes(data)
            if len(packet) >= 13 and packet[0] == 0x0C and not response.done():
                response.set_result(packet)

        await client.start_notify(RX_UUID, on_notify)
        await client.write_gatt_char(TX_UUID, INFO_REQUEST, response=True)
        try:
            packet = await asyncio.wait_for(response, timeout=10)
        finally:
            await client.stop_notify(RX_UUID)

    # The app concatenates response bytes [10], [9], [12], [11] for PRODUCT_CODE.
    code = "".join(f"{packet[i]:02X}" for i in (10, 9, 12, 11))
    print(f"PRODUCT_CODE={code}")
    print(f"response={packet.hex(' ')}")


def main():
    parser = argparse.ArgumentParser(description="Read a ring's OTA product code over BLE")
    parser.add_argument("mac", help="ring Bluetooth MAC address")
    args = parser.parse_args()
    try:
        asyncio.run(read_code(args.mac))
    except asyncio.TimeoutError:
        parser.exit(1, "Timed out waiting for device info; check the MAC and keep the ring awake.\n")
    except KeyboardInterrupt:
        parser.exit(130, "\nInterrupted.\n")
    except Exception as exc:
        parser.exit(1, f"Could not read product code: {exc}\n")


if __name__ == "__main__":
    main()
