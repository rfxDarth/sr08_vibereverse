# V204 firmware notes

## Reset, startup and vector table recovered in Thumb context

The V204 payload begins at `0x7fc0000`. Its initial vector words give the
initial stack pointer `0x07fd2668` and reset entry `0x07fc0145` (Thumb address
`0x7fc0144`). The reset function at `0x7fc0144` calls the setup routine at
`0x7fcf11c` through a literal pointer, then branches to `0x7fc0130`. That
routine installs the stack pointer, calls initializer dispatcher
`0x7fc1904`, and branches through the thunk at `0x7fc0138` to the main entry
`0x7fc98d4`.

`0x7fcf11c` performs low-level setup: it writes `6` to `0x50003400`, writes
`0x8000`, then `2` and `1` to `0xe000e180` with DSB/ISB barriers between the
writes, clears `0x50000000`, and enables interrupts. `0x7fc1904` walks two
16-byte initializer records from `0x7fd0340` up to (but excluding)
`0x7fd0360`. Each record's fourth word is an untagged callback address; the
dispatcher sets bit 0 before `BLX`, then passes the first three words as
arguments. Both records call `0x7fcd0ba` with argument triples
`(0x07fd05f0, 0x07fd05f0, 0x2078)` and
`(0x07fd50c0, 0x07fd50c0, 0x748)`. The callback clears the selected byte
range. This proves the reset-to-main path and a two-entry initialization
callback table; the identity and purpose of the initialized regions remain
to be mapped.

The vector words through offset `0x9c` were decoded and normalized for the
Thumb bit. Every in-payload target in that table now has a function entry in
the current inventory; the external target at `0x7f0271c` resolves to ROM.
Fault vectors at `0x7fc014c` and `0x7fc0164` select the active exception stack
and indirect-call handlers at `0x7fc1df8` and `0x7fc1d88`. The latter sets
error globals, calls `0x7fc5e54(1, param_1)`, sets the globals again, and loops.
This is static control-flow evidence only; it does not demonstrate behavior
on hardware.

## Main-loop continuation shares its caller's frame

Ghidra's separate function export at `0x7fc9da0` is not an ordinary standalone
C routine. The startup/main routine at `0x7fc98d4` pushes only `lr` and
allocates `0x84` bytes of stack. After initialization and a long peripheral
service loop, it calls `0x7fc9da0` at `0x7fca5a4` without releasing that frame.
The first instruction at `0x7fc9da0` is an `ldrh` through incoming `r5`; it has
no prologue or stack allocation. It also reads the live caller stack slots and
uses values in `r4`–`r7` as persistent state. Its `0x7fca5a4` back edge calls
`0x7fc9da0` again after interrupt/wakeup handling. The function export's
`unaff_r*` and `in_stack_*` values are therefore artifacts of Ghidra's split
function boundary, not a useful standalone C interface.

For a better source-level view, `MergeMainContinuation.java` unions the main
and continuation function bodies, then overrides the non-returning internal
`BL` at `0x7fca5a4` as an intra-function branch for decompiler control flow.
The resulting 605-line analysis output is `V204_main_merged.c`; it removes the
orphan `unaff_r*` and `in_stack_*` variables and recovers shared stack locals
through the complete loop. This flow override is only in a temporary Ghidra
project and does not alter the payload. The merged export is better evidence
for reconstructing the source state machine, but its types, names, volatile
semantics and code generation still require manual checking against Thumb
instructions. A standalone decompile/compile comparison of `0x7fc9da0` cannot
establish correct C semantics or code generation. Evidence: `V204.thumb.asm`
around `0x7fc98d4`, `0x7fc9da0`, and `0x7fca5a4`; original function ranges are
in `V204_functions/thumb_full/index.tsv`.

`annotate_merged_main_rom.py` resolves all 22 external calls in this merged
listing to names from the available DA14585 ROM table. In the long-running
loop, the key calls include `rwip_schedule`, `ke_timer_set`,
`ke_sleep_check`, `ke_timer_sleep_check`, `ea_sleep_check`, and
`lld_sleep_enter`. This shows that part of the routine is the radio/kernel
event and sleep loop. It does not assign intent to application globals or
identify the OEM source/compiler.

