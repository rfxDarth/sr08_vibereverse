# Alice: advertising command builder, 0x07fc32bc

The installed ordinary C in `../../manual_sources/` compiles natively with
ARM Compiler 6.16 (`ac6`) to all 144 OEM bytes: 132 instruction bytes and
three literal words. `installed_native.log` records the final source probe.
The typed layout comes from our SDK 6.0.24.1464, not ATC's project.

The first-use path allocates an 82-byte GAPM_START_ADVERTISE_CMD (0x0d0d),
destination task 9, source task 4. It sets both intervals to 928, all three
advertising channels, undirected advertising with static address source,
general-discoverable mode and allow-any filter policy. Advertising data is
22 bytes when merged_globals_5650+0x0a is nonzero, otherwise empty; its data
comes from merged_globals_574c+0x28. It always appends the flash-stored complete
device name to the scan response. Subsequent calls return the cached command.
No new length guards, timeouts or behavior changes were added.

Important reconstruction details:

- A volatile setup view preserves the separate channel/mode byte stores and
  the original order of interval/opcode stores. The SDK operation type gets
  an additional, layout-preserving union word view of code/address source;
  this avoids a uint16_t pointer cast into the byte fields.
- Publication and filter-policy stores do not need volatile. Removing each
  of channel, interval, opcode or mode ordering gives 17/14/8/6 byte changes,
  respectively; see remove_*.log. These probes are not accepted variants.
- The host pointer annotation generates no instructions and retains the SDK
  host subobject as the base for scan-response writes: (cmd+9)+length+35.
- Snapshot the output name length before reading the existing scan-response
  length. Reversing those two declarations gives exactly one byte difference:
  ADD r0,r7,r6 instead of ADD r0,r6,r7. Reversing the textual operands of the
  final C addition alone does not fix it. uint8/uint16/uint32/int32 snapshots
  all match when the declarations are in the correct order. No extra
  arithmetic annotation, register binding or assembly is needed.
- The name getter has only one actual input register. Its old three extra
  parameters were unused; it now shares the one-argument sr08_device_name.h
  declaration with this caller. Its instruction transcription is unchanged.

Full source-only build log: standalone_build.log. Assembly audit:
installed_audit.json. Final snapshot/artifact verification is recorded in
verification.json after the full build passes. The optional/reference probe
reads OEM bytes solely to compare compiler output; the normal source-only
builder has no original firmware input. No compiler-support/guard changes.
