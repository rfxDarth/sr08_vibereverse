#!/usr/bin/env python3
"""Synchronize readable names and trim repeated session boilerplate in Ghidra pseudocode."""
from __future__ import annotations

import argparse
import csv
import json
import re
from pathlib import Path

RECONSTRUCTED = Path(__file__).resolve().parents[1]
ARCHIVE = Path(__file__).resolve().parent / "functions"
CATALOG = RECONSTRUCTED / "exact_clang18" / "V204_function_names.csv"
MANIFEST = RECONSTRUCTED / "exact_clang18" / "V204_source_manifest.json"
AUTO_DATA = RECONSTRUCTED / "data" / "V204_auto_data.c"
TABLE_DATA = RECONSTRUCTED / "data" / "V204_tables.c"
FUNCTION_ID = re.compile(r"\bFUN_([0-9a-fA-F]{8})\b")
THUNK_ID = re.compile(r"\bthunk_FUN_([0-9a-fA-F]{8})\b")
DATA_ID = re.compile(r"\bDAT_([0-9a-fA-F]{8})\b")
DATA_FIELD_NAMES = {
    0x07FC3454: "v204_registration_slot_literals.view.registration_slot_values",
    0x07FC3458: "v204_registration_slot_literals.view.registration_slot_sentinel",
    0x07FC345C: "v204_registration_slot_literals.view.registration_event_id_base",
    0x07FC88CC: "v204_radio_range_literal_pool.view.device_control_state_bytes",
    0x07FC88D0: "v204_radio_range_literal_pool.view.default_range_value",
    0x07FC88D4: "v204_radio_range_literal_pool.view.minimum_range_value",
    0x07FC88D8: "v204_radio_range_literal_pool.view.maximum_range_value",
    0x07FC88DC: "v204_radio_range_literal_pool.view.cycle_and_schedule_state_bytes",
    0x07FC832C: "v204_radio_state_literal_pool.view.device_control_state_bytes",
    0x07FC8330: "v204_radio_state_literal_pool.view.radio_update_parameter_8330",
    0x07FC8334: "v204_radio_state_literal_pool.view.radio_update_parameter_8334",
    0x07FC8338: "v204_radio_state_literal_pool.view.radio_profile_state_bytes",
    0x07FC2E4C: "v204_device_setting_literal_pool.view.state_bytes",
    0x07FC87EC: "v204_radio_dispatch_literal_pool.view.radio_action_state_bytes",
    0x07FC87F0: "v204_radio_dispatch_literal_pool.view.send_device_command_pair",
    0x07FC4858: "v204_clock_literal_pool.view.sensor_conversion_request_register",
    0x07FC485C: "v204_clock_literal_pool.view.sensor_conversion_result_register",
    0x07FC4860: "v204_clock_literal_pool.view.timekeeping_state_words",
    0x07FC4864: "v204_clock_literal_pool.view.tick_rebase_threshold",
    0x07FC4868: "v204_clock_literal_pool.view.shared_context_bytes",
    0x07FC486C: "v204_clock_literal_pool.view.time_event_queue_bytes",
    0x07FC4870: "v204_clock_literal_pool.view.cycle_and_schedule_state_bytes",
    0x07FC4874: "v204_clock_literal_pool.view.device_control_state_bytes",
    0x07FC4878: "v204_clock_literal_pool.view.schedule_threshold_4878",
    0x07FC487C: "v204_clock_literal_pool.view.schedule_threshold_487c",
    0x07FC4880: "v204_clock_literal_pool.view.mode_and_display_state_bytes",
    0x07FC4884: "v204_clock_literal_pool.view.negative_time_adjustment_4884",
    0x07FC4888: "v204_clock_literal_pool.view.seconds_per_day",
    0x07FC488C: "v204_clock_literal_pool.view.last_second_of_day",
    0x07FC4890: "v204_clock_literal_pool.view.word_4890",
    0x07FC4894: "v204_clock_literal_pool.view.persistent_measurement_state_bytes",
    0x07FC4898: "v204_clock_literal_pool.view.signed_threshold_4898",
    0x07FC489C: "v204_clock_literal_pool.view.word_489c",
    0x07FC48A0: "v204_clock_literal_pool.view.callback_function_48a0",
    0x07FC48A4: "v204_clock_literal_pool.view.shared_measurement_state_bytes",
}
ROM_CALL = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")
LOCAL_LABEL = re.compile(r"\bLAB_([0-9a-fA-F]{8})\b")
DIVISION_OUTPUT = re.compile(r"\bextraout_r1(_\d+)?\b")
MANUAL_PARAMETER_NAMES = {
    # The first two values seed separate histories and are transformed in
    # place. The next two bytes scale those channels; the last three are passed
    # directly to the typed accelerometer classifier.
    0x07fcdd68: [
        "channel_a_value", "channel_b_value", "channel_a_scale", "channel_b_scale", "x_sample", "y_sample",
        "z_sample",
    ],
    # This parser is an instruction-pinned routine with an untyped entry shim.
    # The decompiler's pointer reads/writes identify its input and output roles.
    0x07fc76a0: [
        "record_bytes", "record_length", "record_index_out", "parse_status_out", "field_offset_out",
    ],
}
DATA_OBJECT = re.compile(
    r"\b([A-Za-z_]\w*)\s*(?:\[[^\]]*\]\s*)?V204_AUTO_DATA\(([0-9a-fA-F]+)\)"
)
TABLE_OBJECT = re.compile(
    r"\b([A-Za-z_]\w*)\s*(?:\[[^\]]*\]\s*)?V204_DATA_AT\(([0-9a-fA-F]+)\)"
)
MACRO_INVOCATION = re.compile(r"\b([A-Z][A-Z0-9_]*)\s*\(([^()]*)\)")
FUNCTION_DECLARATION = re.compile(r"\b([A-Za-z_]\w*)\s*\(([^();]*)\)\s*;")


