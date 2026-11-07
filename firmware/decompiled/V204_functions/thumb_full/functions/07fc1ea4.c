/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc1ea4(void)

{
  ushort *puVar1;
  ushort uVar2;
  ushort uVar3;
  
  puVar1 = DAT_07fc1ee4;
LAB_07fc1ea8:
  do {
    while( true ) {
      uVar2 = puVar1[2] & 0xf;
      if (uVar2 != 2) break;
      *puVar1 = *puVar1 & 0xfffd;
      uVar2 = *puVar1;
      uVar3 = 0x80;
LAB_07fc1edc:
      *puVar1 = uVar2 & ~uVar3;
    }
    if (uVar2 == 4) {
      FUN_07fcc528();
      goto LAB_07fc1ea8;
    }
    if (uVar2 == 0xc) {
      FUN_07fcc528();
      uVar2 = *puVar1;
      uVar3 = 1;
      goto LAB_07fc1edc;
    }
    if (uVar2 == 1) {
      return;
    }
  } while( true );
}

