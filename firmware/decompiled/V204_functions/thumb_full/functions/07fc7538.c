/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc7538(undefined4 param_1,byte *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  byte *pbVar4;
  byte bVar5;
  undefined4 uVar6;
  
  uVar6 = param_4;
  iVar1 = FUN_07fcb080(0x26);
  if (iVar1 == 0) {
    *DAT_07fc77f4 = 200;
    *DAT_07fc77f8 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  bVar5 = *param_2;
  if (bVar5 < 9) {
    iVar2 = func_0x07f14c80();
    if (iVar2 != DAT_07fc75c4) {
      iVar2 = iVar1 + 6;
      pbVar4 = param_2;
      for (uVar3 = (uint)*(byte *)(iVar1 + 0x21); pbVar4 = pbVar4 + 2, uVar3 != 0; uVar3 = uVar3 - 1
          ) {
        *(undefined2 *)(iVar2 + (uint)*param_2 * 2) = *(undefined2 *)pbVar4;
        iVar2 = iVar2 + 0x16;
      }
      if (*(char *)(DAT_07fc75c8 + 0x11) == '\x02') {
        bVar5 = 0;
        *(undefined1 *)(DAT_07fc75cc + 0xb0) = 0;
      }
      else {
        bVar5 = 0;
      }
      goto LAB_07fc75aa;
    }
    bVar5 = *param_2;
  }
  if (bVar5 < 9) {
    bVar5 = 0x89;
  }
  else {
    bVar5 = 0x40;
  }
LAB_07fc75aa:
  pbVar4 = (byte *)func_0x07f1bbb0(DAT_07fc75d0,param_4,param_3,2,uVar6);
  pbVar4[1] = bVar5;
  *pbVar4 = *param_2;
  func_0x07f1bbe2();
  return 0;
}

