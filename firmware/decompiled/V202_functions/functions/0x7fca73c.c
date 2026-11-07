// rea decompile_all
// name: FUN_07fca73c
// address: 0x7fca73c
// body: available
// range: 0x7fca73c-0x7fca79f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fca73c(int *param_1)

{
  byte local_24;
  byte local_23;
  byte local_22;
  byte local_21;
  byte local_20;
  byte local_1f;
  byte local_1c;
  byte local_1b;
  byte local_1a;
  byte local_19;
  byte local_18;
  byte local_17;
  
  FUN_07fc6fdc(2,&local_1c,6);
  FUN_07fc6fdc(8,&local_24,6);
  *param_1 = (uint)local_1b * 0x100 + (uint)local_1c + (uint)local_1a * 0x10000;
  param_1[1] = (uint)local_18 * 0x100 + (uint)local_19 + (uint)local_17 * 0x10000;
  param_1[2] = (uint)local_23 * 0x100 + (uint)local_24 + (uint)local_22 * 0x10000;
  param_1[3] = (uint)local_20 * 0x100 + (uint)local_21 + (uint)local_1f * 0x10000;
  return;
}

