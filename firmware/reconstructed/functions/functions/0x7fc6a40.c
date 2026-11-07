// rea decompile_all
// name: FUN_07fc6a40
// address: 0x7fc6a40
// body: available
// range: 0x7fc6a40-0x7fc6aa7 inclusive
// range: 0x7fc6ae8-0x7fc6be1 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc6a40(undefined4 param_1,short *param_2,undefined4 param_3,uint param_4)

{
  undefined1 uVar1;
  uint uVar2;
  short *psVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined1 uVar6;
  uint uVar7;
  short sVar8;
  ushort local_24 [2];
  sbyte local_20 [4];
  byte local_1c [4];
  uint local_18;
  
  uVar2 = func_0x07f1bf1a(param_3);
  if ((int)(uVar2 << 0x1e) < 0) {
    return 2;
  }
  sVar8 = 0;
  local_24[0] = 0;
  psVar3 = (short *)FUN_07fcb080(0x26);
  iVar4 = FUN_07fc76a0(psVar3,*param_2,&local_18,local_1c,local_20);
  if ((iVar4 != 0) || (iVar4 = 0x80, 0xf < local_1c[0] - 7)) goto switchD_07fc6aa6_caseD_8;
  uVar7 = param_4 >> 8;
  uVar6 = 2;
  switch(local_1c[0]) {
  case 7:
    uVar6 = 1;
    break;
  default:
    goto switchD_07fc6aa6_caseD_8;
  case 10:
    local_24[0] = (ushort)*(byte *)((int)psVar3 + (local_18 & 0xff) * 0x16 + 0x19);
    iVar4 = 0;
    sVar8 = 1;
    goto switchD_07fc6aa6_caseD_8;
  case 0xc:
    break;
  case 0xd:
    local_24[0] = psVar3[(local_18 & 0xff) * 0xb + uVar7 + 3] & 1;
    goto LAB_07fc6bdc;
  case 0xf:
    uVar6 = 3;
    break;
  case 0x11:
    uVar6 = 4;
    break;
  case 0x12:
    local_24[0] = (ushort)(((ushort)psVar3[(local_18 & 0xff) * 0xb + uVar7 + 3] & 3) >> 1);
    goto LAB_07fc6bdc;
  case 0x14:
    uVar6 = 0;
    break;
  case 0x16:
    local_24[0] = (ushort)(((ushort)psVar3[(local_18 & 0xff) * 0xb + uVar7 + 3] >> local_20[0] &
                           0x40) >> 6);
LAB_07fc6bdc:
    iVar4 = 0;
    sVar8 = 2;
switchD_07fc6aa6_caseD_8:
    psVar3 = (short *)func_0x07f1bbb0(DAT_07fc6bec,param_4,param_3,sVar8 + 6);
    *psVar3 = *param_2;
    psVar3[1] = sVar8;
    *(char *)(psVar3 + 2) = (char)iVar4;
    func_0x07f1e0ac((int)psVar3 + 5,local_24,sVar8);
    func_0x07f1bbe2(psVar3);
    return 0;
  }
  puVar5 = (undefined1 *)
           func_0x07f1bbb0(DAT_07fc6be8,
                           param_4 & (uint)(int)*psVar3 >> 0xf & 0xffffff00 |
                           DAT_07fc6db4 & (int)*psVar3,param_3,8);
  *(undefined2 *)(puVar5 + 4) = 0;
  puVar5[1] = 1;
  uVar1 = (undefined1)(param_4 >> 8);
  *puVar5 = uVar1;
  puVar5[3] = uVar6;
  puVar5[2] = (undefined1)local_18;
  puVar5[6] = local_20[0];
  func_0x07f1bbe2();
  *(undefined1 *)((int)psVar3 + 0x1d) = 1;
  *(undefined1 *)(psVar3 + 0xe) = uVar1;
  psVar3[0xf] = *param_2;
  func_0x07f1beb6(param_3,uVar2 | 2);
  return 0;
}

