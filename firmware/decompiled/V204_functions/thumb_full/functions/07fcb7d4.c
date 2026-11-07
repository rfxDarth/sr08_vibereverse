/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb7d4(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined8 uVar6;
  
  if (*DAT_07fcbbbc == '\x01') {
    do {
    } while ((int)((uint)*DAT_07fcb81c << 0x1d) < 0);
    uVar1 = DAT_07fcb81c[3];
    uVar2 = DAT_07fcb81c[2];
    *DAT_07fcbbbc = '\0';
    iVar5 = (uint)uVar1 * 0x10000 + (uint)uVar2;
    uVar6 = FUN_07fc1928(0xd4000000,0x30,iVar5);
    iVar3 = DAT_07fcb820;
    *(undefined8 *)(DAT_07fcb820 + 0x50) = uVar6;
    uVar4 = func_0x07f1dfb8(DAT_07fcb824,iVar5);
    *(undefined4 *)(iVar3 + 8) = uVar4;
    uVar4 = func_0x07f1dfb8(iVar5 * 0x40,0x14);
    *(undefined4 *)(iVar3 + 0x10) = uVar4;
  }
  return;
}

