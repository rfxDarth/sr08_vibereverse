/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4d88(void)

{
  int iVar1;
  int iVar2;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 local_20;
  undefined1 auStack_1f [11];
  
  iVar2 = FUN_07fcaa48();
  if ((iVar2 == 1) && (*(char *)(DAT_07fc511c + 1) != '\x01')) {
    func_0x07f1e0de(auStack_1f,0xb);
    local_20 = 0;
    local_24 = DAT_07fc4e1c;
    local_28 = 0xf6;
    FUN_07fc2546(&local_28);
    func_0x07f1e0de((int)&local_28 + 1,0x13);
    local_28 = CONCAT31(local_28._1_3_,0xf6);
    FUN_07fc6dec((int)&local_28 + 1);
    FUN_07fc2546(&local_28);
    FUN_07fc508c();
    FUN_07fc5120();
    FUN_07fc4fa4();
    iVar1 = DAT_07fc4f18;
    if (*(char *)(DAT_07fc4f18 + 0x20) == '\x01') {
      FUN_07fc25ec(0xb,*(undefined1 *)(DAT_07fc4e20 + 0xb),*(undefined1 *)(DAT_07fc4f18 + 0x28));
    }
    *(undefined1 *)(iVar1 + 0x35) = 1;
    *DAT_07fc4e20 = 0;
    *(undefined2 *)(iVar1 + 0x36) = 0x600;
  }
  *(char *)(DAT_07fc511c + 1) = (char)iVar2;
  return;
}

