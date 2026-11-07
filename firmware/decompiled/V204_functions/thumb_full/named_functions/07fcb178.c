/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb178(int param_1,uint param_2)

{
  uint uVar1;
  
  for (uVar1 = 0; param_2 != uVar1; uVar1 = uVar1 + 1) {
    if ((uVar1 & 0xf) == 0) {
      FUN_07fc532c(DAT_07fcb1a4);
    }
    FUN_07fc532c(s__02X_07fcb1a8,*(undefined1 *)(param_1 + uVar1));
  }
  FUN_07fc532c(DAT_07fcb1a4);
  return;
}

