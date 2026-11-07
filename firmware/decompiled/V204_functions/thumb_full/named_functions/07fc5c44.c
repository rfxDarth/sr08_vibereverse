/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5c44(uint param_1,undefined4 param_2,undefined1 param_3)

{
  undefined1 auStack_24 [8];
  int local_1c;
  short local_18 [2];
  
  if (7 < param_1) {
    *DAT_07fc5dac = 200;
    *DAT_07fc5db0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  FUN_07fc57b8(param_2,local_18,&local_1c);
  if (local_18[0] != 0) {
    if (local_1c != 0) {
      ROM___aeabi_memcpy /* 0x07f1e0ac */(auStack_24,local_1c,local_18[0]);
      auStack_24[param_1] = param_3;
      FUN_07fc5848(param_2,local_18[0],auStack_24);
      return;
    }
    *DAT_07fc5dac = 200;
    *DAT_07fc5db0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  *DAT_07fc5dac = 200;
  *DAT_07fc5db0 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

