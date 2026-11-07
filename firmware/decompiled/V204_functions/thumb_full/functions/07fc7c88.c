/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc7c88(undefined4 param_1,char *param_2,undefined4 param_3)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  undefined2 *puVar5;
  char cVar6;
  undefined4 uVar7;
  char cVar8;
  short sVar9;
  
  uVar2 = func_0x07f1bf1a(param_3);
  if ((int)(uVar2 << 0x1e) < 0) {
    iVar3 = FUN_07fcb080(0x26);
    cVar6 = param_2[2];
    if (cVar6 == '\0') {
      cVar1 = param_2[1];
      cVar6 = -0x80;
      cVar8 = *(char *)(iVar3 + 0x1d);
      if (cVar1 == *(char *)(iVar3 + 0x1d)) {
        cVar8 = cVar1;
        if (*param_2 == *(char *)(iVar3 + 0x1c)) {
          uVar7 = 0;
          switch(param_2[5]) {
          case '\0':
            uVar7 = 0x14;
            break;
          case '\x01':
            uVar7 = 7;
            break;
          case '\x02':
            uVar7 = 0xc;
            break;
          case '\x03':
            uVar7 = 0xf;
            break;
          case '\x04':
            uVar7 = 0x11;
          }
          uVar4 = FUN_07fc75d4(iVar3,param_2[4],uVar7,param_2[8]);
          cVar6 = '\0';
          if (uVar4 != *(ushort *)(iVar3 + 0x1e)) {
            cVar6 = -0x80;
          }
        }
        else {
          cVar6 = -0x80;
        }
      }
    }
    else {
      cVar8 = *(char *)(iVar3 + 0x1d);
    }
    if (cVar8 == '\x01') {
      if (cVar6 == '\0') {
        sVar9 = *(short *)(param_2 + 6);
      }
      else {
        sVar9 = 0;
      }
      puVar5 = (undefined2 *)
               func_0x07f1bbb0(_DAT_07fc7db0,(ushort)*(byte *)(iVar3 + 0x1c) * 0x100 + 8,param_3,
                               sVar9 + 6);
      *puVar5 = *(undefined2 *)(iVar3 + 0x1e);
      puVar5[1] = sVar9;
      *(char *)(puVar5 + 2) = cVar6;
      if (cVar6 == '\0') {
        func_0x07f1e0ac((int)puVar5 + 5,param_2 + 9,sVar9);
      }
      func_0x07f1bbe2(puVar5);
    }
    else {
      puVar5 = (undefined2 *)
               func_0x07f1bbb0(_DAT_07fc7db0 + 2,(ushort)*(byte *)(iVar3 + 0x1c) * 0x100 + 8,param_3
                               ,4);
      *(char *)(puVar5 + 1) = cVar6;
      *puVar5 = *(undefined2 *)(iVar3 + 0x1e);
      func_0x07f1bbe2();
    }
    *(undefined2 *)(iVar3 + 0x1e) = 0;
    *(undefined1 *)(iVar3 + 0x1d) = 0;
    *(undefined1 *)(iVar3 + 0x1c) = 0xff;
    func_0x07f1beb6(param_3,uVar2 & 0xfd);
  }
  return 0;
}