The ATC SDK's `da14585_586.h` register map independently names several direct
MMIO references present in this same routine: `0x50000000` is `CLK_AMBA_REG`,
`0x50000008` is `CLK_RADIO_REG`, `0x5000000a` is `CLK_CTRL_REG`,
`0x50000010` is `PMU_CTRL_REG`, `0x50000012` is `SYS_CTRL_REG`,
`0x50000014` is `SYS_STAT_REG`, `0x50000022` is `CLK_16M_REG`,
`0x5000002a` is `ANA_STATUS_REG`, and `0x40000030` is
`BLE_DEEPSLCNTL_REG`. The merged C and assembly show repeated status polling,
clock/power-control writes and `WFI` around those registers. These names are
hardware register identities from the sibling SDK; they do not prove that the
OEM compiled against that exact header revision.

## Switch-code compiler clue

The dispatcher in `FUN_07fc6fc0` is a useful compiler fingerprint. V204's
Thumb sequence at `0x7fc7030` scales the case index, aligns the PC, loads a
16-bit relative table entry, scales it, then branches with `add pc,r0`. The
table at `0x7fc703c` has 18 relative halfword entries. GCC 13.2.1 and GNU Arm
GCC 4.9.3 both lower this recovered C switch to external
`__gnu_thumb1_case_uqi`/`__gnu_thumb1_case_uhi` helper calls. Clang 18.1.3
instead emits the same *shape* of inline PC-relative table and computed-PC
branch as V204.

That makes an LLVM/ARM Compiler-style lowering a stronger candidate than the
tested GCC configurations, but it does not identify the OEM toolchain. Clang
18 `-Os` compiles the recovered full function span at 768 bytes versus V204's
694-byte span and differs by 2,326 bits over the overlapping bytes; `-Oz` is
the same size/output. Clang 14 `-Os`/`-Oz` emits 776 bytes and differs by
2,369 bits. Attempts to bind pseudocode parameters to the target's
`r5`/`r6`/`r7` registers did not close the mismatch. The repeatable probe is
`probe_switch_codegen.py`; its binaries and disassemblies are under
`compiler_probes/FUN_07fc6fc0/`. The target's switch structure is now
understood, while exact source/types/compiler options remain unresolved.

The ATC Keil SDK object `patch.o` provides an independent compiler sample:
its `.comment` names ARM Compiler 5.06 update 7 (build 960), `ArmCC`, targeting
Cortex-M0 Thumb. Its compiled switch sites call `__ARM_common_switch8`; the
26-byte helper clamps an index, loads a byte-sized table offset, and branches
through `bx r3`. V204's `FUN_07fc6fc0` instead contains its relative halfword
table and computed-PC branch inline, with no corresponding helper call. This
is evidence that the available ATC ArmCC build does not reproduce this target
switch strategy under the sampled settings. It does not rule out other ArmCC
versions/options or establish that this OEM routine came from a C `switch`.

## External ROM calls resolved

The DA14585 SDK symbol table in the ATC source tree resolves all 683 external
call references in the 430 current Thumb-aware pseudocode files to 128 ROM
symbols. `V204_ROM_SYMBOL_ANALYSIS.md` records the map and counts, and
`V204_functions/thumb_full/named_functions/` contains derived pseudocode with
ROM function names. The table's 2017 date makes it useful for symbol naming,
but it does not prove this is the OEM firmware's SDK revision or compiler.

An independent scan of the Thumb disassembly's direct `BL`/`BLX` targets
found zero in-payload call targets outside the current function ranges. This
is a useful consistency check, but it cannot find functions reached only by
indirect calls or code omitted from the disassembly itself.

## Restoring division remainders in `FUN_07fcdd68`

