# Alice's conversion candidates and evidence

Candidate `.c.txt` files are excluded from the source manifest. A candidate is
not an accepted implementation: the installed source, compiler registration
in `../build_v204.py`, full-image verification and `../../WORK_CLAIMS.md` define
its status. Some old candidates describe functions that have since been
converted; consult the installed source before restarting an experiment.

Active investigations are recorded in `../../WORK_CLAIMS.md`:

- `display_switch_tail/`: ordinary-C state switch now six bytes from exact
  across 500 bytes; late callback reload fixed with a separate volatile slot,
  first lookup join still differs. ASM remains, compiler dumps retained.

- `event_ring_init/`: installed canonical ring-type cleanup verified with identical
  objects and full images; pure-C native variants remain inexact, ASM retained.

- `callback_sync/`: synchronizer test/volatile-order probes remain inexact;
  prerequisite signed sample-result APIs are separately accepted and fully
  verified. Correct-API LTO candidate overflows retained pool at 0x867c.

- `flash_operation/`: API-consistent vendor/SDK C candidates, retained LTO
  output shows block/stack differences and four-byte overflow; ASM remains.

- `range_validity/`: instruction-matching C, but full-image literal sharing
  changes an existing caller's LDR. Experiments reverted; ASM restored.
- `reading_acceptance/`: aligned/volatile clear and constant-lifetime probes;
  no byte-exact replacement yet.

- `display_word_writers/`: four remaining writers/signed formatter; ordinary C
  instructions are close, but full-context literal placement still differs.
  The two unsigned formatters from that batch are already installed as C.
- `PERSISTENT_HISTORY_NOTES.md` and the persistent-history candidates: full
  parent reconstruction plus its record-flag child; behavioral agreement alone
  does not meet byte parity.
- `average_top_three_nonzero_sample_values_by_frequency_alice_notes.md`:
  averaging scalar/lifetime trials and the improved shared-state initializer.
  Neither candidate is byte exact; assembly remains installed.

Accepted-conversion evidence is also kept here:

- `device_pool_reduction/`: source-only linker model reproduces the pointer
  fallback chain; regression-tested builder lookup fix preserves canonical
  image. Range-checker retry still differs at one existing LDR and is restored.

- `measurement_display/`: measurement/result-slot and timed display transitions;
  cached mode plus conditional fence fixes test order, shared sensor type fixes
  cross-unit layout. Full source-only image equals OEM.

- `flash_write_enable/`: SDK write-enable C, exact native region and complete
  standalone payload/container; fresh current-header build verified.

- `spi_chip_select/`: SDK spi_transaction, native C exact over all 48 bytes;
  complete source-only payload/container equality and probe evidence.

- `ota_patch_data/`: complete OTA patch-data C handler and coherent erase-status
  API; full source-only payload/container match OEM. `control_initializer/`
  records a separate unsuccessful ARM5 scheduling-barrier search.

- `radio_action_dispatch/`: complete six-way C switch, shared typed RAM layout
  and regression-tested cross-module placement fix; full image matches OEM.

- `advertising_command/`: SDK advertising command builder, accepted native C;
  byte probes, full source-only build log and verification JSON.
- `device_name_reader/`: flash name-reader conversion; native probes and its
  accepted source-only build evidence. See that folder's README and the current handoff
  for the full-build status.

Other top-level candidates are parked experiments. `../../WORK_CLAIMS.md`
records ownership and prior failures, including Jeff's candidates retained
from earlier merges. Read those notes before repeating a probe. Evidence from
old `/tmp` paths may no longer exist after a restart; recent probe logs and
verification summaries are retained beside their notes in this workspace.

## Jeff's pending candidates (formerly exact_clang18_jeff/pending_candidates/README.md)

This directory preserves unfinished work for the agent performing the merge.
These text files are excluded from the source manifest and are not accepted
implementations. Main retains its original implementation for these functions.

`select_two_display_patterns_mode_flag_at_ab78.c.txt`: rejected native ac6
probe: different register allocation and address formation,68-byte extent.
LTO probe83396 rejected L6291E: ER_07fcabac overlaps candidate ending0x07fcabb4.
Original writes five display patterns selected by bit1 of merged_globals_5650
byte0x30,at merged_globals_56d0+0x40,then+4,+3,+2,+1. Candidate preserves
that logical order but does not reproduce original bytes. Claim released.
No compiler/placer validation was relaxed.

UART2 candidate from build/cand/uart_setup is already accepted and installed
in main,not unfinished. See ../manual_sources/ and ../../HANDOFF.md.

Parked candidates from Jeff (moved here from the removed handoff_for_main/):
suotar_patch_data_ind_handler, nvds_get_func, and the 3d6c, 8500, 8878 and 8fb0
units. WORK_CLAIMS.md records why each is not byte-exact yet.
