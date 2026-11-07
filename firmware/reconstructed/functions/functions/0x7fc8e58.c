// rea decompile_all
// name: FUN_07fc8e58
// address: 0x7fc8e58
// body: available
// range: 0x7fc8e58-0x7fc8f27 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc8e58(int param_1)

{
  undefined2 *puVar1;
  int iVar2;
  
  func_0x07f1e0de(DAT_07fc8f28 + 0x40,0x28);
  if (param_1 == 2) {
    FUN_07fc8f48(2,1);
    FUN_07fceedc(0x1e,0x28,0x32,DAT_07fc8f30,DAT_07fc8f2c,0x96);
    FUN_07fceeac(0x20,DAT_07fc8f34,DAT_07fc8f34,DAT_07fc8f38,0x96,500,200,200,1,0x25,3);
    iVar2 = FUN_07fc7f94();
    if (((iVar2 != 0) && (*(char *)(DAT_07fc8fa0 + 0x1e) == '\0')) &&
       (iVar2 = FUN_07fcec2c(), puVar1 = DAT_07fc8f3c, iVar2 != 0)) {
      *(undefined1 *)(DAT_07fc8f3c + 2) = 2;
      *(undefined1 *)((int)puVar1 + 3) = 2;
      FUN_07fc86b8(0);
    }
  }
  else {
    if (((param_1 == 0x400) || (param_1 == 0x1000)) || (param_1 == 0x800)) {
      FUN_07fc8f48(param_1,7);
      return;
    }
    FUN_07fc8f48(param_1,0);
    if (*(char *)(DAT_07fc8fa0 + 0x17) == '\0') {
      FUN_07fcd908();
      *DAT_07fc8f3c = (short)DAT_07fc8f40;
      FUN_07fc8040(0);
    }
    if (1 < param_1 - 1U) {
      return;
    }
  }
  FUN_07fccf38(0,0x28,DAT_07fc8f44);
  return;
}

