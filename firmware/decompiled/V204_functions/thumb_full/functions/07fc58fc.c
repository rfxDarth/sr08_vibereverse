/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc58fc(undefined4 param_1,uint param_2)

{
  uint uVar1;
  undefined4 *puVar2;
  uint uVar3;
  
  uVar1 = DAT_07fc5c40;
  if (param_2 < 8) {
    puVar2 = DAT_07fc5c38;
    for (uVar3 = 1; puVar2 = puVar2 + 5, uVar3 != 6; uVar3 = uVar3 + 1) {
      if (((0x2aU >> (uVar3 & 0xff) & 1) != 0) && (*(ushort *)*puVar2 == uVar1)) {
        FUN_07fc5c44(param_2,uVar3 & 0xff,0);
      }
    }
    return;
  }
  *DAT_07fc5cb4 = 200;
  *DAT_07fc5cb8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