Ghidra's pseudocode for this 3.6 KB multi-range function contains several
`extraout_r1` values after calls to `0x07f1dfb8` and `0x07f1dfe4`. The ROM map
identifies those addresses as `__aeabi_uidivmod` and `__aeabi_idivmod`.
At `0x7fce1cc`, for example, the code calls unsigned divmod and immediately
compares `r1` with zero; other sites compare the remainder or use it in a
character calculation. This establishes the extra outputs as division
remainders, not arbitrary unknown state. A source-level reconstruction should
express these as `%` operations with the matching signedness and operands.

`probe_multirange_function_codegen.py` writes this correction into an
exploratory C candidate before compiling it. GCC 13, GCC 4.9.3, Clang 14 and
Clang 18 still produce outputs with substantial size and byte differences from
the target. The corrected remainder semantics improve the pseudocode but do
not recover the original expression structure or identify the OEM compiler.
An alternative candidate expresses the helper calls explicitly as 64-bit EABI
divmod results, using the upper half as the remainder. With GCC 13 and Clang
18 at `-Os`, this emits 4,080 and 3,860 bytes respectively, with only 53 and
66 equal bytes in the 3,592 concatenated function bytes. An audit found that an
earlier score included 82 unrelated bytes between Ghidra's four code ranges;
the probe and README now exclude these gaps. The explicit-call hypothesis did
not improve the match. Exact results are in
`compiler_probes/multirange_07fcdd68/README.md`.
Probe details and per-build metrics are in
`compiler_probes/multirange_07fcdd68/README.md`.

## Motion event notification

REA/Ghidra analyzed `V204.payload.bin` (SHA-256 `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`) as raw ARM firmware, mapped at `0x7fc0000`.

- `0x7fcca68` reads a six-byte sample from register/address `0xa8`, decodes three signed values, and passes them through `0x7fc3d6c` to `0x7fc41e4`.
- In `0x7fc41e4`, when the state byte at `DAT_07fc439c + 0x0c` is `0x10` and its time gate passes, the firmware calls `0x7fc259c(6, 2, 0, ...)`.
- `0x7fc259c` queues exactly three bytes (`06 02 00`). Its extra caller arguments are not serialized, so this notification contains no sensor sample with which the phone could distinguish a press from a shake.
- The resolved direct callers of `0x7fc259c` are `0x7fc20f0`, `0x7fc25c4`, `0x7fc3a38`, `0x7fc41e4`, and `0x7fc4e98`. The motion path at `0x7fc41e4` is the observed sender of `06 02 00`.

This supports the conclusion that shaking can produce the same event in mode `0x10`. It does not yet establish whether the physical button has a separate firmware path that converges on this notification.

## Evidence and limits

- Motion callback pseudocode: `ev_8ebf7049354d11beac0a816b33da52f7ca12675b8c2d718cb146b0eda7b4d311`
- Caller and three-axis processing: `ev_f9c71cec8fc346b1f3a28931ce1ef8c5f4f9c1cbe70a2d888e9fe9a0f5a49d7f`
- Sensor polling path: `ev_4817a789f51d8773b6cd83e2625093174999368bbe83468e9732816694765cb0`
- Three-byte packet wrapper: `ev_d114b28bf97c3fa29bbfae46ae9710d1d18b79cedc31f01dc902da6847774513`
- Direct callers of the wrapper: `ev_35a25b6e11be6bd9c120a2f73bce3751f3c557519cc9aaad8b2f1cbfb82e9f54`
- Complete exported REA Evidence bundle: `V204.rea-evidence.json`

These are static observations from Ghidra 12.1.4; the firmware was not executed. Sensor semantics and the button-to-notification path remain unresolved.

## V204 Thumb regions recovered after setting processor context

`RecoverMissedFunctions.java` re-imports the raw V204 payload at `0x7fc0000`,
sets Ghidra's `TMode` context for two missed code regions, clears the incorrect
listing, and decompiles the resulting functions. Generated pseudocode is in
`V204_functions/manual_*.c`. This corrects an earlier analysis mistake: those
regions are Thumb code, and importing as generic ARM without setting Thumb
context caused invalid function boundaries and garbage pseudocode.

