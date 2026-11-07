/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5070(uint param_1)

{
  undefined4 uVar1;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 local_22;
  undefined1 local_21;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 auStack_1e [14];
  
  if (*(byte *)(DAT_07fc522c + 2) != param_1) {
    *(char *)(DAT_07fc522c + 2) = (char)param_1;
    ROM___aeabi_memclr /* 0x07f1e0de */(auStack_1e,0xe);
    local_24 = 0x14;
    uVar1 = *DAT_07fc5228;
    local_23 = (undefined1)uVar1;
    local_20 = (undefined1)((uint)uVar1 >> 0x18);
    local_21 = (undefined1)((uint)uVar1 >> 0x10);
    local_22 = (undefined1)((uint)uVar1 >> 8);
    local_1f = (char)param_1;
    FUN_07fc24d0(&local_24);
  }
  return;
}

