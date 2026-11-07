// rea decompile_all
// name: FUN_07fc20f8
// address: 0x7fc20f8
// body: available
// range: 0x7fc20f8-0x7fc247d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc20f8(void)

{
  byte bVar1;
  undefined1 uVar2;
  ushort *puVar3;
  short sVar4;
  short sVar5;
  ushort uVar6;
  ushort uVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  undefined4 uVar12;
  int iVar13;
  uint uVar14;
  int iVar15;
  char cVar16;
  uint uVar17;
  uint uVar18;
  int iVar19;
  undefined4 local_34;
  ushort local_18 [2];
  
  iVar8 = FUN_07fcaa48();
  puVar3 = DAT_07fc2480;
  local_34 = 0x800;
  *DAT_07fc2480 = *DAT_07fc2480 | 0x800;
  *puVar3 = *puVar3 | 0x4000;
  *puVar3 = *puVar3 | 1;
  FUN_07fc20bc(0x14);
  puVar3[2] = 0x200;
  puVar3[3] = 0x200;
  *puVar3 = *puVar3 | (short)DAT_07fc2484 + 0xe2U;
  *puVar3 = *puVar3 & (ushort)DAT_07fc2488;
  sVar4 = FUN_07fc1fd0();
  *puVar3 = *puVar3 | 0x400;
  uVar6 = (short)DAT_07fc248c + 1;
  sVar5 = FUN_07fc1fd0();
  puVar3[2] = puVar3[2] & uVar6 | sVar4 * -2 + 0x600U;
  puVar3[3] = puVar3[3] & uVar6 | sVar5 * -2 + 0x600U;
  *puVar3 = *puVar3 & (ushort)DAT_07fc2488;
  *puVar3 = (ushort)DAT_07fc2490 & *puVar3;
  uVar6 = FUN_07fc1ff4();
  uVar7 = func_0x07f1dfb8((uint)uVar6 * DAT_07fc2494,0x1300);
  *(ushort *)(DAT_07fc2498 + 6) = uVar7;
  uVar6 = *DAT_07fc249c;
  *(byte *)(DAT_07fc24a0 + 0xc5) =
       (*(byte *)(DAT_07fc24a0 + 0xc5) & 0xfd) + (char)((uVar6 & 0x80) >> 6) ^ 2;
  iVar15 = DAT_07fc24a4;
  iVar9 = DAT_07fc24a4 + 0x20;
  FUN_07fc2f26();
  uVar10 = (uVar6 & 0x80) >> 7;
  iVar11 = *(int *)(iVar15 + 0x20);
  iVar13 = *(int *)(iVar15 + 0x24);
  iVar15 = *(int *)(iVar15 + 0x28);
  for (cVar16 = '\0'; (int)cVar16 < (int)(iVar15 - 1U & iVar11 - iVar13 & 0xff);
      cVar16 = cVar16 + '\x01') {
    FUN_07fc3008(iVar9,(int)cVar16,local_18);
    uVar6 = local_18[0];
    if (local_18[0] <= uVar7) {
      uVar6 = uVar7;
    }
    uVar7 = uVar6;
  }
  *(ushort *)(DAT_07fc2498 + 8) = uVar7;
  iVar9 = DAT_07fc24a8;
  iVar15 = DAT_07fc24a0;
  FUN_07fc53c0(s_sr__d__d_07fc24ac,*(undefined1 *)(DAT_07fc24a8 + 0xd),
               *(undefined4 *)(DAT_07fc24a0 + 0x24));
  uVar14 = uVar10 ^ 1;
  if ((((*(char *)(iVar9 + 0xd) == '\x01') || (uVar14 != 0)) || (DAT_07fc24b8 <= uVar7)) ||
     (*(uint *)(iVar15 + 0x24) < 10)) {
    uVar17 = (uint)uVar7;
    if (DAT_07fc2484 < uVar17) {
      iVar15 = func_0x07f1dfe4(uVar17 * 0x32 + DAT_07fc24c0,0xe6);
      iVar15 = iVar15 + 0x32;
    }
    else {
      if ((uint)uVar7 <= DAT_07fc24b8 + 0x62) goto LAB_07fc2286;
      iVar15 = func_0x07f1dfe4(uVar17 * 0x32 + DAT_07fc24bc,0x172);
    }
    if (iVar15 < 1) goto LAB_07fc2286;
    if (99 < iVar15) {
      iVar15 = 100;
    }
  }
  else {
    FUN_07fc53c0(s_lowpow_07fc24c4);
    FUN_07fc50f0();
    FUN_07fc4258(1);
LAB_07fc2286:
    iVar15 = 0;
  }
  FUN_07fc53c0(s_A_d__d_07fc24cc,iVar15,uVar7);
  iVar9 = DAT_07fc24a8;
  if (*(char *)(DAT_07fc24a8 + 0x20) == '\0') {
    cVar16 = *(char *)(DAT_07fc24a8 + 0x24);
    *(char *)(DAT_07fc24a8 + 0x24) = cVar16 + '\x01';
    iVar9 = DAT_07fc24a8;
    uVar18 = 0;
    uVar17 = 0;
    if ((byte)(cVar16 + 1U) < 3) goto LAB_07fc244c;
    *(undefined1 *)(DAT_07fc24a8 + 0x20) = 1;
    *(int *)(DAT_07fc24d4 + 0x2c) = iVar15;
    FUN_07fc53c0(s_init_battery__d_07fc24d8,iVar15);
  }
  iVar11 = DAT_07fc24ec;
  uVar2 = (undefined1)uVar14;
  if (*(byte *)(iVar9 + 0x26) == uVar14) {
    *(undefined1 *)(iVar9 + 0x26) = uVar2;
    if (uVar10 != 0) goto LAB_07fc231c;
LAB_07fc2398:
    if (((*(char *)(iVar9 + 0xd) == '\x01') || (bVar1 = *(byte *)(iVar9 + 0xb), bVar1 == 0x1e)) ||
       ((*(char *)(iVar9 + 0xd) == '\x02' || (bVar1 == 0x20)))) {
      FUN_07fc4258(0);
      bVar1 = *(byte *)(iVar9 + 0xb);
    }
    if ((bVar1 | 0x10) != 0x1b) {
      FUN_07fc3ac4(0xb);
    }
    iVar15 = DAT_07fc24d4;
    uVar10 = *(uint *)(DAT_07fc24d4 + 0x34);
    if (DAT_07fc24b8 + 99 < (uint)*(ushort *)(DAT_07fc2498 + 6)) {
      uVar10 = uVar10 + 1;
      *(uint *)(DAT_07fc24d4 + 0x34) = uVar10;
    }
    if (uVar10 < 0x1e) {
      iVar9 = *(int *)(iVar15 + 0x2c);
    }
    else {
      *(undefined4 *)(iVar15 + 0x34) = 0;
      if (*(int *)(iVar15 + 0x28) < 100) {
        iVar9 = *(int *)(iVar15 + 0x28) + 1;
      }
      else {
        iVar9 = 100;
      }
      *(int *)(iVar15 + 0x28) = iVar9;
      *(int *)(iVar15 + 0x2c) = iVar9;
    }
    if ((iVar9 < 100) || ((uint)*(ushort *)(DAT_07fc2498 + 8) <= DAT_07fc2484 + 0xe5)) {
      if (iVar9 == 100) {
        *(undefined4 *)(iVar15 + 0x2c) = 99;
      }
      FUN_07fc3a14(0x8000000);
      FUN_07fc3a14(0x400);
      uVar12 = 2;
    }
    else {
      *(undefined4 *)(iVar15 + 0x2c) = 100;
      FUN_07fc3a14(0x4000000);
      if (*(byte *)(DAT_07fc24ec + 8) < 6) {
        *(byte *)(DAT_07fc24ec + 8) = *(byte *)(DAT_07fc24ec + 8) + 1;
      }
      else {
        local_34 = 0x8000000;
      }
      FUN_07fc3a14(local_34);
      uVar12 = 1;
    }
    FUN_07fc2508(uVar12);
  }
  else {
    if (*(byte *)(DAT_07fc24ec + 0x37) != uVar14) {
      *(undefined1 *)(DAT_07fc24ec + 0x36) = uVar2;
      iVar13 = DAT_07fc24f0;
      iVar19 = DAT_07fc24f4 + 0x3c;
      *(undefined4 *)(DAT_07fc24f0 + 0x3c) = 0;
      *(undefined4 *)(iVar13 + 0x40) = 0;
      iVar9 = DAT_07fc24a8;
      *(undefined4 *)(iVar13 + 0x44) = 8;
      *(undefined4 *)(iVar13 + 0x48) = 1;
      *(int *)(iVar13 + 0x4c) = iVar19;
    }
    *(undefined1 *)(iVar11 + 0x37) = uVar2;
    if (uVar10 == 0) {
      FUN_07fc3ac4(0xb);
      FUN_07fc3a14(0x400000);
      *(undefined1 *)(iVar9 + 0x26) = 1;
      iVar15 = DAT_07fc24d4;
      *(undefined4 *)(DAT_07fc24d4 + 0x34) = 0;
      *(undefined4 *)(iVar15 + 0x28) = *(undefined4 *)(iVar15 + 0x2c);
      goto LAB_07fc2398;
    }
    FUN_07fc3ac4(0);
    *(undefined4 *)(DAT_07fc24d4 + 0x38) = 0;
    FUN_07fc3a14(0x40);
    *(undefined1 *)(DAT_07fc24a8 + 0x26) = uVar2;
LAB_07fc231c:
    *(undefined1 *)(DAT_07fc24ec + 8) = 0;
    iVar9 = DAT_07fc24d4;
    *(int *)(DAT_07fc24d4 + 0x38) = *(int *)(DAT_07fc24d4 + 0x38) + 1;
    iVar11 = *(int *)(iVar9 + 0x2c);
    FUN_07fc53c0(s_B_d__d__d_07fc24f8,iVar15,iVar11);
    uVar10 = DAT_07fc2504;
    if (iVar15 < iVar11) {
      uVar10 = 0x19;
    }
    uVar17 = *(uint *)(iVar9 + 0x2c);
    if (uVar10 <= *(uint *)(iVar9 + 0x38)) {
      *(undefined4 *)(iVar9 + 0x38) = 0;
      uVar17 = uVar17 - 1;
    }
    *(uint *)(iVar9 + 0x2c) = uVar17 & ~((int)uVar17 >> 0x1f);
    iVar15 = DAT_07fc24a0;
    if (*(char *)(DAT_07fc24a8 + 0xb) != ' ') {
      iVar9 = *(int *)(DAT_07fc24a0 + 0x14);
      if (iVar9 << 0x14 < 0) {
        FUN_07fc3a14(0x8000000);
        iVar9 = *(int *)(iVar15 + 0x14);
      }
      if (iVar9 << 0x15 < 0) {
        FUN_07fc3a14(0x4000000);
      }
    }
  }
  uVar18 = (uint)*(byte *)(DAT_07fc24d4 + 0x2c);
  uVar17 = uVar14;
LAB_07fc244c:
  if ((iVar8 == 1) &&
     ((*(uint *)(DAT_07fc24d4 + 0x30) != uVar18 || (uVar17 != *(byte *)(DAT_07fc24a8 + 0x28))))) {
    FUN_07fc25ec(0xb,*(undefined1 *)(DAT_07fc24d4 + 0x2c),uVar17);
  }
  *(char *)(DAT_07fc24a8 + 0x28) = (char)uVar17;
  *(uint *)(DAT_07fc24d4 + 0x30) = uVar18;
  return;
}

