# Alice: event-record ring initializer, 0x07fc2568

The record is event_record_queue_state at 0x07fd1f1c. The primary ring is at
+0x34, capacity 16, element size 20, storage0x07fd0610; secondary at+0x48,
capacity 8, element size 20, storage0x07fd0750. The two buffers are contiguous
because 16*20 = 0x140. Existing shared headers already encode these types and
consumer semantics. The old local struct called the ring capacity "type" and
the element size "capacity" and duplicated layout assertions.

## Installed type cleanup, assembly still present

The source now uses canonical sr08_event_record_queue.h and named ring fields,
uintptr_t storage values, element sizes and record counts. Removed redundant
local struct/assertions. Existing assembly constraints remain explicit; do NOT
classify this as an all-C conversion. Typed cleanup produces an identical
COMPLETE Clang18 object (896 bytes), same source path and normal flags, hash in
typed_cleanup_object_comparison.json. before_typed_cleanup.c.txt is the old file;
typed_installed_candidate.c.txt is the new file. No shared/Jeff/Tools changes.

Whole-image acceptance is recorded in verification.json: payload and complete
OTA container directly equal OEM V204, unchanged hashes. Ten support tests pass;
no preprocessing failures, all 582 inputs match workspace. No original firmware
in the source bundle. This accepts type cleanup, not assembly removal. source_input_hashes.json tracks the 582 input snapshot.

## Pure C investigations (none installed)

baseline uses volatile canonical descriptors and original store order. ARM6
emits 48 bytes, 39 differences: late materialization avoids register-save frame.
Nonvolatile C emits 52, 22 differences: correct save/return, store order and most
layout, but primary/secondary pointers and count/zero registers differ.

The following do not improve that result:
- Optimization O1/O2/O3/Os versus Oz.
- Eight pointer/constant annotation masks, volatile and nonvolatile.
- Signal fences at entry or between initial stores and later fields.
- Natural primary/secondary field order, always-inlined ring initializer helper,
  compound-literal aggregate assignment and raw-word views.
- ARM6.18 native (same 22 differences); ARM5 volatile 52/22 and nonvolatile 52/32,
  with different register save/padding. These profiles were isolated probe
  configuration only, not added to the build. Existing Tools used read-only.
- source pre-RA scheduler gives 26 differences; list-burr unchanged 22.
  linearize is not a supported ARM6 scheduler (recorded error, not a result).

See all candidate/log pairs and probe_results.json. No compiler output patched,
no hash/placement guard relaxed, no hardware action. Pure-C work remains active;
avoid rerunning equivalent source forms/flags. Next worthwhile work should
explain live-value/scheduling differences, rather than repeat field ordering.
