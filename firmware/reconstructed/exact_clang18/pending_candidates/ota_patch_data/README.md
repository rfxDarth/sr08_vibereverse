# Alice: OTA patch-data handler converted to C

Installed source: ../../manual_sources/suotar_patch_data_ind_handler.c.
The full 424-byte region at 0x07fcc148 matches OEM, including alignment/literals.
The source-only payload and complete OTA container also directly equal
OEM V204's corresponding bytes. verification.json, installed_audit.json, source_input_hashes.json and
standalone_build.log retain the final checkpoint.

## Header-publication ordering

The parked SDK/vendor C differed in the code-size read and pending-flag store.
A signal fence after reading code_size makes the read occur first, but moves
the pending store after the image-length store. A second fence after the pending
store reproduces all original instructions and registers:

    codesize = pfwHeader->code_size;
    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    merged_globals_5650.suota_copy_pending = 1;
    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    merged_globals_56d0.suota_image_len = codesize + sizeof(image_header_t);

These compiler-ordering fences emit no ARM instructions. The original 66-byte
temporary buffer and two volatile trailing-byte clears are preserved; their
purpose beyond the observed frame writes is not inferred. Header size (64) and
reserved-field offset (33) have static assertions. SDK image validation, XOR
checksum, block bounds, progress/error reports and flash-write behavior are
unchanged. Original source/tried variants are represented by baseline.c.txt and
the probe logs. The flash-write adapter is explicitly always_inline, matching
V204's call graph; the type-correct version otherwise outlines it into an
unplaced region (canonical_status_api_module.log). The enforced-inline version
passes all 424 bytes (canonical_inline_write_module.log).

## Flash return ABI corrected without breaking the other tree

The reconstructed no-result erase API was declared void, but OEM's OTA handler
checks the returned R0 status. Alice now implements erase_flash_range_status(),
returning perform_flash_memory_operation's uint32 result. Its source file,
frozen manifest and name catalog/generator are renamed consistently. The old
.text.erase_flash_range input section is retained for the frozen layout; the
old erase_flash_range symbol is a linker alias at the same 0x07fc3e90 entry,
needed by remaining ASM references. No duplicate wrapper code is emitted.

The shared flash header ADDS the new prototype and preserves the legacy void
prototype for Jeff's unmerged tree. All five active Alice C callers (including
two LTO support callbacks) use the status-returning name. Jeff's files were not
edited. status_api_changes.json lists the callers. The wrapper's 16 code bytes
and call relocation are identical before/after (erase_status_codegen.json).
The three standalone C callers have byte-identical native output; the full-image
check also covers the two LTO callbacks (status_callers_native_comparison.json).
Original C is retained under pre_status_api/ as .txt for review.

Merge the wrapper rename, manifest alias, caller updates, shared additive
prototype, generator/catalog changes and OTA handler together. Keep the legacy
alias while assembly references still name it. A source-wide check confirmed
that active Alice C callers no longer use the no-result API.

## Final verification

- Export: /tmp/sr08-alice-ota-data-source-bundle; all 581 build inputs compare
  byte-for-byte with workspace; no V20*.bin file is included.
- Artifacts: /tmp/sr08-alice-ota-data-standalone.{elf,payload.bin,bin}.
- 509 sections / 449 source units; 71 direct / 73 expanded assembly units;
  no preprocessing failures. Six support tests pass.
- Payload: 67136 bytes, SHA-256
  5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570.
- Complete OTA: 67200 bytes, SHA-256
  c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8.

No compiler/linker-support or parity-guard changes were needed in this batch.
