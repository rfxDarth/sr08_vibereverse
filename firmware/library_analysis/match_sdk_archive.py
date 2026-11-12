#!/usr/bin/env python3
"""Find ARM archive function candidates, masking relocation storage bytes.

Matches are leads, not proof: masked instructions and relocations must be
resolved and the complete linked image must pass canonical verification.
Uses only Python's standard library and GNU ar.
"""
import argparse
import json
import struct
import subprocess


def elf_sections(data):
    if data[:6] != b'\x7fELF\x01\x01':
        raise ValueError('expected little-endian ELF32')
    offset = struct.unpack_from('<I', data, 32)[0]
    size, count, names_index = struct.unpack_from('<HHH', data, 46)
    sections = [struct.unpack_from('<10I', data, offset + i * size) for i in range(count)]
    def blob(section):
        return data[section[4]:section[4] + section[5]]
    names = blob(sections[names_index])
    def string(table, index):
        return table[index:table.index(b'\0', index)].decode(errors='replace')
    return sections, blob, lambda i: string(names, sections[i][0]), string


def scan(archive, payload, base, minimum):
    members = subprocess.check_output(['arm-none-eabi-ar', 't', archive], text=True).splitlines()
    results = []
    examined = 0
    for member in members:
        data = subprocess.check_output(['arm-none-eabi-ar', 'p', archive, member])
        if data[:6] != b'\x7fELF\x01\x01':
            continue  # e.g. linker steering files inside Arm runtime archives
        sections, blob, section_name, string = elf_sections(data)
        masks = {}
        for sec in sections:
            if sec[1] not in (9, 4):
                continue
            mask = masks.setdefault(sec[7], set())
            step = sec[9] or (8 if sec[1] == 9 else 12)
            for pos in range(0, sec[5], step):
                off, info = struct.unpack_from('<II', blob(sec), pos)
                kind = info & 255
                # Most ARM relocations here occupy a word or Thumb-2 pair.
                # Thumb short branches and ABS16 occupy a halfword; ABS8 a byte.
                width = 1 if kind == 8 else 2 if kind in (5, 7, 102, 103) else 4
                if kind:
                    mask.update(range(off, off + width))
        for sec in sections:
            if sec[1] != 2:
                continue
            symbols, strings = blob(sec), blob(sections[sec[6]])
            for pos in range(0, len(symbols), sec[9] or 16):
                name, value, length, info, other, index = struct.unpack_from('<IIIBBH', symbols, pos)
                if info & 15 != 2 or not length or index >= len(sections):
                    continue
                target = sections[index]
                if not target[2] & 4:
                    continue
                start = value & ~1
                code = blob(target)[start:start + length]
                known = [i for i in range(len(code)) if start + i not in masks.get(index, set())]
                if len(known) < minimum:
                    continue
                examined += 1
                # Pick the longest relocation-free run as an efficient anchor.
                runs = []
                for i in known:
                    if not runs or i != runs[-1][-1] + 1:
                        runs.append([])
                    runs[-1].append(i)
                run = max(runs, key=len)
                anchor = code[run[0]:run[-1] + 1]
                location = payload.find(anchor)
                while location >= 0:
                    at = location - run[0]
                    if at >= 0 and at % 2 == 0 and at + len(code) <= len(payload):
                        if all(payload[at + i] == code[i] for i in known):
                            results.append(dict(member=member, symbol=string(strings, name),
                                                section=section_name(index), address=hex(base + at),
                                                size=len(code), compared_bytes=len(known),
                                                masked_bytes=len(code) - len(known)))
                    location = payload.find(anchor, location + 1)
    return dict(examined_functions=examined, candidates=results)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('archive')
    p.add_argument('payload')
    p.add_argument('--base', type=lambda x: int(x, 0), default=0x7fc0000)
    p.add_argument('--minimum', type=int, default=20)
    args = p.parse_args()
    from pathlib import Path
    print(json.dumps(scan(args.archive, Path(args.payload).read_bytes(), args.base, args.minimum), indent=2))


if __name__ == '__main__':
    main()
