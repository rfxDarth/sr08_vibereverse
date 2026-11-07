/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc58f4(undefined4 param_1,uint param_2)

{
  uint uVar1;
  undefined4 *puVar2;
  uint uVar3;
  
  uVar1 = DAT_07fc5c38;
  if (param_2 < 8) {
    puVar2 = DAT_07fc5c30;
    for (uVar3 = 1; puVar2 = puVar2 + 5, uVar3 != 6; uVar3 = uVar3 + 1) {
      if (((0x2aU >> (uVar3 & 0xff) & 1) != 0) && (*(ushort *)*puVar2 == uVar1)) {
        FUN_07fc5c3c(param_2,uVar3 & 0xff,0);
      }
    }
    return;
  }
  *DAT_07fc5cac = 200;
  *DAT_07fc5cb0 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

