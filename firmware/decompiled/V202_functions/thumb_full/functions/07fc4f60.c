/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4f60(uint param_1)

{
  undefined4 uVar1;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 local_22;
  undefined1 local_21;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 auStack_1e [14];
  
  if (*(byte *)(DAT_07fc511c + 2) != param_1) {
    *(char *)(DAT_07fc511c + 2) = (char)param_1;
    func_0x07f1e0de(auStack_1e,0xe);
    local_24 = 0x14;
    uVar1 = *(undefined4 *)(DAT_07fc5118 + 0x28);
    local_23 = (undefined1)uVar1;
    local_20 = (undefined1)((uint)uVar1 >> 0x18);
    local_21 = (undefined1)((uint)uVar1 >> 0x10);
    local_22 = (undefined1)((uint)uVar1 >> 8);
    local_1f = (char)param_1;
    FUN_07fc2550(&local_24);
  }
  return;
}

