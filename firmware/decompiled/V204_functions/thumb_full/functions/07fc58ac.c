/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc58ac(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 *puVar3;
  uint uVar4;
  
  uVar2 = DAT_07fc5c40;
  iVar1 = *(int *)(param_1 + 0x10);
  puVar3 = DAT_07fc5c38;
  for (uVar4 = 1; puVar3 = puVar3 + 5, uVar4 != 6; uVar4 = uVar4 + 1) {
    if (((0x2aU >> (uVar4 & 0xff) & 1) != 0) && (*(ushort *)*puVar3 == uVar2)) {
      FUN_07fc5c44(param_2,uVar4 & 0xff,0);
    }
  }
  uVar2 = (uint)*(short *)(iVar1 + 2);
  func_0x07f1beb6(param_2 << 8 & uVar2 >> 0xf | DAT_07fc5a68 & uVar2,0);
  return;
}

