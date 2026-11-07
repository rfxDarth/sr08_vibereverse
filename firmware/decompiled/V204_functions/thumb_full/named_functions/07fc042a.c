/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc042a(int param_1)

{
  undefined4 uVar1;
  bool bVar2;
  
  bVar2 = (*(ushort *)(DAT_07fc05f4 + 0x28) & 3) == 1;
  *(bool *)(param_1 + 5) = bVar2;
  uVar1 = DAT_07fc05f8;
  if (bVar2) {
    uVar1 = ROM_gapm_get_bdaddr /* 0x07f185ec */();
  }
  ROM___aeabi_memcpy /* 0x07f1e0ac */(param_1 + 6,uVar1,6);
  return;
}

