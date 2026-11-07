/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Advance a bounded ring queue and copy one indexed record. */
__attribute__((naked)) void FUN_07fc2fa4(int *param_1,uint param_2,undefined4 param_3)

{
  __asm__ volatile (
      "push {r4, r5, r6, lr}\n\t"
      "ldr r4, [r0, #0]\n\t"
      "ldr r3, [r0, #4]\n\t"
      "ldr r5, [r0, #8]\n\t"
      ".inst.n 0x1ae6\n\t"
      ".inst.n 0x1e6c\n\t"
      ".inst.n 0x4026\n\t"
      "cmp r6, r1\n\t"
      "bls 1f\n\t"
      ".inst.n 0x1859\n\t"
      ".inst.n 0x400c\n\t"
      "ldr r3, [r0, #12]\n\t"
      "ldr r0, [r0, #16]\n\t"
      ".inst.n 0x435c\n\t"
      ".inst.n 0x1901\n\t"
      ".inst.n 0x4610\n\t"
      ".inst.n 0x461a\n\t"
      "bl func_0x07f1e0ac\n\t"
      "1: pop {r4, r5, r6, pc}\n\t");
}

