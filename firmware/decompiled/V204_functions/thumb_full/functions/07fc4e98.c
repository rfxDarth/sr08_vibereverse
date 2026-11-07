/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc4e98(void)

{
  int iVar1;
  int iVar2;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 local_20;
  undefined1 auStack_1f [11];
  
  iVar2 = FUN_07fcba7c();
  if ((iVar2 == 1) && (*(char *)(DAT_07fc522c + 1) != '\x01')) {
    func_0x07f1e0de(auStack_1f,0xb);
    local_20 = 0;
    local_24 = DAT_07fc4f2c;
    local_28 = 0xf6;
    FUN_07fc24c6(&local_28);
    func_0x07f1e0de((int)&local_28 + 1,0x13);
    local_28 = CONCAT31(local_28._1_3_,0xf6);
    FUN_07fc72f0((int)&local_28 + 1);
    FUN_07fc24c6(&local_28);
    FUN_07fc519c();
    FUN_07fc5230();
    FUN_07fc50b4();
    iVar1 = DAT_07fc5028;
    if (*(char *)(DAT_07fc5028 + 0x20) == '\x01') {
      FUN_07fc259c(0xb,*(undefined1 *)(DAT_07fc4f30 + 0xb),*(undefined1 *)(DAT_07fc5028 + 0x28));
    }
    *(undefined1 *)(iVar1 + 0x35) = 1;
    *DAT_07fc4f30 = 0;
    *(undefined2 *)(iVar1 + 0x36) = 0x600;
  }
  *(char *)(DAT_07fc522c + 1) = (char)iVar2;
  return;
}

