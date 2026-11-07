/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fc87f4(void)

{
  char cVar1;
  uint in_r3;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint local_18;
  
  cVar1 = '\0';
  local_18 = in_r3 & 0xffffff00;
  uVar4 = *(int *)(DAT_07fc8834 + 0x30) - 1U &
          *(int *)(DAT_07fc8834 + 0x28) - *(int *)(DAT_07fc8834 + 0x2c);
  if (6 < uVar4) {
    uVar3 = 0;
    iVar2 = DAT_07fc8834 + 0x28;
    do {
      if (uVar4 == uVar3) {
        cVar1 = '\x01';
        goto LAB_07fc8830;
      }
      FUN_07fc2fa4(iVar2,uVar3,&local_18);
      uVar3 = uVar3 + 1;
    } while ((char)local_18 == '\x01');
    cVar1 = -1;
  }
LAB_07fc8830:
  return (int)cVar1;
}

