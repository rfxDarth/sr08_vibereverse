/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc89b0(undefined2 param_1,undefined1 *param_2,uint param_3)

{
  undefined2 uVar1;
  undefined2 *puVar2;
  undefined2 *puVar3;
  uint uVar4;
  
  FUN_07fc1f20();
  puVar2 = DAT_07fc8b14;
  *DAT_07fc8b14 = param_1;
  for (uVar4 = 0; uVar4 < param_3; uVar4 = uVar4 + 1) {
    FUN_07fc1f20();
    *puVar2 = 0x100;
  }
  FUN_07fc1f00();
  puVar3 = DAT_07fc8b18;
  if ((DAT_07fc8b18[0x16] & 1) != 0) {
    FUN_07fc532c(DAT_07fc8b1c,0x9e,1);
  }
  uVar1 = *puVar3;
  for (uVar4 = 0; uVar4 < param_3; uVar4 = uVar4 + 1) {
    FUN_07fc1ee8();
    uVar1 = *puVar2;
    *param_2 = (char)uVar1;
    param_2 = param_2 + 1;
  }
  FUN_07fc1f00(uVar1);
  FUN_07fc1f10();
  return;
}

