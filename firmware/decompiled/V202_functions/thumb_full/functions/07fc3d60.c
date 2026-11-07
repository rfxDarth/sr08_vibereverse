/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc3d60(uint param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *in_stack_00000000;
  
  uVar1 = 1;
  if ((DAT_07fc3d90 <= param_1) && (param_1 <= DAT_07fc3d90 + 4)) {
    iVar3 = (param_1 + 0xf2 & 0xff) * 4;
    pcVar2 = *(code **)(DAT_07fc3d94 + iVar3);
    if (pcVar2 != (code *)0x0) {
      *(undefined4 *)(DAT_07fc3d94 + iVar3) = 0;
      (*pcVar2)();
    }
    uVar1 = 0;
    *in_stack_00000000 = 0;
  }
  return uVar1;
}

