/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc61e4(undefined4 param_1,char *param_2)

{
  ushort uVar1;
  int iVar2;
  
  if (*param_2 == '\t') {
    if (param_2[1] != '\0') {
      FUN_07fc532c(0x7fc6244);
      iVar2 = _DAT_07fc6258;
      if (param_2[1] != -0x46) {
        if (param_2[1] != 'H') {
          return 0;
        }
        if (*(ushort *)(_DAT_07fc6258 + 0xc) < 0x14) {
          *(ushort *)(_DAT_07fc6258 + 0xc) = *(ushort *)(_DAT_07fc6258 + 0xc) + 6;
        }
        uVar1 = *(ushort *)(iVar2 + 10);
        if (uVar1 < 0x14) {
          *(ushort *)(iVar2 + 10) = uVar1 + 6;
        }
      }
      FUN_07fc2dc4();
    }
  }
  else {
    if (param_2[1] != '\0') {
      *_DAT_07fc623c = 200;
      *_DAT_07fc6240 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    FUN_07fcc578(param_1,param_2);
  }
  return 0;
}

