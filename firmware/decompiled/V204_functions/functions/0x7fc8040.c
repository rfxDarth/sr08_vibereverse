// rea decompile_all
// name: FUN_07fc8040
// address: 0x7fc8040
// body: available
// range: 0x7fc8040-0x7fc804d inclusive
// range: 0x7fc8068-0x7fc80d5 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc8040(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = DAT_07fc832c;
  iVar1 = DAT_07fc8130;
  switch(param_1) {
  case 0:
    FUN_07fc8134(*(undefined4 *)(DAT_07fc8130 + 0x20));
    iVar1 = DAT_07fc832c;
    *(undefined1 *)(DAT_07fc832c + 0x17) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  case 1:
    FUN_07fc82a0();
    *(undefined1 *)(DAT_07fc832c + 0x17) = 0;
    return;
  default:
    return;
  case 3:
    *(undefined1 *)(DAT_07fc8130 + 0x4c) = 0xf;
    *(undefined1 *)(iVar1 + 0x54) = 5;
    *(undefined4 *)(iVar1 + 0x50) = 0x40;
    *(undefined2 *)(iVar1 + 0x58) = 0x1900;
    *(undefined2 *)(iVar1 + 0x4e) = 0;
    break;
  case 4:
    *(undefined1 *)(DAT_07fc832c + 0x14) = 0;
    FUN_07fc8018(0);
    *(undefined1 *)(iVar2 + 0x18) = 0;
    return;
  case 5:
    *(undefined1 *)(DAT_07fc8130 + 0x4c) = 2;
    *(undefined1 *)(iVar1 + 0x58) = 2;
    *(undefined1 *)(iVar1 + 0x4e) = 0;
  }
  FUN_07fc8004();
  FUN_07fc80d8();
  iVar1 = DAT_07fc832c;
  *(undefined1 *)(DAT_07fc832c + 0x18) = 1;
  *(undefined1 *)(iVar1 + 0x14) = 1;
  return;
}

