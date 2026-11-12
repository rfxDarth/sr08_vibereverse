# Alice: flash device-name reader, 0x07fc8fb0

The installed C in `../../manual_sources/` compiles with native ARM6 (`ac6`)
to the full 84-byte OEM region, including the alignment halfword, merged RAM
root literal and fallback "SR08" string with its original padding. The actual
instruction range is 70 bytes. See installed_native.log and final full-build
verification.json when present.

Starting from the previously parked C candidate:

- A record-address annotation keeps the device-name subobject pointer in r5
  across the flash read, while accesses to the marker and name still use the
  canonical merged RAM root in r6. No new RAM alias was introduced.
- An annotation of the already nonzero length preserves the separate zero and
  upper-bound checks instead of folding them into length-1 <= 16. Both
  annotations return their inputs unchanged and generate no runtime operation.
- With those two changes, the only mismatch is that ADR of the fallback string
  follows MOV of the length 4; OEM has them in the opposite order. An immediate
  return in the invalid-record branch reproduces OEM exactly. It avoids a third
  annotation: annotating constant 4 also matched, but was not chosen.
- Swapping the fallback assignments alone does not fix scheduling. Using the
  existing ac6source scheduler profile changes 14 bytes and is not accepted.

The four initial native probes: no annotations gives 80 bytes / 64 differences;
length only 84 / 22; record only 80 / 47; both 84 / 4. Four fallback variants:
swap assignments 84 / 4, address annotation 88 / 16, length annotation exact,
immediate invalid return exact. Saved logs record each result. Generated source
copies were removed after installing the final ordinary C; failed experiments
are not build inputs or replacements.

Behavior is unchanged: clear output length; read the 20-byte record from flash
0x64000; require marker '+', nonzero length <=17 and matching string length;
return its text on success. Otherwise mark the record 0x84 and return "SR08"
with length 4. The prior conversion established the canonical single-argument
prototype in sr08_device_name.h, shared with the advertising builder.

The source-only full-build log is standalone_build.log; installed_audit.json
records the assembly inventory. No compiler support or acceptance guard changed.
