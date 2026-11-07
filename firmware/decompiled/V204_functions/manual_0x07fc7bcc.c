/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc7bcc(undefined4 param_1,char *param_2,undefined4 param_3)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  undefined2 *puVar5;
  int iVar6;
  char *pcVar7;
  char cVar8;
  char cVar9;
  
  uVar2 = func_0x07f1bf1a(param_3);
  if ((int)(uVar2 << 0x1e) < 0) {
    iVar3 = FUN_07fcb080(0x26);
    cVar8 = *(char *)(iVar3 + 0x1d);
    cVar9 = param_2[1];
    if (cVar9 == '\0') {
      if ((cVar8 == '\x03') && (cVar8 = '\x03', *param_2 == *(char *)(iVar3 + 0x1c))) {
        bVar1 = param_2[2];
        uVar4 = FUN_07fc75d4(iVar3,(uint)bVar1,10);
        cVar8 = '\x03';
        if (uVar4 == *(ushort *)(iVar3 + 0x1e)) {
          *(char *)(iVar3 + (uint)bVar1 * 0x16 + 0x19) = param_2[3];
          cVar9 = '\0';
        }
        else {
          cVar9 = -0x80;
        }
      }
      else {
        cVar9 = -0x80;
      }
    }
    iVar6 = (uint)*(byte *)(iVar3 + 0x1c) * 0x100 + 8;
    if (cVar8 == '\x01') {
      puVar5 = (undefined2 *)func_0x07f1bbb0(_DAT_07fc7db0,iVar6,param_3,6);
      *puVar5 = *(undefined2 *)(iVar3 + 0x1e);
      pcVar7 = (char *)(puVar5 + 2);
    }
    else {
      puVar5 = (undefined2 *)func_0x07f1bbb0(_DAT_07fc7db0 + 2,iVar6,param_3,4);
      *puVar5 = *(undefined2 *)(iVar3 + 0x1e);
      pcVar7 = (char *)(puVar5 + 1);
    }
    *pcVar7 = cVar9;
    func_0x07f1bbe2();
    *(undefined2 *)(iVar3 + 0x1e) = 0;
    *(undefined2 *)(iVar3 + 0x1c) = 0xff;
    func_0x07f1beb6(param_3,uVar2 & 0xfd);
  }
  return 0;
}

