// rea decompile_all
// name: FUN_07fc9004
// address: 0x7fc9004
// body: available
// range: 0x7fc9004-0x7fc90db inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc9004(int param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int extraout_r1;
  uint uVar5;
  
  iVar1 = func_0x07f1dfb8(param_1,DAT_07fc90dc,param_3,param_4,param_2,param_3,param_4);
  func_0x07f1dfb8(iVar1 + 4U & 0xffff,7);
  param_2[6] = extraout_r1;
  iVar2 = func_0x07f1dfb8(param_1,DAT_07fc90e0);
  uVar5 = iVar2 + DAT_07fc90e4;
  iVar3 = func_0x07f1dfb8(uVar5,400);
  iVar2 = iVar2 * DAT_07fc90e8;
  iVar4 = func_0x07f1dfb8(uVar5,100);
  iVar2 = (iVar1 + iVar2 + iVar4 + 0x16d) - ((uVar5 >> 2) + iVar3);
  iVar3 = iVar2 + 0x70;
  iVar1 = iVar1 * DAT_07fc90ec;
  if (iVar3 < 0) {
    iVar3 = FUN_07fc8c3c(uVar5);
    iVar3 = iVar2 + 0x1dd + iVar3;
  }
  else {
    uVar5 = uVar5 + 1;
  }
  iVar1 = iVar1 + param_1;
  param_2[7] = iVar3 + 1;
  param_2[5] = uVar5 + DAT_07fc90f0;
  for (iVar2 = 0; iVar2 != 0xb; iVar2 = iVar2 + 1) {
    iVar4 = FUN_07fc8c3c(uVar5);
    iVar4 = iVar3 - ((uint)(iVar2 == 1 && iVar4 != 0) + (uint)(byte)(&DAT_07fc90f4)[iVar2]);
    if (iVar4 < 0) goto LAB_07fc90aa;
    iVar3 = iVar4;
  }
  iVar2 = 0xb;
LAB_07fc90aa:
  param_2[3] = iVar3 + 1;
  param_2[4] = iVar2;
  iVar3 = func_0x07f1dfb8(iVar1,0xe10);
  param_2[2] = iVar3;
  iVar1 = iVar3 * DAT_07fc9100 + iVar1;
  iVar3 = func_0x07f1dfb8(iVar1,0x3c);
  *param_2 = iVar3 * -0x3c + iVar1;
  param_2[1] = iVar3;
  return;
}

