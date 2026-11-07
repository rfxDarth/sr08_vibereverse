/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc5c3c(uint param_1,undefined4 param_2,undefined1 param_3)

{
  undefined1 auStack_24 [8];
  int local_1c;
  short local_18 [2];
  
  if (7 < param_1) {
    *DAT_07fc5da4 = 200;
    *DAT_07fc5da8 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  FUN_07fc57b0(param_2,local_18,&local_1c);
  if (local_18[0] != 0) {
    if (local_1c != 0) {
      func_0x07f1e0ac(auStack_24,local_1c,local_18[0]);
      auStack_24[param_1] = param_3;
      FUN_07fc5840(param_2,local_18[0],auStack_24);
      return;
    }
    *DAT_07fc5da4 = 200;
    *DAT_07fc5da8 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  *DAT_07fc5da4 = 200;
  *DAT_07fc5da8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

