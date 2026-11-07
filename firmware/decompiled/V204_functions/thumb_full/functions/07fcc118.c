/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fcc118(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = FUN_07fcb080(0xfc);
  iVar1 = func_0x07f1003a(*(short *)(iVar1 + 6) + 6,4,0,param_2);
  if (iVar1 != 0) {
    *_DAT_07fcc48c = 200;
    *_DAT_07fcc490 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  return 0;
}

