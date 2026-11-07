#!/usr/bin/env python3
"""Create the 64-byte SR08 OTA wrapper used by ATC's make_bin_ota.py."""

import argparse
import struct
import time
from pathlib import Path


def crc32_atc(data: bytes) -> int:
    crc = 0xFFFFFFFF
    for byte in data:
        crc ^= byte
        for _ in range(8):
            crc = (crc >> 1) ^ (0xEDB88320 if crc & 1 else 0)
    return crc ^ 0xFFFFFFFF


def make_image(code: bytes, version: str, timestamp: int) -> bytes:
    encoded_version = version.encode("ascii")
    if len(encoded_version) > 15:
        raise ValueError("version must be at most 15 ASCII bytes")
    padding_len = (-(len(code) + 64)) % 240
    # The original script adds a full block when already aligned.
    if padding_len == 0:
        padding_len = 240
    padded_code = code + b"\xff" * padding_len
    header = (
        b"\x70\x51\xaa\xff"
        + struct.pack("<II", len(padded_code), crc32_atc(code))
        + encoded_version + b"\0" + b"\xff" * (15 - len(encoded_version))
        + struct.pack("<IBII", timestamp, 0, len(code), 0x00170001)
        + b"\xff" * 23
    )
    if len(header) != 64:
        raise AssertionError(f"header has {len(header)} bytes")
    image = bytearray(header + padded_code)
    checksum = 0
    for byte in image[:-1]:
        checksum ^= byte
    image[-1] = checksum
    return bytes(image)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path, help="raw linked application binary")
    parser.add_argument("output", type=Path, help="wrapped OTA image path")
    parser.add_argument("--version", default="1.900")
    args = parser.parse_args()
    code = args.input.read_bytes()
    image = make_image(code, args.version, int(time.time()))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(image)
    print(f"code={len(code)} image={len(image)} output={args.output}")


if __name__ == "__main__":
    main()
