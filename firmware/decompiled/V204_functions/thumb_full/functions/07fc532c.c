/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */

#include <stdarg.h>

undefined4 FUN_07fc532c(byte *param_1,...)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  undefined1 *puVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  byte bVar9;
  undefined4 unaff_lr;
  va_list varargs;
  char *string_arg;
  byte local_a0 [96];
  int *local_40;
  undefined1 auStack_3c [24];
  byte *local_24;
  
  va_start(varargs,param_1);
  piVar7 = (int *)varargs.__ap;
  local_40 = piVar7;
  local_24 = local_a0;
  iVar8 = 1 - (int)local_24;
  bVar9 = *param_1;
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
            string_arg = (char *)*piVar7;
            iVar2 = 0;
            do {
              iVar3 = iVar2;
              iVar2 = iVar3 + 1;
            } while (string_arg[iVar3] != '\0');
            FUN_07fc1fa8(&local_24,local_a0,string_arg,iVar3);
            piVar7 = piVar7 + 1;
            goto LAB_07fc541e;
          }
          if ((bVar9 == 0x75) || (bVar9 == 0x78)) goto LAB_07fc53d6;
          if (bVar9 == 0) break;
          FUN_07fc1fa8(&local_24,local_a0,(byte *)0x07fc5458,0x25);
          if (local_24 + iVar8 < (byte *)0x60) {
            *local_24 = bVar9;
            local_24[1] = 0;
            local_24 = local_24 + 1;
          }
          uVar6 = 2;
          puVar5 = (byte *)0x07fc5480;
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
  va_end(varargs);
  return unaff_lr;
}

