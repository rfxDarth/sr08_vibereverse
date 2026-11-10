#!/usr/bin/env python3
"""Build the checked-in V204 source reconstruction at its assigned VMAs."""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
DATA_DIR = ROOT / "firmware" / "reconstructed" / "data"
EXACT_DIR = Path(__file__).resolve().parent
MANIFEST = EXACT_DIR / "V204_source_manifest.json"
BASE = 0x7FC0000
# The source-defined flash map spans 0x7fc0000 through 0x7fd063f.
IMAGE_SIZE = 0x10640
CANONICAL_PAYLOAD_SHA256 = "5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570"
CANONICAL_CONTAINER_SHA256 = "c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8"
FLAGS = ["--target=arm-none-eabi", "-mcpu=cortex-m0", "-mthumb",
         "-std=gnu89", "-ffreestanding", "-fno-builtin",
         "-ffunction-sections", "-fdata-sections", "-I", str(ROOT),
         "-Werror", "-Werror=implicit-function-declaration", "-Os",
         "-fomit-frame-pointer"]
GCC_FLAGS = ["-mcpu=cortex-m0", "-mthumb", "-std=gnu89", "-ffreestanding",
             "-fno-short-enums", "-Wa,--noexecstack",
             "-fno-builtin", "-ffunction-sections", "-fdata-sections",
             "-I", str(ROOT), "-Werror", "-Werror=implicit-function-declaration",
             "-Os", "-fomit-frame-pointer"]
GCC_TRANSLATION_UNITS = {"reinitialize_sensor_processing_state"}
# These controls preserve V204's loop structure without assembly branches.
KEEP_LOOP_HEAD = ["-mllvm", "-rotation-max-header-size=0"]
KEEP_LOOP_INDUCTION = ["-mllvm", "-disable-lsr"]
KEEP_SOURCE_SCHEDULE = ["-mllvm", "-pre-RA-sched=source"]
SOURCE_FLAGS = {
    "gate_mode_activation_on_sensor_flags": ["-mllvm", "-disable-block-placement"],
    "store_item_in_first_free_registration_slot": KEEP_LOOP_HEAD + KEEP_LOOP_INDUCTION,
    "fill_buffer_with_32_random_bytes": KEEP_LOOP_HEAD,
    "transmit_uart_buffer": KEEP_LOOP_HEAD + KEEP_SOURCE_SCHEDULE,
    "integer_square_root_restoring": KEEP_LOOP_HEAD,
    "crc32_update_one_byte": KEEP_LOOP_HEAD,
    "nul_terminated_string_length": KEEP_LOOP_INDUCTION,
    "scan_pair_table_until_terminator":
        KEEP_LOOP_HEAD + KEEP_LOOP_INDUCTION + KEEP_SOURCE_SCHEDULE,
    "drain_linked_record_list_and_clear_head": KEEP_LOOP_HEAD,
    "c_countdown_loop_v204_timing_padding_at_20b4": KEEP_LOOP_HEAD,
}
SECTION_RE = re.compile(r"^\s*\d+\s+(\.v204\.(?:data|auto|func)\.[0-9a-fA-F]+)\s+"
                        r"([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s", re.M)
COMMENT_RE = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)
ROM_RE = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")
IDENTIFIER_RE = re.compile(r"\b[A-Za-z_][A-Za-z0-9_]*\b")


def read_source_units(manifest: dict) -> list[tuple[dict, Path, str]]:
    """Read the manifested code units and reject duplicate section addresses."""
    units = [{"address": f"0x{item['address']:08x}",
              "function": item["symbol"], "kind": item["kind"],
              "source": item["source"]} for item in manifest["sources"]]
    addresses = [int(unit["address"], 16) for unit in units]
    if len(addresses) != len(set(addresses)):
        raise SystemExit("duplicate exact function starts in source manifests")
    source_root = ROOT / "firmware" / "reconstructed"
    source_units = []
    for unit in units:
        source = (ROOT / unit["source"]).resolve()
        if not source.is_relative_to(source_root.resolve()):
            raise SystemExit(f"manifest source is outside reconstruction tree: {unit['source']}")
        source_units.append((unit, source, source.read_text(errors="replace")))
    return source_units


