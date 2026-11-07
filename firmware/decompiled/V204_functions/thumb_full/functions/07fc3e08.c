/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc3e08(uint param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *in_stack_00000000;
  
  uVar1 = 1;
  if ((DAT_07fc3e38 <= param_1) && (param_1 <= DAT_07fc3e38 + 4)) {
    iVar3 = (param_1 + 0xf2 & 0xff) * 4;
    pcVar2 = *(code **)(DAT_07fc3e3c + iVar3);
    if (pcVar2 != (code *)0x0) {
      *(undefined4 *)(DAT_07fc3e3c + iVar3) = 0;
      (*pcVar2)();
    }
    uVar1 = 0;
    *in_stack_00000000 = 0;
  }
  return uVar1;
}

