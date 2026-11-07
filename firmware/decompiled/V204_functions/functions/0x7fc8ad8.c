// rea decompile_all
// name: FUN_07fc8ad8
// address: 0x7fc8ad8
// body: available
// range: 0x7fc8ad8-0x7fc8b11 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined2 FUN_07fc8ad8(undefined1 param_1,undefined1 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort *puVar1;
  undefined2 *puVar2;
  byte *pbVar3;
  short sVar4;
  byte local_14;
  undefined1 local_13 [3];
  
  puVar1 = DAT_07fc8b14;
  pbVar3 = &local_14;
  local_13._1_2_ = (undefined2)((uint)param_4 >> 0x10);
  _local_14 = CONCAT31(CONCAT21(local_13._1_2_,param_2),param_1);
  sVar4 = 2;
  do {
    FUN_07fc1f20();
    *puVar1 = (ushort)*pbVar3;
    pbVar3 = pbVar3 + 1;
    sVar4 = sVar4 + -1;
  } while (sVar4 != 0);
  FUN_07fc1f00();
  FUN_07fc1f10();
  puVar2 = DAT_07fc8b18;
  if ((DAT_07fc8b18[0x16] & 1) != 0) {
    FUN_07fc532c(DAT_07fc8b1c,0xea,1);
  }
  return *puVar2;
}

