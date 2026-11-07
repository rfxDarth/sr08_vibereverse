/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcdda4(undefined2 param_1,undefined4 param_2,undefined4 param_3,undefined2 param_4,
                 undefined2 param_5,undefined2 param_6,undefined2 param_7,undefined2 param_8,
                 undefined1 param_9,undefined1 param_10,undefined1 param_11)

{
  undefined2 *puVar1;
  
  puVar1 = DAT_07fcddd0;
  *DAT_07fcddd0 = param_1;
  *(undefined4 *)(puVar1 + 4) = param_3;
  *(undefined4 *)(puVar1 + 2) = param_2;
  puVar1[6] = param_4;
  puVar1[7] = param_5;
  puVar1[8] = param_6;
  puVar1[9] = param_7;
  puVar1[10] = param_8;
  *(undefined1 *)(puVar1 + 0xb) = param_9;
  *(undefined1 *)((int)puVar1 + 0x17) = param_10;
  *(undefined1 *)(puVar1 + 0xc) = param_11;
  return;
}

