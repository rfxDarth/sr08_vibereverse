/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc97f0(void)

{
  int iVar1;
  uint *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  puVar2 = DAT_07fc9854;
  iVar3 = FUN_07fc9858(DAT_07fc9854[2]);
  iVar5 = *(int *)(_DAT_07fc98cc + 0x50);
  *(undefined4 *)(_DAT_07fc98cc + 0x50) = 0;
  iVar1 = DAT_07fc9828;
  iVar5 = iVar5 + iVar3;
  uVar4 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar5,DAT_07fc9828);
  puVar2[5] = uVar4;
  iVar5 = uVar4 * DAT_07fc982c + iVar5;
  uVar4 = 0;
  if (iVar5 != 0) {
    uVar4 = iVar1 - iVar5 & 0xffff;
  }
  puVar2[4] = uVar4;
  *puVar2 = *puVar2 | 8;
  return;
}

