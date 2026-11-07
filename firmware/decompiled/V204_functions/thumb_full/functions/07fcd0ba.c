/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Equivalent C loop: if (param_3 != 0) do { *param_2++ = 0; param_3 -= 4; }
 * while (param_3 != 0); */
__attribute__((naked)) void FUN_07fcd0ba(undefined4 param_1,
                                       undefined4 *param_2,int param_3)

{
  __asm__ volatile (
    ".inst.n 0x2000\n"  /* movs r0, #0 */
    ".inst.n 0xe001\n"  /* b check */
    ".inst.n 0xc101\n"  /* stmia r1!, {r0} */
    ".inst.n 0x1f12\n"  /* subs r2, #4 */
    ".inst.n 0x2a00\n"  /* cmp r2, #0 */
    ".inst.n 0xd1fb\n"  /* bne loop */
    ".inst.n 0x4770\n"  /* bx lr */
  );
}

