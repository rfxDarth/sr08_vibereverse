/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc3ac4(uint param_1)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  code *pcVar6;
  int iVar7;
  int iVar8;
  code *local_18;
  
  iVar8 = DAT_07fc3c70;
  if (param_1 < 0x24) {
    uVar4 = (uint)*(byte *)(DAT_07fc3c70 + 0xb);
    if (uVar4 != 0x1e) {
      pcVar6 = (code *)0x0;
      iVar7 = 0;
      do {
        if (iVar7 + 4 == 0x90) {
          local_18 = (code *)0x0;
          goto LAB_07fc3b02;
        }
        puVar1 = (undefined4 *)(DAT_07fc3c74 + iVar7);
        iVar7 = iVar7 + 4;
      } while (*(ushort *)*puVar1 != param_1);
      local_18 = *(code **)((ushort *)*puVar1 + 2);
LAB_07fc3b02:
      iVar7 = 0;
      do {
        if (iVar7 + 4 == 0x90) goto LAB_07fc3b16;
        puVar1 = (undefined4 *)(DAT_07fc3c74 + iVar7);
        iVar7 = iVar7 + 4;
      } while (*(ushort *)*puVar1 != uVar4);
      pcVar6 = *(code **)((ushort *)*puVar1 + 4);
LAB_07fc3b16:
      if (uVar4 != param_1) {
        *(undefined1 *)(DAT_07fc3c70 + 0x30) = 0;
      }
      if (param_1 < 0x16) {
        FUN_07fc31c0();
        if (*(char *)(iVar8 + 0x34) == '\0') {
          FUN_07fc3db8(0,8);
          *(undefined1 *)(iVar8 + 0x34) = 1;
        }
        FUN_07fc7ce4();
        iVar8 = DAT_07fc3c80;
        *(undefined2 *)(DAT_07fc3c80 + 0x44) = 0;
        *(undefined4 *)(iVar8 + 0x40) = 0;
        iVar8 = DAT_07fc3c78;
        for (iVar7 = 0; iVar3 = DAT_07fc3c7c, iVar7 != 0xe; iVar7 = iVar7 + 2) {
          FUN_07fc1d10(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x300,0,0);
        }
        for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
          FUN_07fc1d10(*(undefined1 *)(iVar3 + iVar8),*(undefined1 *)(iVar3 + iVar8 + 1),0x300,0,1);
        }
        FUN_07fc31c0();
        iVar8 = DAT_07fc3c70;
        *(undefined1 *)(DAT_07fc3c70 + 0x2c) = 0xff;
        *DAT_07fc3c84 = 0x8000;
        *_DAT_07fc3c88 = *_DAT_07fc3c88 | 1;
        FUN_07fc3db8(0,2);
      }
      else {
        if (*(char *)(iVar8 + 0x34) == '\x01') {
          FUN_07fc7ce4();
          iVar8 = DAT_07fc3c78;
          for (iVar7 = 0; iVar3 = DAT_07fc3c7c, iVar7 != 0xe; iVar7 = iVar7 + 2) {
            FUN_07fc1d10(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x200,0,0
                        );
          }
          for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
            FUN_07fc1d10(*(undefined1 *)(iVar3 + iVar8),*(undefined1 *)(iVar3 + iVar8 + 1),0x200,0,1
                        );
          }
          FUN_07fc3db8(1,8);
          iVar8 = DAT_07fc3c70;
          *(undefined1 *)(DAT_07fc3c70 + 0x2c) = 0xff;
          *(undefined1 *)(iVar8 + 0x34) = 0;
        }
        *(undefined2 *)(iVar8 + 0x40) = 0xf;
        if (param_1 == 0x20) {
          *(undefined2 *)(iVar8 + 0x40) = 0xb4;
          FUN_07fc3a14(0x4000000);
          uVar5 = 0x800;
        }
        else {
          FUN_07fc3a14(0x4000000);
          uVar5 = 0x8000000;
        }
        FUN_07fc3a14(uVar5);
      }
      FUN_07fc521c(s_Psystate__d_switch_to__d_07fc3c8b + 1,*(undefined1 *)(iVar8 + 0xb),param_1);
      iVar7 = DAT_07fc3ca8;
      if (*(int *)(DAT_07fc3ca8 + 0x14) != 0) {
        *(undefined4 *)(DAT_07fc3ca8 + 0x14) = 0;
        uVar5 = FUN_07fc432c();
        *(undefined4 *)(iVar7 + 0x18) = uVar5;
      }
      if (pcVar6 != (code *)0x0) {
        (*pcVar6)(param_1);
      }
      uVar2 = *(undefined1 *)(iVar8 + 0xb);
      *(char *)(iVar8 + 0xb) = (char)param_1;
      if (local_18 != (code *)0x0) {
        (*local_18)(uVar2);
      }
    }
  }
  else {
    FUN_07fc521c(s_newstate_error__d__d_07fc3cac,param_1,0x24);
  }
  return;
}

