/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fcc800(void)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  
  puVar1 = DAT_07fcc880;
  *DAT_07fcc880 = 1;
  puVar2 = DAT_07fcc884;
  *(undefined1 **)(puVar1 + 4) = DAT_07fcc884;
  *puVar2 = 0;
  puVar2[1] = 0x48;
  puVar2[2] = 0x48;
  *(undefined2 *)(puVar2 + 4) = 0;
  *(undefined4 *)(puVar2 + 8) = 0;
  *(undefined4 *)(puVar2 + 0x20) = 0;
  *(undefined4 *)(puVar2 + 0x24) = 0;
  *(undefined4 *)(puVar2 + 0x14) = 0;
  *(undefined4 *)(puVar2 + 0x18) = 0;
  *(undefined4 *)(puVar2 + 0x1c) = 0;
  *(undefined4 *)(puVar2 + 0x28) = 0;
  *(undefined4 *)(puVar2 + 0x2c) = 0;
  *(undefined4 *)(puVar2 + 0x30) = 0;
  *(undefined4 *)(puVar2 + 0x40) = 0;
  *(undefined4 *)(puVar2 + 0x3c) = 0;
  *(undefined4 *)(puVar2 + 0x38) = 0;
  *(undefined4 *)(puVar2 + 0x34) = 0;
  *(undefined4 *)(puVar2 + 0x44) = 0;
  *(undefined4 *)(puVar2 + 0x4c) = 0;
  *(undefined4 *)(puVar2 + 0x48) = 0;
  puVar2[0x50] = 0;
  uVar4 = 0;
  do {
    *(undefined2 *)(puVar2 + uVar4 * 2 + 0x52) = 0;
    *(undefined2 *)(puVar2 + uVar4 * 2 + 0xa2) = 0;
    *(undefined4 *)(puVar2 + uVar4 * 8 + 0xf4) = 0;
    uVar3 = uVar4 + 1 & 0xffff;
    *(undefined4 *)(puVar2 + uVar4 * 8 + 0xf8) = 0;
    uVar4 = uVar3;
  } while (uVar3 < 0x28);
  uVar4 = 0;
  do {
    iVar5 = uVar4 * 4;
    uVar4 = uVar4 + 1 & 0xffff;
    *(undefined4 *)(puVar2 + iVar5 + 0x234) = 0;
  } while (uVar4 < 0x78);
  puVar2[0x414] = 1;
  return 1;
}

