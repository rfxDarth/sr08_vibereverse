// rea decompile_all
// name: FUN_07fc1904
// address: 0x7fc1904
// body: available
// range: 0x7fc1904-0x7fc1927 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


longlong FUN_07fc1904(void)

{
  longlong lVar1;
  uint uVar2;
  uint extraout_r2;
  uint extraout_r3;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;
  undefined1 in_q14 [16];
  longlong lVar6;
  undefined8 uVar7;
  longlong lVar8;
  undefined4 uStack_2c;
  
  for (puVar3 = &DAT_07fceff4; puVar3 < &DAT_07fcf014; puVar3 = puVar3 + 4) {
    (*(code *)puVar3[3])(*puVar3,puVar3[1],puVar3[2]);
  }
  lVar6 = thunk_FUN_07fc89c8();
  VectorShiftLeft(in_q14,0x34,0x40,0);
  lVar1 = 0;
  iVar4 = 0x40;
  while (uStack_2c = (undefined4)((ulonglong)lVar6 >> 0x20), iVar5 = iVar4 + -1, 0 < iVar4) {
    uVar7 = FUN_07fc1b66((int)lVar6,uStack_2c,iVar5);
    uVar2 = (uint)((ulonglong)uVar7 >> 0x20);
    iVar4 = iVar5;
    if (extraout_r3 < uVar2 || uVar2 - extraout_r3 < (uint)(extraout_r2 <= (uint)uVar7)) {
      lVar8 = func_0x07f1e134(extraout_r2,extraout_r3,iVar5);
      lVar6 = lVar6 - lVar8;
      lVar8 = func_0x07f1e134(1,0,iVar5);
      lVar1 = lVar8 + lVar1;
    }
  }
  return lVar1;
}

