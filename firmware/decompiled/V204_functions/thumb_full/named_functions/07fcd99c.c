/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fcd99c(int param_1,uint param_2)

{
  undefined4 uVar1;
  uint uVar2;
  
  uVar2 = 0;
  uVar1 = 0;
  if (*(int *)(DAT_07fcd9c4 + 4) != 0) {
    for (; uVar2 < param_2; uVar2 = uVar2 + 1 & 0xff) {
      FUN_07fcd4f8(*(undefined4 *)(param_1 + uVar2 * 4));
    }
    uVar1 = 1;
  }
  return uVar1;
}

