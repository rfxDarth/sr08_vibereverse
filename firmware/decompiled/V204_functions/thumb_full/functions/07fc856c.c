/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */

/* Equivalent C behavior: FUN_07fc85a0((byte)(param_1*3-66),
 *                                       (byte)(param_1*3-67)). */

__attribute__((naked)) void FUN_07fc856c(char param_1)

{
  __asm__ volatile (
    "push {r7, lr}\n"
    ".inst.n 0x2103\n"  /* movs r1, #3 */
    ".inst.n 0x4341\n"  /* muls r1, r0, r1 */
    ".inst.n 0x4608\n"  /* mov r0, r1 */
    ".inst.n 0x3842\n"  /* subs r0, #66 */
    ".inst.n 0xb2c0\n"  /* uxtb r0, r0 */
    ".inst.n 0x3943\n"  /* subs r1, #67 */
    ".inst.n 0xb2c9\n"  /* uxtb r1, r1 */
    "bl FUN_07fc85a0\n"
    "pop {r7, pc}\n"
  );
}

