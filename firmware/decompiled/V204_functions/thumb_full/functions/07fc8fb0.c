/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined * FUN_07fc8fb0(byte *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  byte bVar4;
  uint uVar5;
  
  *param_1 = 0;
  iVar1 = DAT_07fc8ff8;
  FUN_07fc3ea0(DAT_07fc8ff8 + 0x14,0x64000,0x14,0,param_4);
  if (*(char *)(iVar1 + 0x14) == '+') {
    bVar4 = *(byte *)(iVar1 + 0x27);
    uVar5 = (uint)bVar4;
    if ((uVar5 != 0) && (uVar5 < 0x12)) {
      puVar3 = (undefined *)(iVar1 + 0x15);
      uVar2 = FUN_07fc18f4(puVar3);
      if (uVar2 == uVar5) goto LAB_07fc8ff0;
    }
  }
  *(undefined1 *)(iVar1 + 0x14) = 0x84;
  puVar3 = &DAT_07fc8ffc;
  bVar4 = 4;
LAB_07fc8ff0:
  *param_1 = bVar4;
  return puVar3;
}

