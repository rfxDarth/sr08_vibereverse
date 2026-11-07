/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc3008(int *param_1,uint param_2,undefined4 param_3)

{
  if (param_2 < (*param_1 - param_1[1] & param_1[2] - 1U)) {
    func_0x07f1e0ac(param_3,param_1[4] + param_1[3] * (param_1[2] - 1U & param_1[1] + param_2),
                    param_1[3]);
  }
  return;
}

