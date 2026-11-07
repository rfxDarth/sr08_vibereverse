/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Ring-buffer advance: if capacity-1 & (head-tail) is nonzero, advance head modulo capacity. */
__attribute__((naked)) void FUN_07fc2f8c(int *param_1)

{
  __asm__ volatile (
      "push {r4, lr}\n\t"
      "ldr r2, [r0, #0]\n\t"
      "ldr r1, [r0, #4]\n\t"
      "ldr r3, [r0, #8]\n\t"
      ".inst.n 0x1a54\n\t"
      ".inst.n 0x1e5a\n\t"
      "tst r2, r4\n\t"
      "beq 1f\n\t"
      ".inst.n 0x1c49\n\t"
      ".inst.n 0x400a\n\t"
      "str r2, [r0, #4]\n\t"
      "1: pop {r4, pc}\n\t");
}

