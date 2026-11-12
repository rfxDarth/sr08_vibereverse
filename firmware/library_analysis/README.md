# Library replacement investigation

Goal: identify upstream implementations and directly compile/link matching code or
objects, reducing manual reconstruction while preserving the canonical V204
payload and OTA container hashes. No replacement is accepted on behavior or
symbol similarity alone. The delay helper at 0x07fc0194 is now linked from the original SDK `arch_asm.o` member; full-image parity passes.

## Local candidates inspected

| Candidate | Local evidence | Status / next evidence |
| --- | --- | --- |
| Dialog DA14585/586 SDK Keil library | `ATC_SR08_Ring_source/Firmware_src/sdk/platform/system_library/output/Keil_5/da14585_586.lib` contains ten object members, including `patch.o`, `smpc_util.o`, and `otp_verify_crc.o`; symbols include `PATCHED_atts_mtu_exc_req`, `PK_PointMult_func`, and BLE patch handlers. | Strong candidate for BLE patch routines. Compare executable sections with relocation-aware masking, then relink candidate members/sections at original addresses. Names alone do not prove matching code/version. |
| Compiler runtime | SDK archive exposes ARM build attributes and `__ARM_common_switch8`; V204 reconstruction includes software floating-point helpers. | Investigate ARM compiler runtime provenance; SDK compiler attributes do not by themselves prove which compiler built the ring application. |
| Bundled CRC-32 | `third_party/crc32/crc32.c` credits Gary S. Brown and implements a 256-entry reflected-polynomial lookup table. V204 has buffer and eight-bit-round helpers with polynomial `0xedb88320`. | Shared algorithm is insufficient attribution. Compare table contents and control flow; direct substitution not established. |
| micro-ecc | `third_party/micro_ecc/micro_ecc_license.txt` credits Kenneth MacKay, 2014. Directory contains no implementation source. | License presence is a lead only. Establish whether V204 flash contains this code or delegates ECC to ROM before sourcing an implementation. |
| Other bundled crypto | SDK includes AES sources, `third_party/hash/hash.c`, and `third_party/rand/chacha20.c`. | Inventory constants and executable signatures before assigning any V204 routines. |

## Acceptance gate

1. Record upstream provenance/version and relevant build options.
2. Identify target function(s), literal pools, dependencies, and relocations.
3. Compile or extract original library objects; compare instructions with relocation differences understood.
4. Integrate source/object references into the standalone build, preserving redistribution notices.
5. Verify the complete payload SHA-256 `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570` and container SHA-256 `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`.
6. Build an isolated exported bundle without original firmware or analysis artifacts.

The canonical build remains unchanged by this initial inventory.

## Initial archive scan

`match_sdk_archive.py` scans ELF32 function symbols from archive members using
standard-library parsing and GNU ar. It masks relocation storage bytes and
requires at least 20 compared bytes. The checked-in candidate report records
input hashes. These masked candidates require relocation and final-link
verification before replacing reconstructed sources.

The DA14585/586 Keil scan examined 68 functions and found 27 candidates
covering 4836 function bytes (sum, not deduplicated coverage). 5 functions
match completely without relocation masking. In particular,
`PATCHED_atts_mtu_exc_req` maps to the reconstructed MTU helper at 0x07fc01b4,
and `JT_llc_le_length_effective_func` matches all 182 bytes at 0x07fc0374.
Next: resolve archive relocations, verify section placement and literal pools,
and integrate original SDK object sections through the canonical build gate.

## First direct integration

The build extracts `arch_asm.o` unchanged from the hash-pinned original SDK
archive, strips debug metadata and renames `.text` for the existing section map.
Its two local Thumb branch relocations are linked normally. The complete
payload and OTA container retain their canonical hashes. Other archive
candidates are still under investigation; no broad SDK-version claim is made.

## Security member integration

`smpc_util.o` links as one original 232-byte `.text` section at 0x07fc180c.
It replaces `build_type_27_packet_or_set_fallback_state` and
`reverse_tagged_record_regions_then_start_p256`, plus their shared 14-byte
literal block at 0x07fc18e6. Every byte matches after resolving its eleven
relocations with the existing ROM map and `gapc_env = 0x07fd7e2c`. The build
skips both reconstructed implementations and removes their duplicated data
section from the compiled data object before linking.

The object references `uECC_secp256r1` and `uECC_valid_public_key` in ROM
(0x07f1cdd4 and 0x07f1d6ce). This establishes ROM delegation for those calls,
not the provenance of all other cryptographic code. Direct upstream reuse
now covers three routines and 262 linked bytes including the shared literals.
