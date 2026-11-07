// rea decompile_all
// name: FUN_07fc99d0
// address: 0x7fc99d0
// body: available
// range: 0x7fc99d0-0x7fc9a41 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc99d0(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 in_r3;
  
  iVar1 = DAT_07fc9d68;
  iVar3 = DAT_07fc9ab8;
  if (*(char *)(DAT_07fc9d64 + 0xc4) == '\x01') {
    for (iVar3 = 0x40; iVar3 != 0x45; iVar3 = iVar3 + 1) {
      *(undefined1 *)(iVar1 + iVar3) = 0x7f;
    }
    *(undefined1 *)(iVar1 + 0x45) = 0x50;
  }
  else {
    iVar4 = *(int *)(DAT_07fc9ab8 + 0x48);
    iVar2 = iVar4;
    if (*(char *)(DAT_07fc9d64 + 0x34) != '\0') {
      iVar2 = iVar4 + -0xc;
    }
    if (iVar4 < 0xd) {
      iVar2 = iVar4;
    }
    FUN_07fc3134(iVar2,DAT_07fc9d68 + 0x40,2,0,in_r3);
    FUN_07fc3134(*(undefined4 *)(iVar3 + 0x44),iVar1 + 0x43,2,0);
    if ((*(byte *)(DAT_07fc9ddc + 0x30) & 1) != 0) {
      *(undefined1 *)(iVar1 + 0x42) = 0x48;
      return;
    }
  }
  return;
}

