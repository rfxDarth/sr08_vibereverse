# V202 / V204 comparison

Both files use the same 64-byte wrapper. It begins with magic `70 51 aa ff`, has a little-endian payload length at offset `0x04`, a changing four-byte field at `0x08`, and an ASCII version at `0x0c`.

| Image | File size | Declared/payload size | Field at `0x08` | Version |
|---|---:|---:|---|---|
| V202 | 62,400 | `0xf380` = 62,336 | `50 8d 1e e2` | 1.202 |
| V204 | 67,200 | `0x10640` = 67,136 | `a6 4d 51 dd` | 1.204 |

For both files, the declared payload length equals the file size minus the 64-byte wrapper. The project script `Firmware_src/projects/target_apps/ble_examples/prox_reporter/Eclipse/make_bin_ota.py` explains the fields: offset `0x04` is the padded payload length, offset `0x08` is standard reflected CRC-32 over the unpadded code, and offset `0x21` is the original code length. The payload is padded with `0xff` so the complete image size is divisible by 240 bytes. The final image byte is replaced by an XOR of all preceding image bytes.

These rules match both stock images exactly:

| Image | Code size at `0x21` | CRC-32 of code / stored at `0x08` | Pad bytes | Final XOR byte |
|---|---:|---|---:|---|
| V202 | 62,116 (`0xf2a4`) | `0xe21e8d50` | 220 | `0x41` |
| V204 | 67,056 (`0x105f0`) | `0xdd514da6` | 80 | `0x83` |

The script sets the encryption flag to zero and implements CRC-32 and a one-byte XOR; it contains no cryptographic signing step. This strongly suggests these wrapper checks can be reproduced without manufacturer keys. It does not prove that every bootloader or ring revision accepts every image, but there is no indication here of a signature requirement.

## Motion event behavior

Ghidra 12.1.4 analysis of V202, mapped at `0x7fc0000`, found the same motion-triggered notification pattern documented for V204:

- V202 function `0x7fc4108` checks motion/timing state and, under state `0x10`, calls `FUN_07fc25ec(6, 2, 0, ...)`.
- V202 helper `0x7fc25ec` places those three bytes into a buffer and sends them through `FUN_07fc2f7c`.
- This matches V204’s `0x7fc41e4` → `0x7fc259c` path, which sends `06 02 00`.

Thus this behavior is present in both versions, not a V204-only regression. Static analysis still has not established whether the physical-button path is separate or converges on this notification.

The extracted V202 payload is `V202.payload.bin`. No firmware was changed or flashed. The REA Binwalk integration was unavailable, so the wrapper comparison was performed directly from the bytes.

## Thumb-aware byte-range matching

The refreshed Thumb-aware V202 analysis exported 237 functions, all with
successful decompilation. Comparing its single-range function hashes with the
430-function V204 inventory yields 71 exact function-range pairs. A broader
search of each V204 single-range body (at least eight bytes) against the full
V202 payload finds 116 exact byte substrings, each at one V202 address; this
includes 45 ranges not independently bounded as functions by V202 Ghidra
analysis. The complete addresses and hashes are in
`V202_V204_thumb_exact_matches.csv`.

These 71 exact whole-range matches plus 45 additional byte-identical fragments
provide strong anchors for studying changes across versions. They do not
recover relocation-dependent code, prove every function boundary in V202, or
identify the compiler/source revision.

## Displacement-normalized function candidates

`compare_v202_v204_thumb_normalized.py` compares each single-range function
body of at least 12 bytes after masking only Thumb `BL`, `LDR literal`, and
`ADR` displacements. It retains ordinary instruction bits and short-branch
displacements, so internal control-flow offsets remain part of the match. It
found 166 candidate pairs spanning 164 V204 functions. Of these, 68 pairs are
also byte-identical at the function ranges; 98 additional pairs (96 distinct
V204 functions) match only after the selected PC-relative fields are masked.
The additional V204 ranges total 11,228 bytes. Results are in
`V202_V204_thumb_normalized_matches.csv`.

These are code-shape anchors for source recovery, not semantic-equivalence
proofs. `audit_v202_v204_normalized_literals.py` audited literal loads within
those indexed ranges: 346 loaded words were equal, 57 changed flash pointers
referenced four identical bytes at the new locations, and 14 values moved
within the DA14585/586 SDK's SRAM address range (`0x07fc0000`–`0x07fd7fff`).
One literal remains materially unresolved: `FUN_07fc4d88` in V202 versus
`FUN_07fc4e98` in V204 loads `0x001700ca` versus `0x001700cc` into a local
structure passed to a helper. That difference must be preserved when
reconstructing V204. The full per-pair output is
`V202_V204_normalized_literal_audit.csv`; four-byte equality at a changed
pointer is only a small local check, not validation of the complete object.

`audit_v202_v204_normalized_calls.py` decoded the direct calls in the same
pairs. Across 352 call sites per version, 215 targets are numerically equal,
103 changed targets resolve to a V202/V204 function pair present in the
candidate map, and 34 changed targets remain unmapped (spread across 24
candidate pairs). The call audit is in
`V202_V204_normalized_call_audit.csv`. A mapped caller is therefore not
automatically a reusable implementation: each unresolved callee and changed
literal needs its own V204 analysis.

The 34 unmapped call sites reduce to 14 unique V202/V204 callee pairs.
`rank_unmapped_call_targets.py` compares their disassembled mnemonic and
register sequences, then compares their decompiler output after renaming
address-derived symbols. Ten pairs have identical mnemonic and register
sequences; four have substantially different code shape. The strongest anchor
is the 3,592-byte multi-range function `FUN_07fccc60` → `FUN_07fcdd68`: its
normalized decompiler output is identical across the versions. Other high
similarity pairs expose concrete layout changes: `FUN_07fc3df8` →
`FUN_07fc3ea0` changes two state-field offsets from `+0xd` to `+0xe`, while
`FUN_07fc7d10` → `FUN_07fc8c90` shifts three fields by one byte. The
`FUN_07fc508c` → `FUN_07fc519c` pair changes a command value from `0xca` to
`0xcc`. These comparisons provide source-structure leads while preserving
version-specific constants and fields. The measurements are in
`V202_V204_unmapped_call_target_similarity.csv`; the script does not claim the
decompiler output is original source or prove behavior equivalence.

## Large multi-range code identity check

The strongest call-target analogue is `FUN_07fccc60` in V202 and
`FUN_07fcdd68` in V204. Their four indexed code ranges have equal lengths and
all start addresses shift by exactly `0x1108`. Across the 3,592 function-body
bytes, every non-`BL` byte is identical. Eleven `BL` instructions have changed
encodings but still target the same ROM routines; six other `BL` instructions
retain identical encodings and target functions shifted by `0x1108`, each of
which is itself in the normalized V202/V204 function map.

The 82 bytes in the three gaps between Ghidra's ranges contain 16 differing
bytes, all in six 32-bit pointer occurrences. The remaining gap bytes are
identical. This isolates the differences to call relocation and pointer data
for this large routine, rather than changed instructions in its recovered code
ranges. The repeatable range/call/gap check is
`compare_v202_v204_multirange_pair.py`; its per-range and per-call record is
`07fccc60_07fcdd68_multirange_compare.csv`. Ghidra's decompiler output is also
identical after renaming address-derived symbols, but remains a pseudocode
artifact, not recovered original C.
