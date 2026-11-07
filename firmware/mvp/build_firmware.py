#!/usr/bin/env python3
"""Build the isolated SR08 MVP against ATC's DA14585 SDK project."""

from __future__ import annotations

import argparse
import re
import shlex
import subprocess
import sys
import urllib.parse
import xml.etree.ElementTree as ET
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
ATC = ROOT / "ATC_SR08_Ring_source" / "Firmware_src"
PROJECT = ATC / "projects/target_apps/ble_examples/prox_reporter/Eclipse"
SRC = PROJECT.parent / "src"
SDK = ATC / "sdk"
ATC_CONFIG_DIR = SRC / "config"
CONFIG_DIR = ROOT / "firmware/mvp/config"
CORE_SOURCE = ROOT / "firmware/reconstructed/v204_core.c"
V204_ACCEL_SOURCE = ROOT / "firmware/mvp/v204_accel.c"
V204_GATT_SOURCE = ROOT / "firmware/mvp/v204_gatt.c"
V204_HID_SOURCE = ROOT / "firmware/mvp/v204_hid.c"
CUSTOM_PROFILE_SOURCES = [
    SDK / "app_modules/src/app_custs/app_customs.c",
    SDK / "app_modules/src/app_custs/app_customs_task.c",
    SDK / "ble_stack/profiles/custom/custom_common.c",
    SDK / "ble_stack/host/att/attm/attm_db_128.c",
    SDK / "ble_stack/profiles/custom/custs/src/custs1.c",
    SDK / "ble_stack/profiles/custom/custs/src/custs1_task.c",
]
HOGPD_PROFILE_SOURCES = [
    SDK / "ble_stack/profiles/hogp/hogpd/src/hogpd.c",
    SDK / "ble_stack/profiles/hogp/hogpd/src/hogpd_task.c",
]
OUT = ROOT / "firmware/mvp/build"


def run(argv: list[str], cwd: Path | None = None, label: str = "command") -> None:
    print(label, flush=True)
    result = subprocess.run([str(x) for x in argv], cwd=cwd,
                            text=True, capture_output=True)
    if result.returncode:
        print(shlex.join(str(x) for x in argv), file=sys.stderr)
        print(result.stdout, end="", file=sys.stderr)
        print(result.stderr, end="", file=sys.stderr)
        raise subprocess.CalledProcessError(result.returncode, argv)


def parse_project_sources(config_name: str) -> list[Path]:
    project_xml = ET.parse(PROJECT / ".project").getroot()
    cproject_xml = ET.parse(PROJECT / ".cproject").getroot()
    config = next(c for c in cproject_xml.iter("configuration")
                  if c.get("name") == config_name)
    source_entries = config.find("sourceEntries")
    if source_entries is None:
        raise RuntimeError(f"No source entries for {config_name}")
    groups = {e.get("name"): set((e.get("excluding") or "").split("|"))
              for e in source_entries.findall("entry")}

    linked: dict[str, Path] = {}
    resources = project_xml.find("linkedResources")
    for link in resources if resources is not None else []:
        if link.findtext("type") != "1":
            continue
        name = link.findtext("name") or ""
        raw_uri = urllib.parse.unquote(link.findtext("locationURI") or "")
        match = re.match(r"^\$?\{?PARENT-(\d+)-PROJECT_LOC\}?/(.*)$", raw_uri)
        if not match:
            raise RuntimeError(f"Unsupported linked resource URI: {raw_uri}")
        parent_count = int(match.group(1))
        relative = match.group(2)
        base = PROJECT.parents[parent_count - 1]
        linked[name] = base / relative

    files: list[Path] = []
    for group, excluded in groups.items():
        for name, path in linked.items():
            if not name.startswith(group + "/"):
                continue
            leaf = name.rsplit("/", 1)[-1]
            if leaf in excluded or path.suffix not in {".c", ".S", ".s"}:
                continue
            if not path.is_file():
                raise FileNotFoundError(f"Project source is missing: {path}")
            files.append(path)
    return sorted(set(files))


