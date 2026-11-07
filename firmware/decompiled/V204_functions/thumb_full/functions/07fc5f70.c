/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Equivalent C: FUN_07fc3a38(0x11u << 17). */
__attribute__((naked)) void FUN_07fc5f70(void)

{
  __asm__ volatile (
    "push {r7, lr}\n"
    "movs r0, #17\n"
    ".inst.n 0x0440\n"  /* lsls r0, r0, #17 */
    "bl FUN_07fc3a38\n"
    "pop {r7, pc}\n"
  );
}