def resolve_linker_symbols(manifest: dict, source_units: list[tuple[dict, Path, str]]) -> dict[str, int]:
    """Resolve source references to fixed firmware and ROM addresses."""
    function_addresses = {item["symbol"]: item["address"] for item in manifest["sources"]}
    aliases = manifest["function_aliases"]
    conflicts = {name for name, address in aliases.items()
                 if name in function_addresses and function_addresses[name] != address}
    if conflicts:
        raise SystemExit(f"function aliases conflict with source entries: {', '.join(sorted(conflicts))}")
    function_addresses.update(aliases)
    rom_addresses = manifest["rom_symbols"]
    referenced_functions: set[str] = set()
    referenced_rom: set[str] = set()
    identifiers: set[str] = set()
    for _, _, code in source_units:
        clean = COMMENT_RE.sub("", code)
        names = set(IDENTIFIER_RE.findall(clean))
        referenced_functions.update(names & function_addresses.keys())
        referenced_rom.update(f"func_0x{address.lower()}" for address in ROM_RE.findall(clean))
        identifiers.update(names)

    definitions = {name: function_addresses[name] for name in referenced_functions}
    definitions.update({name: int(name.rsplit("_", 1)[1], 16) for name in referenced_rom})
    definitions.update({name: rom_addresses[name] for name in identifiers & rom_addresses.keys()})
    return definitions


def compile_source(cc: str, source: Path, output: Path, *, contents: str | None = None,
                   description: str | None = None, flags: list[str] = FLAGS) -> None:
    """Compile one source file with the exact-build target and warning policy."""
    if contents is not None:
        source.write_text(contents)
    build = subprocess.run([cc, *flags, "-c", str(source), "-o", str(output)],
                           capture_output=True, text=True)
    if build.returncode:
        label = description or str(source)
        raise SystemExit(f"compile failed for {label}:\n{build.stderr[-2000:]}")


def compile_source_units(cc: str, gcc: str, temp: Path,
                         source_units: list[tuple[dict, Path, str]]) -> list[Path]:
    """Compile manifested functions and fixed data into temporary objects."""
    objects = []
    for number, (row, source, code) in enumerate(source_units):
        cfile = temp / f"function_{number:03}.c"
        obj = temp / f"function_{number:03}.o"
        use_gcc = row["function"] in GCC_TRANSLATION_UNITS
        compile_source(gcc if use_gcc else cc, cfile, obj, contents=code,
                       description=f"{row['address']} ({source})",
                       flags=(GCC_FLAGS if use_gcc else FLAGS) + SOURCE_FLAGS.get(row["function"], []))
        objects.append(obj)

    for number, source in enumerate((DATA_DIR / "V204_tables.c",
                                     DATA_DIR / "V204_auto_data.c")):
        obj = temp / f"data_{number}.o"
        compile_source(cc, source, obj)
        objects.append(obj)
    return objects


def link_source_objects(ld: str, objdump: str, output: Path, temp: Path,
                        objects: list[Path], linker_symbols: dict[str, int]) -> list[tuple[str, str, str]]:
    """Link exact sections at their fixed VMAs and return the section map."""
    linker_script = temp / "V204_data_sections.ld"
    linker_script.write_text((DATA_DIR / "V204_data_sections.ld").read_text())
    command = [ld, "-T", str(linker_script)]
    command.extend(f"--defsym={name}=0x{address:x}"
                   for name, address in sorted(linker_symbols.items()))
    command.extend(str(obj) for obj in objects)
    command.extend(["-o", str(output)])
    link = subprocess.run(command, capture_output=True, text=True)
    if link.returncode:
        raise SystemExit(f"link failed:\n{link.stderr[-4000:]}")

    headers = subprocess.run([objdump, "-h", str(output)], check=True,
                             capture_output=True, text=True).stdout
    sections = SECTION_RE.findall(headers)
    if not sections:
        raise SystemExit("no V204 exact sections in linked ELF")
    return sections


