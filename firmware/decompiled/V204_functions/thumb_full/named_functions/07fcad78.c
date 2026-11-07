/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcad78(void)

{
  int iVar1;
  undefined1 uVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  
  uVar3 = FUN_07fc4440();
  iVar1 = DAT_07fcaf54;
  uVar2 = 0;
  if ((*DAT_07fcaf98 != '\0') && (*(ushort *)(DAT_07fcade4 + 0xc) < 0x50)) {
    uVar6 = uVar3 + 0x5000000;
    if (*(uint *)(DAT_07fcaf54 + 0x70) <= uVar3) {
      uVar6 = uVar3;
    }
    if ((DAT_07fcadec <= uVar6 - *(uint *)(DAT_07fcaf54 + 0x70)) &&
       (iVar4 = FUN_07fcc494(), iVar4 == 0)) {
      uVar6 = uVar3 + 0x5000000;
      if (*(uint *)(iVar1 + 0x74) <= uVar3) {
        uVar6 = uVar3;
      }
      if (DAT_07fcadf0 <= uVar6 - *(uint *)(iVar1 + 0x74)) {
        FUN_07fc3254(*(undefined1 *)(iVar1 + 8),0x50,0x50);
        uVar5 = FUN_07fc4440();
        *(undefined4 *)(iVar1 + 0x70) = uVar5;
      }
    }
    uVar2 = FUN_07fc33e4(200,DAT_07fcadf4);
  }
  *(undefined1 *)(DAT_07fcaf54 + 9) = uVar2;
  return;
}

