// rea decompile_all
// name: FUN_07fc7738
// address: 0x7fc7738
// body: available
// range: 0x7fc7738-0x7fc7745 inclusive
// range: 0x7fc7760-0x7fc77f3 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc7738(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = DAT_07fc7950;
  iVar1 = DAT_07fc7870;
  switch(param_1) {
  case 0:
    FUN_07fc71ac(2);
    iVar1 = DAT_07fc7950;
    *(undefined1 *)(DAT_07fc7950 + 0x1f) = 1;
    *(undefined1 *)(iVar1 + 0x16) = 1;
    return;
  case 1:
    FUN_07fc731c();
    break;
  case 2:
    FUN_07fc771c();
    break;
  case 3:
    *(undefined1 *)(DAT_07fc7870 + 0x40) = 0xf;
    *(undefined1 *)(iVar1 + 0x4e) = 5;
    *(undefined2 *)(iVar1 + 0x4c) = 0x10;
    *(undefined4 *)(iVar1 + 0x44) = 0;
    *(undefined4 *)(iVar1 + 0x48) = 0x40000;
    *(undefined2 *)(iVar1 + 0x42) = 0;
    *(undefined4 *)(iVar1 + 0x50) = 0;
    *(undefined4 *)(iVar1 + 0x54) = 0;
    *(undefined4 *)(iVar1 + 0x58) = 0;
    *(undefined1 *)(iVar1 + 0x5c) = 0;
    *(short *)(iVar1 + 0x5e) = (short)DAT_07fc77f4;
    FUN_07fc7078();
    FUN_07fc77f8();
    iVar1 = DAT_07fc7950;
    *(undefined1 *)(DAT_07fc7950 + 0x20) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  case 4:
    *(undefined1 *)(DAT_07fc7950 + 0x15) = 0;
    FUN_07fc708c(1);
    *(undefined1 *)(iVar2 + 0x20) = 0;
    return;
  case 5:
    *(undefined1 *)(DAT_07fc7870 + 0x40) = 2;
    *(undefined1 *)(iVar1 + 0x5c) = 2;
    *(undefined1 *)(iVar1 + 0x42) = 0;
    FUN_07fc7078();
    FUN_07fc77f8();
    iVar1 = DAT_07fc7950;
    *(undefined1 *)(DAT_07fc7950 + 0x20) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  default:
    return;
  }
  *(undefined1 *)(DAT_07fc7950 + 0x1f) = 0;
  return;
}

