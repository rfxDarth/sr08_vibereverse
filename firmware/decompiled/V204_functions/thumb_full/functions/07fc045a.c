/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Equivalent C: for (int i = 0; i < 8; ++i)
 *   ((undefined1 *)param_1)[i] = func_0x07f02976(); */
__attribute__((naked)) void FUN_07fc045a(int param_1)

{
  __asm__ volatile (
    ".inst.n 0xb570\n"  /* push {r4, r5, r6, lr} */
    ".inst.n 0x4605\n"  /* mov r5, r0 */
    ".inst.n 0x2400\n"  /* movs r4, #0 */
    "bl func_0x07f02976\n"
    ".inst.n 0x5528\n"  /* strb r0, [r5, r4] */
    ".inst.n 0x1c64\n"  /* adds r4, #1 */
    ".inst.n 0x2c08\n"  /* cmp r4, #8 */
    ".inst.n 0xdbf9\n"  /* blt loop */
    ".inst.n 0xbd70\n"  /* pop {r4, r5, r6, pc} */
  );
}

