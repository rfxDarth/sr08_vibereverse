// rea decompile_all
// name: FUN_07fc69b8
// address: 0x7fc69b8
// body: available
// range: 0x7fc69b8-0x7fc6b67 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc69b8(undefined4 param_1,ushort *param_2,undefined4 param_3,uint param_4)

{
  ushort uVar1;
  uint uVar2;
  byte bVar3;
  short *psVar4;
  uint uVar5;
  int iVar6;
  undefined1 *puVar7;
  ushort *puVar8;
  short sVar9;
  uint uVar10;
  ushort uVar11;
  undefined4 local_40;
  undefined4 local_3c;
  byte local_38;
  undefined1 auStack_34 [8];
  undefined1 auStack_2c [4];
  uint local_28 [5];
  
  psVar4 = (short *)FUN_07fca05c(0xfd);
  local_38 = 0;
  uVar5 = FUN_07fc5a80(*param_2);
  bVar3 = local_38;
  uVar2 = DAT_07fc6de8;
  if (param_2[1] != 0) {
    *DAT_07fc6b68 = 200;
    *DAT_07fc6b6c = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  sVar9 = 0;
  if (uVar5 != 0) goto LAB_07fc6ae6;
  uVar10 = (uint)local_38;
  if (((0x2aU >> uVar10 & 1) == 0) ||
     ((uint)**(ushort **)(DAT_07fc6b70 + uVar10 * 0x14) != DAT_07fc6de8 + 0xff)) {
    local_28[1] = 0;
    local_28[0] = 0;
    func_0x07f0ff66(*param_2,local_28);
    uVar5 = 0;
    if (-1 < *(short *)(local_28[0] + 8)) {
      uVar5 = func_0x07f1003a(*param_2,param_2[2],param_2[1],param_2 + 3);
    }
  }
  else {
    local_3c = 0;
    local_40 = 0;
    uVar1 = *param_2;
    iVar6 = func_0x07f0ff28(uVar1);
    do {
      uVar11 = uVar1;
      if ((uVar11 < *(ushort *)(iVar6 + 4)) || (*(ushort *)(iVar6 + 6) < uVar11)) goto LAB_07fc6b06;
      func_0x07f0ff66(uVar11,auStack_34);
      func_0x07f1014c(auStack_34,auStack_2c,local_28,0,0);
      uVar1 = uVar11 - 1;
    } while ((local_28[0] & 0xffff) != uVar2);
    sVar9 = uVar11 + 1;
LAB_07fc6b06:
    if (sVar9 == 0) {
      *DAT_07fc6b68 = 200;
      *DAT_07fc6b6c = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    func_0x07f10472(sVar9,local_28,0,&local_40);
    if (param_2[2] == 2) {
      if ((int)((local_28[0] >> 8) << 0x1e) < 0) {
        if (param_2[3] < 2) goto LAB_07fc6b54;
        uVar5 = 0xffffff81;
      }
      else if ((param_2[3] | 2) == 2) {
LAB_07fc6b54:
        uVar5 = 0;
        FUN_07fc5c3c(param_4 >> 8,uVar10);
      }
      else {
        uVar5 = 0x81;
      }
    }
    else {
      uVar5 = 0xd;
    }
  }
  if ((uVar5 & 0xff) == 0) {
    puVar7 = (undefined1 *)
             func_0x07f1bbb0(DAT_07fc6b78,
                             (uint)(int)*psVar4 >> 0xf & param_4 & 0xffffff00 |
                             DAT_07fc6d70 & (int)*psVar4,param_3,param_2[2] + 6);
    func_0x07f1e0ac(puVar7 + 6,param_2 + 3,param_2[2]);
    *(ushort *)(puVar7 + 2) = (ushort)bVar3;
    uVar1 = param_2[2];
    *puVar7 = (char)(param_4 >> 8);
    *(ushort *)(puVar7 + 4) = uVar1;
    func_0x07f1bbe2(puVar7);
    uVar5 = 0;
  }
LAB_07fc6ae6:
  puVar8 = (ushort *)func_0x07f1bbb0(DAT_07fc6d6c,param_4,param_3,4);
  *(char *)(puVar8 + 1) = (char)uVar5;
  *puVar8 = *param_2;
  func_0x07f1bbe2();
  return 0;
}

