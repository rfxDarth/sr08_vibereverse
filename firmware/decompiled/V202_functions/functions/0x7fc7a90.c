// rea decompile_all
// name: FUN_07fc7a90
// address: 0x7fc7a90
// body: available
// range: 0x7fc7a90-0x7fc7ad5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined1 FUN_07fc7a90(undefined2 param_1)

{
  undefined2 *puVar1;
  ushort *puVar2;
  uint uVar3;
  undefined1 uVar4;
  
  FUN_07fc1f20();
  puVar1 = DAT_07fc7b98;
  *DAT_07fc7b98 = param_1;
  FUN_07fc1f20();
  *puVar1 = 0x100;
  FUN_07fc1f00();
  puVar2 = DAT_07fc7b9c;
  if ((DAT_07fc7b9c[0x16] & 1) == 0) {
    uVar3 = FUN_07fc1ee8(*DAT_07fc7b9c);
    uVar4 = (undefined1)*puVar1;
  }
  else {
    FUN_07fc521c(DAT_07fc7ba0,0x76,1);
    uVar3 = (uint)*puVar2;
    uVar4 = 0;
  }
  FUN_07fc1f00(uVar3);
  FUN_07fc1f10();
  return uVar4;
}

