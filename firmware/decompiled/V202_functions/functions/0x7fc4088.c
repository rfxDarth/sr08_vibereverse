// rea decompile_all
// name: FUN_07fc4088
// address: 0x7fc4088
// body: available
// range: 0x7fc4088-0x7fc40ed inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


int FUN_07fc4088(void)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = *(uint *)(DAT_07fc42ac + 0x34);
  if (uVar1 + DAT_07fc40f0 <= DAT_07fc40f4) {
    iVar2 = func_0x07f1dfb8(uVar1 * 0x11 + DAT_07fc4100,DAT_07fc4104);
    return iVar2 + 5;
  }
  if (uVar1 >> 5 < 0xe1) {
    iVar2 = func_0x07f1dfb8(uVar1 & 0xffff,0x2d0);
    return iVar2 + 0x14;
  }
  if (uVar1 >> 6 < 0xe1) {
    iVar2 = func_0x07f1dfb8(uVar1 & 0xffff,0x5a0);
    return iVar2 + 0x1e;
  }
  if (uVar1 <= DAT_07fc40f8) {
    iVar2 = func_0x07f1dfb8(DAT_07fc40fc - uVar1 & 0xffff,600);
    return iVar2 + 0xf;
  }
  return 5;
}

