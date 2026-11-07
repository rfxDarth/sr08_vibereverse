/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcc7ac(undefined4 param_1)

{
  undefined1 *puVar1;
  char local_20 [4];
  undefined4 local_1c;
  undefined1 local_18;
  undefined2 local_16;
  
  func_0x07f1e0de(local_20,0x14);
  local_20[0] = *DAT_07fcc7fc;
  puVar1 = *(undefined1 **)(DAT_07fcc7fc + 4);
  local_1c = *(undefined4 *)(puVar1 + 8);
  if (local_20[0] == '\x02') {
    local_18 = *puVar1;
    local_16 = (undefined2)((*(uint *)(puVar1 + 0x418) & 0x3ffffff) >> 10);
  }
  else {
    local_18 = 0;
    local_16 = 0;
  }
  func_0x07f1e0ac(param_1,local_20,0x14);
  return;
}

