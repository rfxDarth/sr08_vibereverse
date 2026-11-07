/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

longlong FUN_07fc6358(undefined4 param_1,uint param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uStack_18;
  
  uStack_18 = param_4;
  iVar1 = ROM_ke_state_get /* 0x07f1bf1a */(param_3);
  iVar2 = _DAT_07fc64a0;
  if (iVar1 == 3) {
    *(undefined1 *)(_DAT_07fc64a0 + 100) = 0;
    *(undefined2 *)(iVar2 + (param_4 >> 8) * 0xe + 0x5a) = 0xff;
    iVar1 = _DAT_07fc642c;
    if (*(char *)(_DAT_07fc642c + 9) != '\0') {
      FUN_07fc3410();
      *(undefined1 *)(iVar1 + 9) = 0;
    }
    FUN_07fcc538();
    if (*(char *)(iVar1 + 0x18) == '\x01') {
      *(undefined1 *)(iVar1 + 0x18) = 0;
      if (*(char *)(iVar1 + 0x1c) == '\x01') {
        iVar2 = 0x18000;
        FUN_07fc3e90(0x18000,0x14000);
        iVar1 = 0x6c000;
        for (iVar3 = 0x50; iVar3 != 0; iVar3 = iVar3 + -1) {
          FUN_07fc3ea0(_DAT_07fc6430,iVar1,0x400,0);
          FUN_07fc3ea0(_DAT_07fc6430,iVar2,0x400,1);
          iVar1 = iVar1 + 0x400;
          iVar2 = iVar2 + 0x400;
        }
        uStack_18 = CONCAT31(uStack_18._1_3_,0xaa);
        FUN_07fc3ea0(&uStack_18,0x18002,1,1);
        iVar2 = _DAT_07fc64a0;
      }
      iVar1 = _DAT_07fc6434;
      *(short *)(_DAT_07fc6434 + 0x98) = (short)_DAT_07fc6438;
      *(undefined4 *)(iVar1 + 0x9c) = *(undefined4 *)(iVar2 + 0x2c);
      FUN_07fc5200();
      ROM_platform_reset /* 0x07f027e4 */(_DAT_07fc643c);
    }
    FUN_07fc4fc8(0);
    return (ulonglong)param_2 << 0x20;
  }
  *_DAT_07fc6774 = 200;
  *_DAT_07fc6778 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