Static observations from the regenerated Thumb disassembly and pseudocode:

- `0x7fc334c` copies a 16-byte per-index record into an allocated per-index
  object, stores a state byte, runs `0x7fc33a4`, then registers callback
  `0x7fcc9c9` in timer slot `0x0b` unless global byte `+100` is already set.
  Its direct caller `0x7fc6458` reaches it on the branch where a per-connection
  byte is nonzero and either a 16-bit value is zero or matches the stored
  16-bit value. The exact callback/event meaning remains unknown.
- `0x7fc5f38(index)` returns a cached per-index allocation; if empty, it asks
  the allocator at `0x7f1bbb0` for `index * 0x100 + 10` bytes, aligned to four,
  with allocation tag `0x12`, and stores the pointer.
- `0x7fc5fb0` dispatches on the first byte of a message (valid IDs 2 through
  7); its index is the high byte of the fourth argument. ID 2 copies six bytes
  into a per-index record, updates display/config-like state, initializes a
  data buffer, marks a global flag, and registers timer callback
  `0x7fcc9c9` in slot `0x0b`. ID 3 clears per-index flags and calls
  `0x7fc3220`. IDs 5 through 7 copy fixed-size message fields into different
  per-index records and set flags. Other IDs call `0x7fcc578`. These are
  observed operations; labels such as connect, disconnect, or characteristics
  require corroboration from the caller/message producer.
- `0x7fc60ec` handles message IDs 0 and 5 through 7. ID 0 sets a per-index
  state byte, clears a flag in another per-index record, allocates/configures
  a buffer on first use, and releases it. ID 7 copies data to a record, calls
  `0x7fc34a8`, obtains a 16-bit value from `0x7f02976`, updates a second
  per-index structure, and clears a queued pointer. Other IDs in the accepted
  range 5..7 follow their separate data-copy path; unexpected nonzero IDs
  enter a fatal-looking loop after writing `200` and `8` to two globals.
- `0x7fc5f80` logs the string `find_phone_key_handle` then calls
  `0x7fc3b58(1)`. `0x7fc334c` also registers the HID-named timer callback.
  This ties the recovered code to BLE/HID-related initialization, but does not
  yet explain why the tested 1.938 image stopped advertising.
- A scan of the Thumb disassembly for direct `BL` targets absent from the
  original Ghidra function-range inventory found additional missing entries.
  `0x7fc0a98` drains/frees a cached per-index message and copies selected
  fields based on message length/type; `0x7fc302c` is a guarded
  one-time/state-sequenced initializer; `0x7fc34a8` fills a buffer with
  generated bytes and zero-fills the remainder; `0x7fc6458` chooses between
  `0x7fc334c` and `0x7fc33c0` using per-index and 16-bit state; `0x7fc98a0`
  lazily allocates a per-index buffer; `0x7fcc3cc` and `0x7fcc3f0` allocate
  small records and store a word or byte; `0x7fcc538` clears a shared object
  and resets state after two calls to `0x7fc32bc`. Their decompilations are in
  the corresponding `manual_*.c` files. Several routines' purpose and data
  structures remain unknown; all descriptions here are based on observed
  operations, not original variable names.

The C files above are Ghidra output for the original machine code, not
reconstructed vendor source. Ghidra's auto-analysis had omitted these
functions; additional missed ranges may remain.

### Whole-image Thumb-aware inventory

The separate `SetThumbMode.java` pre-script sets Ghidra's documented `TMode`
register to 1 (Thumb) over the payload **before** auto-analysis. The current
full export is `V204_functions/thumb_full/`:

- Ghidra's corrected auto-analysis found 241 functions. Forcing the 120+ known
  prologue candidates and previously missed functions found additional
  handlers; the current export contains 430 pseudocode files, all marked
  `written` in the index. The index is `thumb_full/index.tsv`.
