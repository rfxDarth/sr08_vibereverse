/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc1f34(void)

{
  ushort *puVar1;
  ushort *puVar2;
  
  puVar2 = DAT_07fc1fa0;
  puVar1 = DAT_07fc1f9c;
  _DAT_50000000 = _DAT_50000000 & 0xffcc;
  if ((((short)_DAT_50000004 < 0) && ((int)((uint)*DAT_07fc1f9c << 0x1d) < 0)) &&
     ((*DAT_07fc1f9c & 1) != 0)) {
    *DAT_07fc1f9c = *DAT_07fc1f9c | 2;
    *puVar1 = *puVar1 & 0xfffe;
    return;
  }
  if (((int)((uint)_DAT_50000004 << 0x1b) < 0) && ((int)((uint)*DAT_07fc1fa0 << 0x18) < 0)) {
    DAT_07fc1fa0[2] = 1;
    *puVar2 = *puVar2 & 0xff7f;
    if (*(int *)(DAT_07fc20ec + 0x48) != 0) {
      FUN_07fc2e80();
    }
  }
  return;
}

