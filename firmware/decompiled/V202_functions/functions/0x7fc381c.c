// rea decompile_all
// name: FUN_07fc381c
// address: 0x7fc381c
// body: available
// range: 0x7fc381c-0x7fc39cd inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc381c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  
  if (param_1 == 0) {
    if (*DAT_07fc39d0 != '\0') {
      *DAT_07fc39d0 = '\0';
      puVar1 = DAT_07fc39f4;
      iVar4 = DAT_07fc39d4;
      if (*(int *)(DAT_07fc39d4 + 0x20) != 0) {
        DAT_07fc39f4[0xa0] = 0;
        *puVar1 = 0;
        FUN_07fcc798();
        iVar3 = DAT_07fc3a88;
        *(undefined1 *)(DAT_07fc3a88 + 0x15) = 0;
        *(undefined1 *)(iVar3 + 0x16) = 0;
        FUN_07fc731c();
        *(undefined2 *)(iVar3 + 0x18) = 0;
        FUN_07fcc798();
        *(undefined4 *)(iVar4 + 0x20) = 0;
      }
      *(undefined2 *)(DAT_07fc3a88 + 0x2a) = 0;
    }
    return;
  }
  if (*DAT_07fc39d0 != '\0') {
    return;
  }
  *DAT_07fc39d0 = '\x01';
  iVar3 = FUN_07fc7008();
  iVar4 = DAT_07fc39d4;
  if (iVar3 == 0) goto LAB_07fc39bc;
  *(int *)(DAT_07fc39d4 + 0x20) = param_1;
  iVar3 = DAT_07fc3a88;
  if (param_1 != 0x4000) {
    if (param_1 == 0x40) {
      *(undefined4 *)(iVar4 + 0x2c) = 0;
      FUN_07fcbe30(10,500,1,DAT_07fc39e8,param_2,param_3,param_4);
    }
    else {
      FUN_07fc7ed8(param_1);
    }
    goto LAB_07fc39bc;
  }
  uVar8 = 0;
  *(undefined1 *)(DAT_07fc3a88 + 0x1a) = 0;
  iVar4 = FUN_07fc7008();
  if (iVar4 != 0) {
    FUN_07fc78d4(0x18,0x40);
    FUN_07fc78d4(0x19,1);
    FUN_07fc732c();
  }
  FUN_07fc4344(100);
  FUN_07fc78d4(0x8f,7);
  iVar4 = 0xff;
  uVar11 = 0x3fc;
  bVar2 = 0;
  uVar9 = 0;
  while (*(byte *)(iVar3 + 0x1d) = bVar2, bVar2 < 100) {
    if ((uVar11 & 0xffff) <= (uVar8 & 0xffff)) break;
    *DAT_07fc39e0 = 200;
    uVar7 = (uVar11 & 0xffff) + (uVar8 & 0xffff) >> 1;
    FUN_07fc78bc(uVar7);
    FUN_07fc4344(0x20);
    FUN_07fc73b8(1);
    FUN_07fc4344(0x21);
    uVar10 = uVar9;
    iVar5 = FUN_07fc73b8(1);
    uVar9 = uVar7;
    if (((iVar5 + (iVar5 >> 0xf) ^ iVar5 >> 0xf) & 0xffffU) <= DAT_07fc39dc) break;
    if ((int)DAT_07fc39dc < iVar5) {
      uVar8 = uVar7 + 1;
    }
    else {
      uVar11 = uVar7 - 1;
    }
    uVar9 = uVar10;
    bVar2 = *(char *)(iVar3 + 0x1d) + 1;
  }
  iVar6 = FUN_07fc73b8(1);
  *(short *)(iVar3 + 0x46) = (short)iVar6;
  *(short *)(iVar3 + 0x42) = (short)uVar9;
  iVar5 = DAT_07fc39e4;
  if ((uVar9 == iVar4 * 2) && (iVar6 == 0)) {
    *(undefined1 *)(iVar3 + 0x36) = 0;
  }
  else {
    *(short *)(DAT_07fc39e4 + 0x5c) = (short)uVar9;
    *(undefined1 *)(iVar3 + 0x36) = 2;
    *(short *)(iVar5 + 0x60) = (short)iVar6;
    *(undefined2 *)(iVar5 + 0x5e) = *(undefined2 *)(iVar3 + 0x44);
    *(undefined2 *)(iVar5 + 0x62) = *(undefined2 *)(iVar3 + 0x48);
    iVar4 = DAT_07fc39d4 + 0x3c;
    *(undefined4 *)(iVar5 + 0x3c) = 0;
    *(undefined4 *)(iVar5 + 0x40) = 0;
    *(undefined4 *)(iVar5 + 0x44) = 8;
    *(undefined4 *)(iVar5 + 0x48) = 1;
    *(int *)(iVar5 + 0x4c) = iVar4;
    FUN_07fca148(iVar5 + 0x5c);
  }
  if (*(char *)(iVar3 + 0x14) == '\'') {
    FUN_07fc7008();
    FUN_07fc757c();
LAB_07fc39b2:
    FUN_07fc732c();
  }
  else {
    FUN_07fc757c();
    iVar4 = FUN_07fc7008();
    if (iVar4 != 0) goto LAB_07fc39b2;
  }
  FUN_07fc3a14(0x40000000);
LAB_07fc39bc:
  *(undefined1 *)(DAT_07fc3d58 + 10) = 0;
  iVar4 = DAT_07fc3d2c;
  *(undefined4 *)(DAT_07fc3d2c + 0x58) = 0;
  *(undefined4 *)(iVar4 + 0x60) = *(undefined4 *)(DAT_07fc3a84 + 0x28);
  return;
}

