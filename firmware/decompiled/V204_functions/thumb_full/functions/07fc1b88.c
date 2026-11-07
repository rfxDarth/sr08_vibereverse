/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* Equivalent behavior: if ((int)status > 0) { ++value; if ((status << 1) == 0)
 * value = (value >> 1) << 1; } return value. */
__attribute__((naked)) uint FUN_07fc1b88(uint param_1,uint param_2)

{
  __asm__ volatile (
    ".inst.n 0x2900\n"  /* cmp r1, #0 */
    ".inst.n 0xda04\n"  /* ble return */
    ".inst.n 0x1c40\n"  /* adds r0, #1 */
    ".inst.n 0x0049\n"  /* lsls r1, r1, #1 */
    ".inst.n 0xd101\n"  /* bne return */
    ".inst.n 0x0840\n"  /* lsrs r0, r0, #1 */
    ".inst.n 0x0040\n"  /* lsls r0, r0, #1 */
    ".inst.n 0x4770\n"  /* bx lr */
  );
}

