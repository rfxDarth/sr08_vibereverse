/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcd8b4(undefined4 param_1)

{
  undefined1 *puVar1;
  char local_20 [4];
  undefined4 local_1c;
  undefined1 local_18;
  undefined2 local_16;
  
  ROM___aeabi_memclr /* 0x07f1e0de */(local_20,0x14);
  local_20[0] = *DAT_07fcd904;
  puVar1 = *(undefined1 **)(DAT_07fcd904 + 4);
  local_1c = *(undefined4 *)(puVar1 + 8);
  if (local_20[0] == '\x02') {
    local_18 = *puVar1;
    local_16 = (undefined2)((*(uint *)(puVar1 + 0x418) & 0x3ffffff) >> 10);
  }
  else {
    local_18 = 0;
    local_16 = 0;
  }
  ROM___aeabi_memcpy /* 0x07f1e0ac */(param_1,local_20,0x14);
  return;
}