- Its 463 reported function ranges merge into 331 spans covering 54,784 of
  67,136 payload bytes (81.60%). This is
  only an inventory metric: unclaimed bytes include data, jump tables, and
  switch case blocks that Ghidra's function body did not attach to its parent.
  In particular, `0x7fc6fc0` has a switch table at `0x7fc703c` and case code
  beginning around `0x7fc7060`; Ghidra's pseudocode recovers the switch, while
  its reported body range omits those case blocks.
- The tail beginning at `0x7fcf154` is data, including hardware constants,
  ROM pointers and tables. Three push-shaped values there (`0x7fcf1d4`,
  `0x7fcf398`, `0x7fcf58c`) were rejected as code candidates: the surrounding
  patterns and invalid instruction streams show they are data. They are not
  part of the current 430-function export.
- Scanning aligned payload words for Thumb-bit-set pointers into unclaimed
  ranges found 59 candidate targets below the data tail. Adding those targets
  recovered 58 executable entries; the only remaining odd pointer into an
  unclaimed address is `0x7fd0318`, which lies in the data/initializer area.
  All in-payload direct `BL`/`BLX` targets also land inside the current
  function ranges. These audits strengthen the inventory but cannot prove
  completeness for computed or encoded indirect targets.
- The current decompilation has 13 recovered `switch` statements across 11
  functions and no `UNRECOVERED_JUMPTABLE` or bad-instruction warning markers.
  Some switch case blocks are absent from Ghidra's function-range metadata even
  though they appear in the C pseudocode; these bytes must not be mistaken for
  missing behavior when reading the coverage CSV.
- `AuditCodeUnits.java` alone is insufficient for gap classification: Ghidra's
  listing labels many switch-case instructions as data. `AuditPcodeAddresses.java`
  extracts the decompiler CFG addresses instead; 383 unique addresses outside
  the exported function ranges decode to 842 valid Thumb instruction bytes in
  145 spans. They belong to five switch functions: `0x7fc6fc0` (294 bytes),
  `0x7fc6dbc` (274), `0x7fc5fb0` (146), `0x7fc65d0` (110), and `0x7fc7c88`
  (18). `extract_hidden_pcode_code.py` verifies every decoded halfword against
  the original payload and writes byte-level instruction and span manifests.
  Adding these spans raises the mapped code/range union to 55,626/67,136 bytes
  (82.86%). The rest still includes vectors, switch tables, literal pools,
  constants and other payload data that need independent classification.
- Compared with the older 258-entry index, 257 function entries overlap. The
  only older entry not present is `0x7fc0000`, which is vector/header data, not
  a Thumb function. This comparison and the additional entries support using
  the Thumb-context export as the current inventory baseline, but do not prove
  every code/data boundary is resolved.

This improves the machine-code map. It does not provide original C, identify
the OEM compiler version, or demonstrate that pseudocode can be compiled into
the original bytes.

## V204 HID timer registration

The full-function export at `V204_functions/` adds a concrete timer-chain
finding:

- `0x7fcc9c8` contains the string `vtimer_enable_hid_timer_handler`, allocates
  a small timer object, calls a ROM routine with that object, then calls
  `0x7fcc9a4` with timer slot `0x0b` and a delay value held at
  `DAT_07fcca28`.
- `0x7fcc9a4` stores a changed delay in a 16-byte per-slot record and records
  the current value returned by `0x7fc4440` in that record. The exact units
  and timer API meaning remain unknown.
- `0x7fccf38` creates/updates another timer record: its first argument selects
  a 16-byte slot; it writes state `0x0101`, its second argument at `+4`, the
  third argument (callback pointer) at `+0x0c`, and a current-time value at
  `+8`.
- V204 has two raw Thumb call sites to `0x7fccf38` that pass slot `0x0b` and
  the Thumb pointer `0x07fcc9c9`: the first at `0x7fc338c`, the second at
  `0x7fc6024`. Their containing functions were not recovered in Ghidra's
  current function inventory, so their full caller context is still open.

This establishes a V204 HID-related timer-registration path, not that the
handler sends HID reports, that either call is caused by a physical button, or
that the notification is a keyboard event. Those claims need the handler's
callers, timer dispatch path, and its downstream HID/report routine.
