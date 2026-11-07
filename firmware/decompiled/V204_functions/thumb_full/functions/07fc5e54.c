/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc5e54(int param_1,int param_2)

{
  int iVar1;
  char *pcVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  char cVar7;
  int iVar8;
  int iVar9;
  char local_24 [14];
  undefined2 local_16;
  
  if (-1 < (int)((uint)*_DAT_07fc5ef0 << 0x18)) {
    do {
    } while (-1 < (int)((uint)_DAT_07fc5ef0[5] << 0x18));
    *_DAT_07fc5ef0 = *_DAT_07fc5ef0 & 0xfffc;
  }
  FUN_07fcc4b0();
  if (param_1 == 0) {
    pcVar2 = s_____NMI_STATUS_07fc5f08;
    uVar4 = 0x11;
  }
  else {
    pcVar2 = s_P_____HF_STATUS_07fc5ef3 + 1;
    uVar4 = 0x10;
  }
  FUN_07fccf5c(pcVar2,uVar4);
  FUN_07fc0194(DAT_07fc5f1c);
  uVar4 = DAT_07fc5f24;
  iVar1 = DAT_07fc5f20;
  for (iVar9 = 0; iVar9 != 8; iVar9 = iVar9 + 1) {
    local_24[5] = 0x78;
    local_24[4] = 0x30;
    local_24[3] = 0x3d;
    iVar5 = iVar9 * 4;
    local_24[0] = *(char *)(iVar1 + iVar5);
    iVar8 = iVar1 + iVar5;
    local_24[2] = *(undefined1 *)(iVar8 + 2);
    local_24[1] = *(undefined1 *)(iVar8 + 1);
    uVar3 = *(uint *)(param_2 + iVar5);
    for (uVar6 = 0xd; 5 < uVar6; uVar6 = uVar6 - 1) {
      cVar7 = (char)(uVar3 & 0xf);
      if ((uVar3 & 0xf) < 10) {
        cVar7 = cVar7 + '0';
      }
      else {
        cVar7 = cVar7 + 'W';
      }
      local_24[uVar6] = cVar7;
      uVar3 = (int)uVar3 >> 4;
    }
    local_16 = (undefined2)uVar4;
    FUN_07fccf5c(local_24,0x10);
    FUN_07fc0194(DAT_07fc5f1c);
  }
  return;
}

