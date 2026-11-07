/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

uint FUN_07fc9858(uint param_1)

{
  undefined8 uVar1;
  
  if (param_1 >> 0xf != 0) {
    uVar1 = func_0x07f1e00c(*(undefined4 *)(_DAT_07fc9894 + 0x10),0,param_1,0);
    return ((uint)uVar1 >> 10) + (int)((ulonglong)uVar1 >> 0x20) * 0x400000;
  }
  return *(int *)(_DAT_07fc9894 + 0x10) * param_1 >> 10;
}

