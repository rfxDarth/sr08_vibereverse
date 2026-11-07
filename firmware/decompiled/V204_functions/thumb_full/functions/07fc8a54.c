/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Scan paired bytes until both lanes are 0xff, with a 254-iteration bound. */
__attribute__((naked)) void FUN_07fc8a54(byte *param_1)

{
  __asm__ volatile (
      "push {r4, r5, r7, lr}\n\t"
      ".inst.n 0x4604\n\t"
      "movs r5, #254\n\t"
      "1: cmp r5, #0\n\t"
      "beq 2f\n\t"
      "ldrb r1, [r4, #1]\n\t"
      "ldrb r0, [r4, #0]\n\t"
      ".inst.n 0x4602\n\t"
      ".inst.n 0x400a\n\t"
      "cmp r2, #255\n\t"
      "beq 2f\n\t"
      "bl FUN_07fc8ad8\n\t"
      ".inst.n 0x1e6d\n\t"
      ".inst.n 0x1ca4\n\t"
      "b 1b\n\t"
      "2: pop {r4, r5, r7, pc}\n\t");
}