def include_dirs(config_name: str) -> list[Path]:
    cproject_xml = ET.parse(PROJECT / ".cproject").getroot()
    config = next(c for c in cproject_xml.iter("configuration")
                  if c.get("name") == config_name)
    compiler = next(t for t in config.iter("tool")
                    if t.get("name") == "Cross ARM C Compiler")
    option = next(o for o in compiler.findall("option")
                  if o.get("name") == "Include paths (-I)")
    build_context = PROJECT / config_name
    return [Path((build_context / v.get("value", "").strip('"')).resolve())
            for v in option.findall("listOptionValue")]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--app-source", type=Path,
                        default=ROOT / "firmware/mvp/user_proxr.c",
                        help="MVP replacement for the linked user_app/main.c")
    parser.add_argument("--version", default="1.901")
    args = parser.parse_args()
    app_source = args.app_source.resolve()
    if not app_source.is_file():
        parser.error(f"application source does not exist: {app_source}")

    sources = parse_project_sources("DA14585")
    user_main = next((p for p in sources if p.name == "user_proxr.c" and
                      p.parent == SRC), None)
    if user_main is None:
        raise RuntimeError("Could not locate the project user application")
    sources = [app_source if p == user_main else p for p in sources]
    sources.extend([CORE_SOURCE, V204_ACCEL_SOURCE, V204_GATT_SOURCE,
                    V204_HID_SOURCE, *CUSTOM_PROFILE_SOURCES,
                    *HOGPD_PROFILE_SOURCES])

    OUT.mkdir(parents=True, exist_ok=True)
    objdir = OUT / "objects"
    objdir.mkdir(parents=True, exist_ok=True)
    config_includes = [
        ATC_CONFIG_DIR / "da1458x_config_basic.h",
        ATC_CONFIG_DIR / "da1458x_config_advanced.h",
        CONFIG_DIR / "user_config.h",
    ]
    # MVP-owned application config must precede the ATC project's demo config.
    inc_flags: list[str] = ["-I", CONFIG_DIR, "-I", ATC_CONFIG_DIR]
    for path in include_dirs("DA14585"):
        inc_flags.extend(["-I", path])
    inc_flags.extend(["-I", SRC,
                      "-I", ROOT / "firmware/reconstructed",
                      "-I", ROOT / "firmware/mvp"])
    common_flags: list[str] = [
        "-mcpu=cortex-m0", "-mthumb", "-Os", "-g3", "-std=gnu99",
        "-ffunction-sections", "-fdata-sections", "-Wall",
        "-Wno-int-conversion", "-Wno-unused-variable", "-D__DA14585__",
        "-DCFG_PRF_CUST1", "-DCFG_PRF_HOGPD",
    ]
    objects: list[Path] = []
    for index, source in enumerate(sources):
        obj = objdir / f"{index:03d}_{source.stem}.o"
        flags = [*common_flags]
        if source.suffix == ".c":
            for header in config_includes:
                flags.extend(["-include", header])
        run(["arm-none-eabi-gcc", *flags, *inc_flags,
             "-c", source, "-o", obj], label=f"Compiling {source.name}")
        objects.append(obj)

    linker_script_src = SDK / "common_project_files/ldscripts/ldscript_DA14585_586.lds.S"
    linker_script = OUT / "ldscript_DA14585_586.lds"
    run(["arm-none-eabi-gcc", "-mcpu=cortex-m0", "-mthumb", "-E", "-P", "-x", "c",
         "-D__DA14585__", "-I", CONFIG_DIR, "-I", ATC_CONFIG_DIR,
         "-I", SDK / "common_project_files",
         "-include", config_includes[0], "-include", config_includes[1],
         linker_script_src, "-o", linker_script], label="Preprocessing DA14585 linker script")

    libdir = SDK / "platform/system_library/output/Keil_5"
    miscdir = SDK / "common_project_files/misc"
    elf = OUT / "ring_mvp.elf"
    run(["arm-none-eabi-gcc", "-mcpu=cortex-m0", "-mthumb", "--specs=nano.specs",
         "--specs=nosys.specs", "-Wl,--gc-sections", "-Wl,--no-wchar-size-warning",
         "-Wl,-Map=" + str(OUT / "ring_mvp.map"), "-T", linker_script,
         *objects, "-L", libdir, "-L", miscdir, "-l:da14585_586.lib", "-o", elf],
        label="Linking DA14585 application")

    raw_bin = OUT / "ring_mvp.raw.bin"
    run(["arm-none-eabi-objcopy", "-O", "binary", elf, raw_bin], label="Extracting raw image")
    wrapper = ROOT / "firmware/reconstructed/package_ota.py"
    ota_bin = OUT / "ring_mvp.ota.bin"
    run([sys.executable, wrapper, raw_bin, ota_bin, "--version", args.version],
        label="Packing SR08 OTA image")
    print(f"Built ELF: {elf}")
    print(f"Raw binary: {raw_bin}")
    print(f"OTA image: {ota_bin}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
