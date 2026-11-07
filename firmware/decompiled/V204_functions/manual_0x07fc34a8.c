/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc34a8(int param_1,uint param_2,uint param_3)

{
  uint uVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  uint uVar4;
  uint uVar5;
  
  if (param_3 < param_2) {
    *_DAT_07fc355c = 200;
    *_DAT_07fc3560 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  uVar5 = 0;
  for (uVar1 = 0; uVar1 = uVar1 & 0xff, (int)uVar1 < (int)(param_2 - 3); uVar1 = uVar1 + 4) {
    uVar2 = func_0x07f02976();
    *(char *)(param_1 + ~uVar1 + param_3) = (char)((uint)uVar2 >> 0x18);
    *(char *)(param_1 + ~uVar1 + param_3 + -1) = (char)((uint)uVar2 >> 0x10);
    *(char *)(param_1 + ((param_3 - 3) - uVar1)) = (char)((uint)uVar2 >> 8);
    *(char *)(param_1 + ((param_3 - 4) - uVar1)) = (char)uVar2;
    uVar5 = uVar5 + 4 & 0xff;
  }
  if ((param_2 - uVar5 & 0xff) != 0) {
    puVar3 = (undefined1 *)((param_3 + param_1) - uVar5);
    uVar1 = func_0x07f02976();
    for (uVar4 = 0x18; puVar3 = puVar3 + -1, (param_2 - uVar5 & 0xff) * 8 + uVar4 != 0x18;
        uVar4 = uVar4 - 8) {
      *puVar3 = (char)(uVar1 >> (uVar4 & 0xff));
    }
  }
  puVar3 = (undefined1 *)((param_3 - param_2) + param_1);
  for (uVar1 = param_3 - param_2 & 0xff; puVar3 = puVar3 + -1, uVar1 != 0; uVar1 = uVar1 - 1) {
    *puVar3 = 0;
  }
  return;
}

