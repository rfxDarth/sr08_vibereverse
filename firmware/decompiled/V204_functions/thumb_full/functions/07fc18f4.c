/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Return the byte length before NUL. */
__attribute__((naked)) int FUN_07fc18f4(char *param_1)

{
  __asm__ volatile (
      ".inst.n 0x1c42\n\t"
      "1: ldrb r1, [r0, #0]\n\t"
      ".inst.n 0x1c40\n\t"
      "cmp r1, #0\n\t"
      "bne 1b\n\t"
      ".inst.n 0x1a80\n\t"
      "bx lr\n\t");
}

