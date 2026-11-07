// rea decompile_all
// name: FUN_07fc6b7c
// address: 0x7fc6b7c
// body: available
// range: 0x7fc6b7c-0x7fc6bd7 inclusive
// range: 0x7fc6be4-0x7fc6d6b inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


char FUN_07fc6b7c(undefined4 param_1,ushort *param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  ushort uVar2;
  undefined1 uVar3;
  short sVar4;
  undefined2 uVar5;
  int iVar6;
  ushort *puVar7;
  ushort *puVar8;
  undefined2 *puVar9;
  uint uVar10;
  uint uVar11;
  
  iVar6 = func_0x07f1bf1a(param_3);
  if (iVar6 != 0) {
    iVar6 = func_0x07f1bf1a(param_3);
    return (iVar6 == 1) * '\x02';
  }
  puVar7 = (ushort *)func_0x07f1bbb0(DAT_07fc6d6c,param_4,param_3);
  puVar8 = (ushort *)FUN_07fca05c(0xfc);
  *(undefined1 *)(puVar7 + 1) = 0x80;
  uVar2 = *param_2;
  *puVar7 = uVar2;
  uVar10 = (uint)uVar2 - (uint)(byte)puVar8[3] & 0xff;
  if (0xb < uVar10 - 2) {
switchD_07fc6bd6_caseD_3:
    *(undefined1 *)(puVar7 + 1) = 0x80;
    goto LAB_07fc6d60;
  }
  uVar11 = param_4 >> 8;
  switch(uVar10) {
  case 2:
    uVar3 = func_0x07f1003a(*param_2,param_2[2],param_2[1],param_2 + 3);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             func_0x07f1bbb0(0xfc00,param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                                    DAT_07fc6d70 & *puVar8,0xfc,8);
    uVar5 = func_0x07f14c80(uVar11);
    *(undefined4 *)(puVar9 + 2) = 0;
    *puVar9 = uVar5;
    iVar6 = (uint)*(byte *)((int)param_2 + 9) * 0x1000000;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)(byte)param_2[4] * 0x10000 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)*(byte *)((int)param_2 + 7) * 0x100 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    bVar1 = (byte)param_2[3];
    uVar3 = 1;
    goto LAB_07fc6c9e;
  default:
    goto switchD_07fc6bd6_caseD_3;
  case 4:
    uVar3 = func_0x07f1003a(*param_2,param_2[2],param_2[1],param_2 + 3);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             func_0x07f1bbb0(DAT_07fc6d7c,
                             param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                             DAT_07fc6d70 & *puVar8,0xfc,8);
    uVar5 = func_0x07f14c80(uVar11);
    *(undefined4 *)(puVar9 + 2) = 0;
    *puVar9 = uVar5;
    iVar6 = (uint)*(byte *)((int)param_2 + 9) * 0x1000000;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)(byte)param_2[4] * 0x10000 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)*(byte *)((int)param_2 + 7) * 0x100 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    bVar1 = (byte)param_2[3];
    uVar3 = 2;
LAB_07fc6c9e:
    *(undefined1 *)(puVar9 + 1) = uVar3;
    *(uint *)(puVar9 + 2) = iVar6 + (uint)bVar1;
    break;
  case 8:
    uVar3 = func_0x07f1003a(*param_2,param_2[2],param_2[1],param_2 + 3);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             func_0x07f1bbb0(DAT_07fc6d74,
                             param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                             DAT_07fc6d70 & *puVar8,0xfc,6);
    uVar5 = func_0x07f14c80(uVar11);
    puVar9[2] = 0;
    *puVar9 = uVar5;
    sVar4 = (ushort)*(byte *)((int)param_2 + 7) * 0x100;
    puVar9[2] = sVar4;
    uVar2 = param_2[3];
    *(undefined1 *)(puVar9 + 1) = 3;
    puVar9[2] = sVar4 + (ushort)(byte)uVar2;
    break;
  case 10:
    uVar3 = func_0x07f1003a(*param_2,param_2[2],param_2[1]);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             func_0x07f1bbb0(DAT_07fc6d78,
                             param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                             DAT_07fc6d70 & *puVar8,0xfc,param_2[2] + 4);
    uVar5 = func_0x07f14c80(uVar11);
    *puVar9 = uVar5;
    func_0x07f1e0ac(puVar9 + 2,param_2 + 3,param_2[2]);
    *(char *)((int)puVar9 + 3) = (char)param_2[2];
    *(undefined1 *)(puVar9 + 1) = 4;
    break;
  case 0xd:
    uVar2 = param_2[3];
    bVar1 = *(byte *)((int)param_2 + 7);
    *(undefined1 *)(puVar7 + 1) = 0;
    puVar8[5] = (ushort)bVar1 * 0x100 + (ushort)(byte)uVar2;
    goto LAB_07fc6d60;
  }
  func_0x07f1bbe2(puVar9);
LAB_07fc6d60:
  func_0x07f1bbe2(puVar7);
  return '\0';
}

