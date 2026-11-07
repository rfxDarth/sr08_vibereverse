/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fc37d0(void)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  iVar2 = DAT_07fc3b54;
  iVar1 = DAT_07fc3aa4;
  uVar6 = *(uint *)(DAT_07fc3aa4 + 0x14);
  uVar5 = 0;
  if (((uVar6 != 0) && (*(char *)(DAT_07fc3b54 + 0xc) != '\x1e')) &&
     (iVar4 = FUN_07fcc494(), iVar4 == 0)) {
    if ((uVar6 & 0x7fff) >> 6 == 0) {
      if (*(char *)(iVar2 + 0x26) == '\0') {
        uVar5 = (uint)((uVar6 & 0x1d) != 0);
        if ((uVar6 & 0x22) != 0) {
          uVar5 = 2;
        }
      }
      else {
        uVar5 = 0;
        *(undefined4 *)(iVar1 + 0x14) = 0;
      }
    }
    else {
      uVar3 = 0x4000;
      do {
        uVar5 = uVar3;
        if (uVar5 < 0x40) break;
        uVar3 = uVar5 >> 1;
      } while ((uVar5 & uVar6) == 0);
    }
  }
  FUN_07fc3838(uVar5);
  return uVar5;
}