def reconstruct_payload(objcopy: str, output: Path, temp: Path,
                        sections: list[tuple[str, str, str]],
                        reference_payload: bytes | None) -> tuple[bytearray, int]:
    """Extract linked sections, verify their layout, and assemble the payload."""
    coverage = bytearray(IMAGE_SIZE)
    reconstructed = bytearray(IMAGE_SIZE)
    for name, size_hex, vma_hex in sections:
        address, size, vma = int(name.rsplit(".", 1)[1], 16), \
                             int(size_hex, 16), int(vma_hex, 16)
        if address != vma:
            raise SystemExit(f"{name}: VMA 0x{vma:x} != address 0x{address:x}")
        if address < BASE or address + size > BASE + IMAGE_SIZE:
            raise SystemExit(f"{name}: outside V204 payload")
        offset = address - BASE
        end = offset + size
        if any(coverage[offset:end]):
            raise SystemExit(f"overlapping linked sections at {name}")
        coverage[offset:end] = b"\x01" * size

        section_file = temp / f"{address:08x}.bin"
        subprocess.run([objcopy, "-O", "binary", "-j", name,
                        str(output), str(section_file)], check=True)
        actual = section_file.read_bytes()
        if reference_payload is not None:
            expected = reference_payload[offset:end]
            if actual != expected:
                raise SystemExit(f"{name}: bytes differ from V204 payload")
        reconstructed[offset:end] = actual

    covered = sum(coverage)
    if covered != IMAGE_SIZE:
        raise SystemExit(f"linked payload is incomplete: {IMAGE_SIZE - covered} "
                         "payload bytes are uncovered")
    if reference_payload is not None and reconstructed != reference_payload:
        raise SystemExit("reconstructed payload differs from reference payload")
    payload_hash = hashlib.sha256(reconstructed).hexdigest()
    if payload_hash != CANONICAL_PAYLOAD_SHA256:
        raise SystemExit(f"payload SHA-256 {payload_hash} does not match canonical V204")
    return reconstructed, covered


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cc", default="clang-18")
    parser.add_argument("--gcc", default="arm-none-eabi-gcc",
                        help="GNU Arm compiler for C units pinned to its code generation")
    parser.add_argument("--ld", default="arm-none-eabi-ld")
    parser.add_argument("--objcopy", default="arm-none-eabi-objcopy")
    parser.add_argument("--objdump", default="arm-none-eabi-objdump")
    parser.add_argument("--output", type=Path,
                        default=Path(tempfile.gettempdir()) / "V204_exact.elf",
                        help="write the linked ELF here (default: system temp directory)")
    parser.add_argument("--flat-output", type=Path,
                        help="write a raw image from linked sections; requires complete coverage")
    parser.add_argument("--container-output", type=Path,
                        help="prepend the source-defined 64-byte SUOTA header")
    parser.add_argument("--verify-payload", type=Path,
                        help="optionally compare linked bytes against a reference payload")
    parser.add_argument("--verify-container", type=Path,
                        help="optionally compare the generated container against a reference image")
    args = parser.parse_args()
    reference_payload = args.verify_payload.read_bytes() if args.verify_payload else None
    if reference_payload is not None and len(reference_payload) != IMAGE_SIZE:
        raise SystemExit(f"reference payload must be {IMAGE_SIZE} bytes")
    manifest = json.loads(MANIFEST.read_text())
    if manifest.get("format") != 2:
        raise SystemExit("unsupported source manifest format")
    if manifest["image_base"] != BASE or manifest["image_size"] != IMAGE_SIZE:
        raise SystemExit("source manifest flash map does not match the linker map")
    source_specs = read_source_units(manifest)
    functions = [row for row, _, _ in source_specs]
    defs = resolve_linker_symbols(manifest, source_specs)

    args.output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="v204-source-build-") as directory:
        temp = Path(directory)
        objects = compile_source_units(args.cc, args.gcc, temp, source_specs)
        sections = link_source_objects(args.ld, args.objdump, args.output,
                                       temp, objects, defs)
        reconstructed, covered = reconstruct_payload(
            args.objcopy, args.output, temp, sections, reference_payload)
        if args.flat_output:
            args.flat_output.parent.mkdir(parents=True, exist_ok=True)
            args.flat_output.write_bytes(reconstructed)
            print(f"flat image: {args.flat_output} ({len(reconstructed)} bytes)")
        if args.container_output or args.verify_container:
            header_source = DATA_DIR / "V204_ota_header.c"
            header_obj = temp / "v204_ota_header.o"
            compile_source(args.cc, header_source, header_obj)
            header_path = temp / "v204_ota_header.bin"
            subprocess.run([args.objcopy, "-O", "binary", "-j", ".v204.header",
                            str(header_obj), str(header_path)], check=True)
            header = header_path.read_bytes()
            if len(header) != 64:
                raise SystemExit("compiled C container header is not 64 bytes")
            container = header + reconstructed
            if args.verify_container:
                original = args.verify_container.read_bytes()
                if container != original:
                    raise SystemExit("reconstructed OTA container differs from reference image")
            container_hash = hashlib.sha256(container).hexdigest()
            if container_hash != CANONICAL_CONTAINER_SHA256:
                raise SystemExit(f"container SHA-256 {container_hash} does not match canonical V204")
            if args.container_output:
                args.container_output.parent.mkdir(parents=True, exist_ok=True)
                args.container_output.write_bytes(container)
                print(f"OTA container: {args.container_output} ({len(container)} bytes)")
        if reference_payload is not None:
            verification = "verified against reference and canonical hash"
        else:
            verification = "matches canonical hash"
        print(f"linked {len(sections)} sections, {covered} bytes "
              f"({100 * covered / IMAGE_SIZE:.2f}% of payload; {verification}); "
              f"{len(functions)} source units")
        print(f"ELF: {args.output}")


if __name__ == "__main__":
    main()
