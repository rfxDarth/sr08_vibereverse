/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


longlong FUN_07fc0874(uint param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  uint uVar3;
  
  uVar3 = param_1;
  puVar2 = (undefined1 *)func_0x07f1bbb0(10,0,0,0x41,param_1,param_2,param_3);
  if (param_1 != 0) {
    if (param_1 == 1) {
      uVar1 = func_0x07f029a8(0,puVar2 + 1,0x20);
    }
    else {
      if (param_1 != 2) goto LAB_07fc08b0;
      uVar1 = func_0x07f02908(param_2,param_3,puVar2 + 1);
    }
    *puVar2 = uVar1;
  }
LAB_07fc08b0:
  func_0x07f1bbe2(puVar2);
  return (ulonglong)uVar3 << 0x20;
}

