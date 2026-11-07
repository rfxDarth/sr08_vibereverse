/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fc1df8(undefined4 param_1)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fc1e40;
  *DAT_07fc1e40 = *DAT_07fc1e40 | 4;
  *puVar1 = *puVar1 | 2;
  puVar1[-4] = puVar1[-4] | 0x40;
  *DAT_07fc1e44 = 1;
  *puVar1 = *puVar1 & 0xfffd;
  do {
  } while (-1 < (int)((uint)puVar1[2] << 0x1c));
  FUN_07fc5e54(0,param_1);
  puVar1[1] = (puVar1[1] & (ushort)DAT_07fc1e48) + (ushort)DAT_07fc1e48 + 4;
  return;
}

