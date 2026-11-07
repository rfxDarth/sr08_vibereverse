/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc077e(int param_1,int param_2,int param_3)

{
  ushort uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 auStack_b8 [8];
  undefined4 auStack_98 [8];
  uint auStack_78 [8];
  uint auStack_58 [8];
  uint auStack_38 [9];
  
  uVar2 = 0;
  do {
    iVar6 = uVar2 * 4;
    iVar4 = iVar6 + param_2;
    uVar1 = *(ushort *)(iVar4 + 2);
    iVar5 = 7 - uVar2;
    uVar2 = uVar2 + 1;
    auStack_38[iVar5] =
         (uVar1 & 0xff) << 8 | (uint)(uVar1 >> 8) | (uint)*(byte *)(iVar4 + 1) << 0x10 |
         (uint)*(byte *)(param_2 + iVar6) << 0x18;
  } while (uVar2 < 8);
  uVar2 = 0;
  do {
    iVar4 = uVar2 * 4 + param_1;
    auStack_78[7 - uVar2] =
         (*(ushort *)(iVar4 + 2) & 0xff) << 8 | (uint)(*(ushort *)(iVar4 + 2) >> 8) |
         (uint)*(byte *)(iVar4 + 1) << 0x10 | (uint)*(byte *)(param_1 + uVar2 * 4) << 0x18;
    iVar5 = 0xf - uVar2;
    uVar2 = uVar2 + 1;
    auStack_78[iVar5] =
         (*(ushort *)(iVar4 + 0x22) & 0xff) << 8 | (uint)(*(ushort *)(iVar4 + 0x22) >> 8) |
         (uint)*(byte *)(iVar4 + 0x21) << 0x10 | (uint)*(byte *)(iVar4 + 0x20) << 0x18;
  } while (uVar2 < 8);
  uVar3 = ROM_uECC_secp256r1 /* 0x07f1cdd4 */();
  iVar4 = ROM_uECC_valid_public_key /* 0x07f1d6ce */(param_1,uVar3);
  if (iVar4 == 0) {
    uVar3 = 1;
  }
  else {
    uVar3 = ROM_uECC_secp256r1 /* 0x07f1cdd4 */();
    ROM_uECC_point_mult /* 0x07f1dee4 */(auStack_b8,auStack_78,auStack_38,uVar3);
    uVar2 = 0;
    do {
      iVar4 = 7 - uVar2;
      iVar5 = uVar2 * 4 + param_3;
      *(undefined1 *)(iVar5 + 3) = *(undefined1 *)(auStack_b8 + iVar4);
      *(char *)(iVar5 + 2) = (char)((ushort)*(undefined2 *)(auStack_b8 + iVar4) >> 8);
      *(char *)(iVar5 + 1) = (char)((uint)auStack_b8[iVar4] >> 0x10);
      *(char *)(param_3 + uVar2 * 4) = (char)((uint)auStack_b8[iVar4] >> 0x18);
      iVar4 = 0xf - uVar2;
      *(undefined1 *)(iVar5 + 0x23) = *(undefined1 *)(auStack_b8 + iVar4);
      uVar2 = uVar2 + 1;
      *(char *)(iVar5 + 0x22) = (char)((ushort)*(undefined2 *)(auStack_b8 + iVar4) >> 8);
      *(char *)(iVar5 + 0x21) = (char)((uint)auStack_b8[iVar4] >> 0x10);
      *(char *)(iVar5 + 0x20) = (char)((uint)auStack_b8[iVar4] >> 0x18);
    } while (uVar2 < 8);
    uVar3 = 0;
  }
  return uVar3;
}

