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
  int extraout_r1;
  uint uVar3;
  uint extraout_r2;
  uint extraout_r3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  undefined8 uVar8;
  longlong lVar9;
  int iStack_2c;
  
  for (puVar4 = &DAT_07fd0340; puVar4 < &DAT_07fd0360; puVar4 = puVar4 + 4) {
    (*(code *)puVar4[3])(*puVar4,puVar4[1],puVar4[2]);
  }
  thunk_FUN_07fc98d4();
  uVar2 = (int)puVar4 << 0xd;
  lVar1 = 0;
  iVar5 = 0x40;
  iStack_2c = extraout_r1;
  while (iVar6 = iVar5 + -1, 0 < iVar5) {
    uVar8 = FUN_07fc1b66(uVar2,iStack_2c,iVar6);
    uVar3 = (uint)((ulonglong)uVar8 >> 0x20);
    iVar5 = iVar6;
    if (extraout_r3 < uVar3 || uVar3 - extraout_r3 < (uint)(extraout_r2 <= (uint)uVar8)) {
      uVar8 = func_0x07f1e134(extraout_r2,extraout_r3,iVar6);
      bVar7 = uVar2 < (uint)uVar8;
      uVar2 = uVar2 - (uint)uVar8;
      iStack_2c = (iStack_2c - (int)((ulonglong)uVar8 >> 0x20)) - (uint)bVar7;
      lVar9 = func_0x07f1e134(1,0,iVar6);
      lVar1 = lVar9 + lVar1;
    }
  }
  return lVar1;
}

