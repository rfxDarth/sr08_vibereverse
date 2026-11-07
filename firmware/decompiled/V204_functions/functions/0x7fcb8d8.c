// rea decompile_all
// name: FUN_07fcb8d8
// address: 0x7fcb8d8
// body: available
// range: 0x7fcb8d8-0x7fcb905 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fcb8d8(void)

{
  undefined2 *puVar1;
  int iVar2;
  
  *DAT_07fcb908 = DAT_07fcb90c;
  *DAT_07fcb910 = (short)DAT_07fcb914;
  puVar1 = DAT_07fcb918;
  DAT_07fcb918[1] = DAT_07fcb918[1] & 0xfffb | 2;
  *DAT_07fcb91c = 99;
  iVar2 = DAT_07fcbbbc;
  *DAT_07fcb920 = *(undefined2 *)(DAT_07fcbbbc + 0x3e);
  *puVar1 = *(undefined2 *)(iVar2 + 0x3c);
  return;
}

