/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined1 FUN_07fc8a0c(undefined2 param_1)

{
  undefined2 *puVar1;
  ushort *puVar2;
  uint uVar3;
  undefined1 uVar4;
  
  FUN_07fc1f20();
  puVar1 = DAT_07fc8b14;
  *DAT_07fc8b14 = param_1;
  FUN_07fc1f20();
  *puVar1 = 0x100;
  FUN_07fc1f00();
  puVar2 = DAT_07fc8b18;
  if ((DAT_07fc8b18[0x16] & 1) == 0) {
    uVar3 = FUN_07fc1ee8(*DAT_07fc8b18);
    uVar4 = (undefined1)*puVar1;
  }
  else {
    FUN_07fc532c(DAT_07fc8b1c,0x76,1);
    uVar3 = (uint)*puVar2;
    uVar4 = 0;
  }
  FUN_07fc1f00(uVar3);
  FUN_07fc1f10();
  return uVar4;
}