def load_function_names() -> dict[int, str]:
    with CATALOG.open(newline="") as stream:
        rows = csv.DictReader(stream)
        names: dict[int, str] = {}
        for row in rows:
            address = int(row["address"], 16)
            name = row["readable_function"]
            if address in names and names[address] != name:
                raise SystemExit(f"conflicting function names at 0x{address:08x}")
            names[address] = name
    return names


def load_named_data_objects() -> dict[int, str]:
    names: dict[int, str] = {}
    for path, pattern, opaque_prefixes in (
        (AUTO_DATA, DATA_OBJECT, ("v204_auto_",)),
        (TABLE_DATA, TABLE_OBJECT, ("v204_data_",)),
    ):
        for name, address in pattern.findall(path.read_text()):
            if name.startswith(opaque_prefixes):
                continue
            address_value = int(address, 16)
            if address_value in names and names[address_value] != name:
                raise SystemExit(f"conflicting data names at 0x{address_value:08x}")
            names[address_value] = name
    return names


def parse_parameter_names(parameters: str) -> list[str] | None:
    parameters = parameters.strip()
    if not parameters or parameters == "void":
        return []
    # Split only at top level: attributes and function-pointer types can contain
    # commas inside nested parentheses.
    parts = []
    start = depth = 0
    for index, character in enumerate(parameters):
        if character == "(":
            depth += 1
        elif character == ")":
            depth -= 1
            if depth < 0:
                return None
        elif character == "," and depth == 0:
            parts.append(parameters[start:index])
            start = index + 1
    if depth != 0:
        return None
    parts.append(parameters[start:])

    names = []
    for parameter in parts:
        if parameter.strip() == "...":
            # The names before a variadic tail still describe the fixed ABI
            # arguments and can be synchronized independently of varargs.
            break
        parameter = re.sub(r"__attribute__\s*\(\(.*?\)\)", " ", parameter)
        if "..." in parameter:
            return None
        identifiers = re.findall(r"[A-Za-z_]\w*", parameter)
        if not identifiers:
            return None
        names.append(identifiers[-1])
    return names


def parameter_names(source: str, symbol: str) -> list[str] | None:
    # Match the declaration's balanced parameter list, then allow attributes
    # between ')' and '{' (the exact source often marks naked parameters unused).
    for match in re.finditer(r"\b" + re.escape(symbol) + r"\s*\(", source):
        start = match.end()
        depth = 1
        index = start
        while index < len(source) and depth:
            if source[index] == "(":
                depth += 1
            elif source[index] == ")":
                depth -= 1
            index += 1
        if depth:
            continue
        parameters = source[start:index - 1]
        tail = source[index:index + 512]
        # A prototype ends with ';'; a definition reaches '{' first. Attributes
        # may contain balanced braces only in unusual compiler extensions, which
        # are not used by these sources.
        tail = re.sub(r"/\*.*?\*/|//[^\n]*", "", tail, flags=re.S)
        opening = tail.find("{")
        semicolon = tail.find(";")
        if opening < 0 or (semicolon >= 0 and semicolon < opening):
            continue
        return parse_parameter_names(parameters)
    return None


