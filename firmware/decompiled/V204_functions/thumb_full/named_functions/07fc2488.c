/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2488(int param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = FUN_07fc8584(0x2a);
  uVar2 = FUN_07fc8584(0x2b);
  if (param_1 == 2) {
    if (((uVar1 & 1) != 0) && ((uVar2 & 0x40) == 0)) goto LAB_07fc24b6;
  }
  else if ((param_1 == 1) && (((uVar1 & 1) == 0 && ((int)(uVar2 << 0x19) < 0)))) {
LAB_07fc24b6:
    FUN_07fc3a38(0x8000000);
    FUN_07fc3a38(0x4000000);
    return;
  }
  return;
}

