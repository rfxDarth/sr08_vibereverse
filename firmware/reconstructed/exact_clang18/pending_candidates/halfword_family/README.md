# Pending all-C halfword writers

Not installed. All eleven native instruction bodies match V204. LTO family
probe26592 exits1 because every shared-root LDR selects0x07fc8e50 instead of
0x07fc8e3c (same pointer value). No branch,store or register mismatch in report.
Log /tmp/sr08-alice-halfword-family-lto.log. Source-based literal placement needs
to be solved without instruction patching or accepting diagnostic overlap links.

Installed Alice wrappers instead use the additive shared
sr08_display_halfword_store.h helper: no fixed-register binding,one remaining
literal-load asm per entry. Jeff's older helper remains unchanged for his tree.
After synchronization the obsolete bound macro can be removed if unused.
