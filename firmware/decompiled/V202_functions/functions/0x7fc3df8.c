// rea decompile_all
// name: FUN_07fc3df8
// address: 0x7fc3df8
// body: available
// range: 0x7fc3df8-0x7fc3fe7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


int FUN_07fc3df8(undefined1 *param_1,uint param_2,uint param_3,int param_4)

{
  undefined2 *puVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  char cVar10;
  undefined1 *puVar11;
  int local_2c;
  undefined2 local_24;
  uint local_18;
  
  *DAT_07fc4060 = 200;
  puVar1 = DAT_07fc3fec;
  if (*(char *)(DAT_07fc3fe8 + 2) == '\0') {
    uVar3 = 1;
  }
  else {
    uVar3 = 8;
  }
  DAT_07fc3fec[1] = uVar3;
  *puVar1 = uVar3;
  local_18 = 0;
  FUN_07fcab38();
  FUN_07fcab60(0xab);
  if (param_4 == 1) {
    if ((*(char *)(DAT_07fc424c + 0xd) == '\x01') && (iVar5 = FUN_07fcb460(), iVar5 == 0)) {
LAB_07fc3f8a:
      FUN_07fcaaae();
      cVar10 = -1;
      goto LAB_07fc3fe2;
    }
    FUN_07fcab38(0);
    uVar9 = 0x800000 - param_2;
    if (param_3 <= 0x800000 - param_2) {
      uVar9 = param_3;
    }
    local_24 = 1;
    local_18 = 0x100;
    local_2c = 0;
    uVar8 = 0;
    uVar6 = (param_2 + 0x100 & 0xffffff00) - 1;
    uVar7 = uVar9;
    while (uVar4 = local_2c, uVar8 < uVar9) {
      if (uVar6 < uVar7 + param_2) {
        uVar7 = (uVar6 - param_2) + 1;
      }
      uVar4 = FUN_07fcaa9c();
      if ((uVar4 != 0) || (uVar4 = FUN_07fcab04(), uVar4 != 0)) break;
      FUN_07fcab38(2);
      uVar3 = local_24;
      if (*(char *)(DAT_07fc424c + 2) != '\0') {
        uVar3 = 8;
      }
      DAT_07fc3fec[1] = uVar3;
      FUN_07fcaa64(param_2 | 0x2000000);
      FUN_07fcab38(0);
      uVar4 = uVar7;
      if (0xff < (uVar7 & 0xffff)) {
        uVar4 = local_18;
      }
      puVar11 = param_1 + uVar8;
      for (; (uVar4 & 0xffff) != 0; uVar4 = uVar4 - 1) {
        FUN_07fcaa64(*puVar11);
        puVar11 = puVar11 + 1;
      }
      if (*(char *)(DAT_07fc424c + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      *DAT_07fc3fec = uVar3;
      uVar4 = FUN_07fcaadc();
      if (uVar4 != 0) break;
      uVar8 = uVar7 + uVar8;
      uVar7 = uVar9 - uVar8;
      param_2 = uVar6 + 1;
      uVar6 = uVar6 + 0x100;
    }
  }
  else if (param_4 == 0) {
    uVar4 = FUN_07fcaa9c();
    if (uVar4 == 0) {
      FUN_07fcab38(2);
      if (*(char *)(DAT_07fc3fe8 + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      DAT_07fc3fec[1] = uVar3;
      FUN_07fcaa64(param_2 | 0x3000000);
      FUN_07fcab38(0);
      if (0x800000 < param_3 + param_2) {
        param_3 = 0x800000 - param_2;
      }
      for (; param_3 != 0; param_3 = param_3 - 1) {
        uVar2 = FUN_07fcaa64(0);
        *param_1 = uVar2;
        param_1 = param_1 + 1;
      }
      if (*(char *)(DAT_07fc424c + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      *DAT_07fc3fec = uVar3;
      uVar4 = 0;
    }
  }
  else {
    if ((*(char *)(DAT_07fc424c + 0xd) == '\x01') && (iVar5 = FUN_07fcb460(), iVar5 == 0))
    goto LAB_07fc3f8a;
    uVar9 = param_3 + DAT_07fc3ff4 >> 0xc;
    if (uVar9 == 0) {
      uVar9 = 1;
    }
    param_2 = param_2 & DAT_07fc3ff0;
    uVar4 = 0xff;
    for (; uVar9 != 0; uVar9 = uVar9 - 1) {
      *DAT_07fc4060 = 200;
      uVar4 = FUN_07fcaa9c();
      if ((uVar4 != 0) || (uVar4 = FUN_07fcab04(), uVar4 != 0)) break;
      FUN_07fcab38(2);
      FUN_07fcab60(param_2 | 0x20000000);
      uVar4 = FUN_07fcaadc();
      if (uVar4 != 0) break;
      param_2 = DAT_07fc3ff4 + param_2 + 1;
      uVar4 = local_18;
    }
  }
  cVar10 = (char)uVar4;
  FUN_07fcaaae();
LAB_07fc3fe2:
  return (int)cVar10;
}