def load_macro_function_parameters() -> dict[str, list[str]]:
    macro_parameters = {}
    include_dir = RECONSTRUCTED / "include"
    for path in include_dir.rglob("*.h"):
        lines = path.read_text(errors="replace").splitlines()
        index = 0
        while index < len(lines):
            if not re.match(r"\s*#\s*define\s+[A-Z][A-Z0-9_]*\s*\(", lines[index]):
                index += 1
                continue
            macro_lines = [lines[index]]
            while macro_lines[-1].rstrip().endswith("\\") and index + 1 < len(lines):
                index += 1
                macro_lines.append(lines[index])
            macro_source = "\n".join(macro_lines)
            definition = re.search(r"#\s*define\s+([A-Z][A-Z0-9_]*)\s*\(", macro_source)
            signature = re.search(r"\bfunction_name\s*\(([^()]*)\)\s*\{", macro_source, re.S)
            if definition and signature:
                names = parse_parameter_names(signature.group(1))
                if names is not None:
                    macro_parameters[definition.group(1)] = names
            index += 1
    return macro_parameters


def load_header_function_parameters() -> dict[str, set[tuple[str, ...]]]:
    declarations: dict[str, set[tuple[str, ...]]] = {}
    include_dir = RECONSTRUCTED / "include"
    for path in include_dir.rglob("*.h"):
        for match in FUNCTION_DECLARATION.finditer(path.read_text(errors="replace")):
            names = parse_parameter_names(match.group(2))
            if names is not None:
                declarations.setdefault(match.group(1), set()).add(tuple(names))
    return declarations


def macro_parameter_names(source: str, symbol: str,
                          macro_parameters: dict[str, list[str]]) -> list[str] | None:
    matches = []
    for match in MACRO_INVOCATION.finditer(source):
        if match.group(1) not in macro_parameters:
            continue
        if re.search(r"\b" + re.escape(symbol) + r"\b", match.group(2)):
            matches.append(macro_parameters[match.group(1)])
    return matches[0] if len(matches) == 1 else None


def load_decompiler_parameter_names() -> dict[Path, list[str]]:
    with CATALOG.open(newline="") as stream:
        catalog = {int(row["address"], 16): row for row in csv.DictReader(stream)}
    manifest = json.loads(MANIFEST.read_text())
    macro_parameters = load_macro_function_parameters()
    header_parameters = load_header_function_parameters()
    parameters_by_path = {}
    for item in manifest["sources"]:
        address = int(item["address"])
        if address not in catalog:
            continue
        row = catalog[address]
        archived = ARCHIVE / f"0x{address:x}.c"
        if not archived.is_file():
            continue
        symbol = item["symbol"]
        exact_source = (RECONSTRUCTED.parent.parent / item["source"]).read_text(errors="replace")
        source_names = parameter_names(exact_source, symbol)
        if source_names is None:
            source_names = macro_parameter_names(exact_source, symbol, macro_parameters)
        archived_source = archived.read_text(errors="replace")
        archived_names = parameter_names(archived_source, symbol)
        if archived_names is None:
            continue
        if source_names is None or not source_names:
            prototype_candidates = set()
            for name in (symbol, row["readable_function"]):
                prototype_candidates.update(
                    candidate for candidate in header_parameters.get(name, set())
                    if 0 < len(candidate) <= len(archived_names)
                )
            if len(prototype_candidates) == 1:
                source_names = list(next(iter(prototype_candidates)))
        # Ghidra can infer additional register or stack arguments for naked and
        # variadic routines. A source signature still proves the ordered prefix;
        # leave any extra decompiler parameters generic.
        if source_names is None or len(source_names) > len(archived_names):
            continue
        if len(set(source_names)) != len(source_names):
            continue
        # A target name already used by a local or global could shadow a formal
        # parameter in the pseudocode, so leave that function's parameters alone.
        existing = set(re.findall(r"\b[A-Za-z_]\w*\b", archived_source))
        old_names = {f"param_{index}" for index in range(1, len(source_names) + 1)}
        safe_names = []
        for index, name in enumerate(source_names):
            current_name = archived_names[index]
            if current_name == name or name not in existing or name in old_names:
                safe_names.append(name)
                continue
            # Keep source-derived names even when Ghidra gave a local the same
            # name; the suffix distinguishes the formal argument from that local.
            argument_name = name + "_argument"
            safe_names.append(argument_name if argument_name not in existing else "")
        if any(safe_names):
            parameters_by_path[archived] = safe_names
    for address, names in MANUAL_PARAMETER_NAMES.items():
        archived = ARCHIVE / f"0x{address:x}.c"
        if archived.is_file():
            existing = parameters_by_path.get(archived, [])
            if existing:
                names = [
                    name if index >= len(existing) or existing[index] is None else existing[index]
                    for index, name in enumerate(names)
                ]
            parameters_by_path[archived] = names
    return parameters_by_path


def load_rom_names() -> dict[int, str]:
    manifest = json.loads(MANIFEST.read_text())
    names = {address: name for name, address in manifest["rom_symbols"].items()}
    if len(names) != len(manifest["rom_symbols"]):
        raise SystemExit("ROM symbol map contains ambiguous address aliases")
    return names


