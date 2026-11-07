// rea decompile_all
// name: FUN_07fc7ed8
// address: 0x7fc7ed8
// body: available
// range: 0x7fc7ed8-0x7fc7fa7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc7ed8(int param_1)

{
  undefined2 *puVar1;
  int iVar2;
  
  func_0x07f1e0de(DAT_07fc7fa8,0x28);
  if (param_1 == 2) {
    FUN_07fc7fc8(2,1);
    FUN_07fcddd4(0x1e,0x28,0x32,DAT_07fc7fb0,DAT_07fc7fac,0x96);
    FUN_07fcdda4(0x20,DAT_07fc7fb4,DAT_07fc7fb4,DAT_07fc7fb8,0x96,500,200,200,1,0x25,3);
    iVar2 = FUN_07fc7008();
    if (((iVar2 != 0) && (*(char *)(DAT_07fc8024 + 0x1f) == '\0')) &&
       (iVar2 = FUN_07fcdb24(), puVar1 = DAT_07fc7fbc, iVar2 != 0)) {
      *(undefined1 *)(DAT_07fc7fbc + 2) = 2;
      *(undefined1 *)((int)puVar1 + 3) = 2;
      FUN_07fc7738(0);
    }
  }
  else {
    if (((param_1 == 0x400) || (param_1 == 0x1000)) || (param_1 == 0x800)) {
      FUN_07fc7fc8(param_1,7);
      return;
    }
    FUN_07fc7fc8(param_1,0);
    if (*(char *)(DAT_07fc8024 + 0x18) == '\0') {
      FUN_07fcc800();
      *DAT_07fc7fbc = (short)DAT_07fc7fc0;
      FUN_07fc70b4(0);
    }
    if (1 < param_1 - 1U) {
      return;
    }
  }
  FUN_07fcbe30(0,0x28,1,DAT_07fc7fc4);
  return;
}

