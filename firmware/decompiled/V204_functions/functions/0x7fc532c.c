// rea decompile_all
// name: FUN_07fc532c
// address: 0x7fc532c
// body: available
// range: 0x7fc532c-0x7fc5457 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc532c(byte *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  undefined *puVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  byte bVar9;
  undefined4 unaff_lr;
  byte local_a0 [96];
  int *local_40;
  undefined auStack_3c [24];
  byte *local_24;
  int local_c [3];
  
  local_c[0] = param_2;
  local_c[1] = param_3;
  local_c[2] = param_4;
  piVar7 = local_c;
  local_24 = local_a0;
  iVar8 = 1 - (int)local_24;
  bVar9 = *param_1;
  local_40 = piVar7;
  do {
    if ((byte *)0x5f < local_24 + iVar8) break;
    if (bVar9 == 0x25) {
      bVar9 = param_1[1];
      pbVar1 = param_1 + 2;
      if (bVar9 == 0x30) {
        bVar9 = *pbVar1;
        if (bVar9 == 0) break;
        cVar4 = bVar9 - 0x30;
        if (9 < (byte)(bVar9 - 0x30)) {
          cVar4 = '\0';
        }
        bVar9 = param_1[3];
        pbVar1 = param_1 + 4;
      }
      else {
        cVar4 = '\0';
      }
      if ((bVar9 | 4) == 0x6c) {
        bVar9 = *pbVar1;
        pbVar1 = pbVar1 + 1;
      }
      if (bVar9 == 0x58) {
LAB_07fc53d6:
        iVar2 = *piVar7;
        piVar7 = piVar7 + 1;
        if (bVar9 == 0x75) {
          uVar6 = 10;
        }
        else {
          uVar6 = 0x10;
        }
        uVar6 = FUN_07fc5294(iVar2,uVar6,bVar9 == 0x58,auStack_3c,cVar4);
        puVar5 = auStack_3c;
      }
      else {
        if (bVar9 == 99) {
          bVar9 = (byte)*piVar7;
          piVar7 = piVar7 + 1;
          goto LAB_07fc5370;
        }
        if ((bVar9 == 100) || (bVar9 == 0x69)) {
          iVar2 = *piVar7;
          piVar7 = piVar7 + 1;
          puVar5 = auStack_3c;
          uVar6 = FUN_07fc5294(iVar2,10,0,puVar5,cVar4);
        }
        else {
          if (bVar9 == 0x73) {
            iVar2 = 0;
            do {
              iVar3 = iVar2;
              iVar2 = iVar3 + 1;
            } while (*(char *)(*piVar7 + iVar3) != '\0');
            FUN_07fc1fa8(&local_24,local_a0,*piVar7,iVar3);
            piVar7 = piVar7 + 1;
            goto LAB_07fc541e;
          }
          if ((bVar9 == 0x75) || (bVar9 == 0x78)) goto LAB_07fc53d6;
          if (bVar9 == 0) break;
          FUN_07fc1fa8(&local_24,local_a0,s_FATAL__unsupported_printf_charac_07fc5458,0x25);
          if (local_24 + iVar8 < (byte *)0x60) {
            *local_24 = bVar9;
            local_24[1] = 0;
            local_24 = local_24 + 1;
          }
          uVar6 = 2;
          puVar5 = &DAT_07fc5480;
        }
      }
      FUN_07fc1fa8(&local_24,local_a0,puVar5,uVar6);
    }
    else {
      pbVar1 = param_1 + 1;
LAB_07fc5370:
      *local_24 = bVar9;
      local_24[1] = 0;
      local_24 = local_24 + 1;
    }
LAB_07fc541e:
    bVar9 = *pbVar1;
    param_1 = pbVar1;
  } while (bVar9 != 0);
  FUN_07fccf5c(local_a0,(int)local_24 - (int)local_a0);
  return unaff_lr;
}

