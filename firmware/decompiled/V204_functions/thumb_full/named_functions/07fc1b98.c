/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fc1b98(uint param_1,uint param_2,int param_3,int param_4)

{
  uint uVar1;
  int iVar2;
  
  iVar2 = 0;
  if (param_1 >> 0x10 == 0) {
    iVar2 = 0x10;
    param_1 = param_1 << 0x10;
    if (param_1 == 0) {
      if (param_2 == 0) {
        return 0;
      }
      iVar2 = 0x11;
    }
  }
  if (param_1 >> 0x18 == 0) {
    param_1 = param_1 << 8;
    iVar2 = iVar2 + 8;
  }
  if (param_1 >> 0x1c == 0) {
    param_1 = param_1 << 4;
    iVar2 = iVar2 + 4;
  }
  if (param_1 >> 0x1e == 0) {
    param_1 = param_1 << 2;
    iVar2 = iVar2 + 2;
  }
  if (-1 < (int)param_1) {
    param_1 = param_1 << 1;
    iVar2 = iVar2 + 1;
  }
  if (param_2 != 0) {
    param_1 = param_1 | (uint)(param_2 << iVar2 != 0) | param_2 >> (0x20U - iVar2 & 0xff);
  }
  iVar2 = (param_4 - iVar2) + 7;
  if (iVar2 < 0) {
    uVar1 = 0;
  }
  else {
    uVar1 = iVar2 * 0x800000 + (param_1 >> 8) + param_3;
    if (((int)(param_1 * 0x1000000) < 0) && (uVar1 = uVar1 + 1, (param_1 & 0x7f) == 0)) {
      return uVar1 & 0xfffffffe;
    }
  }
  return uVar1;
}

