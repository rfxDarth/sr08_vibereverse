// rea decompile_all
// name: FUN_07fc5248
// address: 0x7fc5248
// body: available
// range: 0x7fc5248-0x7fc5361 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


int FUN_07fc5248(byte *param_1,byte *param_2,int *param_3)

{
  int iVar1;
  int iVar2;
  char cVar3;
  byte *pbVar4;
  undefined *puVar5;
  undefined4 uVar6;
  byte bVar7;
  undefined auStack_30 [24];
  byte *local_18;
  
  bVar7 = *param_2;
  local_18 = param_1;
  do {
    if ((byte *)0x5f < local_18 + (1 - (int)param_1)) break;
    if (bVar7 == 0x25) {
      bVar7 = param_2[1];
      pbVar4 = param_2 + 2;
      if (bVar7 == 0x30) {
        bVar7 = *pbVar4;
        if (bVar7 == 0) break;
        cVar3 = bVar7 - 0x30;
        if (9 < (byte)(bVar7 - 0x30)) {
          cVar3 = '\0';
        }
        bVar7 = param_2[3];
        pbVar4 = param_2 + 4;
      }
      else {
        cVar3 = '\0';
      }
      if ((bVar7 | 4) == 0x6c) {
        bVar7 = *pbVar4;
        pbVar4 = pbVar4 + 1;
      }
      if (bVar7 == 0x58) {
LAB_07fc52ea:
        iVar1 = *param_3;
        param_3 = param_3 + 1;
        if (bVar7 == 0x75) {
          uVar6 = 10;
        }
        else {
          uVar6 = 0x10;
        }
        uVar6 = FUN_07fc5184(iVar1,uVar6,bVar7 == 0x58,auStack_30,cVar3);
        puVar5 = auStack_30;
      }
      else {
        if (bVar7 == 99) {
          bVar7 = (byte)*param_3;
          param_3 = param_3 + 1;
          goto LAB_07fc5284;
        }
        if ((bVar7 == 100) || (bVar7 == 0x69)) {
          iVar1 = *param_3;
          param_3 = param_3 + 1;
          puVar5 = auStack_30;
          uVar6 = FUN_07fc5184(iVar1,10,0,puVar5,cVar3);
        }
        else {
          if (bVar7 == 0x73) {
            iVar1 = 0;
            do {
              iVar2 = iVar1;
              iVar1 = iVar2 + 1;
            } while (*(char *)(*param_3 + iVar2) != '\0');
            FUN_07fc1fa8(&local_18,param_1,*param_3,iVar2);
            param_3 = param_3 + 1;
            goto LAB_07fc5332;
          }
          if ((bVar7 == 0x75) || (bVar7 == 0x78)) goto LAB_07fc52ea;
          if (bVar7 == 0) break;
          FUN_07fc1fa8(&local_18,param_1,s_FFATAL__unsupported_printf_chara_07fc5363 + 1,0x25);
          if (local_18 + (1 - (int)param_1) < (byte *)0x60) {
            *local_18 = bVar7;
            local_18[1] = 0;
            local_18 = local_18 + 1;
          }
          uVar6 = 2;
          puVar5 = &DAT_07fc538c;
        }
      }
      FUN_07fc1fa8(&local_18,param_1,puVar5,uVar6);
    }
    else {
      pbVar4 = param_2 + 1;
LAB_07fc5284:
      *local_18 = bVar7;
      local_18[1] = 0;
      local_18 = local_18 + 1;
    }
LAB_07fc5332:
    bVar7 = *pbVar4;
    param_2 = pbVar4;
  } while (bVar7 != 0);
  return (int)local_18 - (int)param_1;
}

