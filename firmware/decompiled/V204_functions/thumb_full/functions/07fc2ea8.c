/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Compute the ring-buffer byte address and advance its head index. */
__attribute__((naked)) void FUN_07fc2ea8(uint *param_1)

{
  __asm__ volatile (
      "push {r4, r5, r7, lr}\n\t"
      ".inst.n 0x4604\n\t"
      "ldr r0, [r0, #0]\n\t"
      "ldr r2, [r4, #4]\n\t"
      "ldr r3, [r4, #8]\n\t"
      ".inst.n 0x43c5\n\t"
      ".inst.n 0x1952\n\t"
      ".inst.n 0x1e5b\n\t"
      "tst r3, r2\n\t"
      "beq 1f\n\t"
      "ldr r2, [r4, #12]\n\t"
      "ldr r3, [r4, #16]\n\t"
      ".inst.n 0x4350\n\t"
      ".inst.n 0x1818\n\t"
      "bl func_0x07f1e0ac\n\t"
      "ldr r0, [r4, #0]\n\t"
      ".inst.n 0x1c40\n\t"
      "ldr r1, [r4, #8]\n\t"
      ".inst.n 0x1e49\n\t"
      ".inst.n 0x4001\n\t"
      "str r1, [r4, #0]\n\t"
      "1: pop {r4, r5, r7, pc}\n\t");
}

