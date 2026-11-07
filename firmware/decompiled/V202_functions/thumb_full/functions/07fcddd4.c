/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcddd4(undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined4 param_4,
                 undefined4 param_5,undefined1 param_6)

{
  undefined1 *puVar1;
  
  puVar1 = DAT_07fcddec;
  *DAT_07fcddec = param_1;
  puVar1[1] = param_2;
  puVar1[2] = param_3;
  *(undefined4 *)(puVar1 + 8) = param_5;
  *(undefined4 *)(puVar1 + 4) = param_4;
  puVar1[0xc] = param_6;
  return;
}

