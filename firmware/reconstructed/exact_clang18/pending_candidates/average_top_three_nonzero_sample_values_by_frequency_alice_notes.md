# Alice: averaging / sensor initializer checkpoint

After the fifth merge, tested averaging 0xcf80 in 720 scalar initialization,
index lifetime and sample-volatility forms (298 distinct binary results).
No improvement over baseline: 75 differing code bytes plus two padding bytes.
Volatile samples add loads absent from OEM. Search helper:
search_top_three_scalar_order.py; results /tmp/sr08-alice-topthree-scalar-search/.
Scores are analysis only, never byte acceptance. Original remains installed.

0xd908 initializer: reusing the local context pointer in record->context avoids
a redundant MOV. Default ARM5 -O3 differences reduce from 108 to 61; -O2/-O1
reduce to 24 over the full 136-byte range. The improved C is preserved as
initialize_shared_control_state_tables.c.txt; its header layouts are unchanged.
Remaining differences are one/loop temporary register selection and placement
of index updates around stores. No flags or source replacement installed.

Tested record/context volatility combinations, early/shared counters and zero
capture, one-value widths, return widths, post-increment array accesses, pair
aggregate assignments, unsigned loop bounds, debug flag, Cortex-M0+ model,
SoftVFP and -Otime. None reaches exactness. Logs use /tmp/sr08-alice-d908-*.log.
Do not repeat unchanged trials. Compiler flags are local probes only.

Follow-up: all seven combinations of int32_t -> int8_t for the three count
threshold locals reproduce the 300-byte / 77-difference baseline. Logs:
/tmp/sr08-alice-topthree-countwidth-{1..7}.log. No installation or flag change.

Further initializer lifetime check: six forms computing the history-pair and
sample element pointers before advancing the uint16 indices, each at ARM5
-O2/-O3 (12 probes). Baseline remains 24/61 differences; pointer-before-index
forms give 24..34 / 61..69 differences. No improvement or source installation.
The original /tmp/sr08-alice-d908-pointer-p*s*-O*.log files were temporary and
did not survive the environment restart; do not cite them as retained files.