def load_local_label_names() -> dict[int, str]:
    """Recover descriptive names for source labels and archived local branches."""
    manifest = json.loads(MANIFEST.read_text())
    names_by_address: dict[int, set[str]] = {}
    label_pattern = re.compile(r"\b([A-Za-z_]\w*_at_(07fc[0-9a-fA-F]{4}))\s*:")
    for item in manifest["sources"]:
        source = (RECONSTRUCTED.parent.parent / item["source"]).read_text(errors="replace")
        for name, address in label_pattern.findall(source):
            names_by_address.setdefault(int(address, 16), set()).add(name)

    # Some Ghidra labels have no matching source label because that address is
    # represented by a compiler-generated branch target. Give those labels the
    # owning routine's readable name and retain the fixed address for tracing.
    catalog_names = load_function_names()
    for archived in ARCHIVE.glob("*.c"):
        match = re.fullmatch(r"0x([0-9a-fA-F]{1,8})\.c", archived.name)
        if not match:
            continue
        owner = catalog_names.get(int(match.group(1), 16))
        if owner is None:
            continue
        source = archived.read_text(errors="replace")
        for label_address in LOCAL_LABEL.findall(source):
            address = int(label_address, 16)
            names_by_address.setdefault(address, set()).add(
                f"{owner}_label_at_{label_address.lower()}"
            )

    selected_names = {}
    for address, names in names_by_address.items():
        # When both assembler-local and globally scoped labels name an address,
        # prefer the descriptive global branch label.
        branch_names = {name for name in names if "_branch_at_" in name}
        candidates = branch_names or names
        if len(candidates) == 1:
            selected_names[address] = next(iter(candidates))
    return selected_names


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true", help="write the catalog names into archived sources")
    args = parser.parse_args()

    functions = load_function_names()
    data_objects = load_named_data_objects()
    parameter_map = load_decompiler_parameter_names()
    rom_names = load_rom_names()
    local_labels = load_local_label_names()
    changes: list[tuple[Path, str, str]] = []
    for path in sorted(ARCHIVE.glob("*.c")):
        source = path.read_text()

        def replace_function(match: re.Match[str]) -> str:
            address = int(match.group(1), 16)
            if address not in functions:
                raise SystemExit(f"no catalog function for {match.group(0)} in {path}")
            return functions[address]

        def replace_thunk(match: re.Match[str]) -> str:
            address = int(match.group(1), 16)
            if address not in functions:
                raise SystemExit(f"no catalog function for {match.group(0)} in {path}")
            return "thunk_" + functions[address]

        def replace_data(match: re.Match[str]) -> str:
            address = int(match.group(1), 16)
            return DATA_FIELD_NAMES.get(address, data_objects.get(address, match.group(0)))

        def replace_rom_call(match: re.Match[str]) -> str:
            address = int(match.group(1), 16)
            return rom_names.get(address, match.group(0))

        def replace_local_label(match: re.Match[str]) -> str:
            address = int(match.group(1), 16)
            return local_labels.get(address, match.group(0))

        updated = THUNK_ID.sub(replace_thunk, source)
        updated = FUNCTION_ID.sub(replace_function, updated)
        # Ghidra typed this array's starting address as one word; preserve that
        # iteration type after replacing the address with the checked record array.
        updated = re.sub(r"&DAT_07fd0340\b", "(undefined4 *)v204_startup_records", updated)
        updated = DATA_ID.sub(replace_data, updated)
        updated = ROM_CALL.sub(replace_rom_call, updated)
        updated = LOCAL_LABEL.sub(replace_local_label, updated)
        updated = re.sub(r"^// limitations:.*(?:\n|$)", "", updated, flags=re.M)
        if "__aeabi_uidiv(" in updated or "__aeabi_idiv(" in updated:
            updated = DIVISION_OUTPUT.sub(
                lambda match: "division_remainder" + (match.group(1) or ""), updated
            )
        for index, name in enumerate(parameter_map.get(path, []), 1):
            if name:
                updated = re.sub(r"\bparam_" + str(index) + r"\b", name, updated)
        if updated != source:
            changes.append((path, source, updated))

    if not changes:
        print("archived decompiler symbols already match known catalog names")
        return
    print(f"{len(changes)} archived source files contain names to synchronize")
    for path, _, _ in changes:
        parameters = parameter_map.get(path, [])
        parameter_summary = ", ".join(
            f"param_{index}={name}" for index, name in enumerate(parameters, 1) if name
        )
        suffix = f" ({parameter_summary})" if parameter_summary else ""
        print(f"{path.name}{suffix}")
    if not args.apply:
        print("preview only; pass --apply to write the catalog names")
        return
    for path, _, updated in changes:
        path.write_text(updated)
    print(f"updated {len(changes)} archived pseudocode files")


if __name__ == "__main__":
    main()
