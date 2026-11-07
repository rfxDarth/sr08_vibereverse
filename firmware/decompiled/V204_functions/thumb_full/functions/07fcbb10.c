/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fcbb10(void)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  
  uVar1 = DAT_07fcbb34;
  uVar5 = 0;
  do {
    uVar4 = uVar1 + 1;
    if (uVar4 == uVar5) break;
    uVar2 = FUN_07fcbafc();
    uVar4 = uVar5;
    uVar5 = uVar5 + 1;
  } while ((uVar2 & 1) != 0);
  uVar3 = 0;
  if (uVar1 < uVar4) {
    uVar3 = 0xffffffff;
  }
  return uVar3;
}

