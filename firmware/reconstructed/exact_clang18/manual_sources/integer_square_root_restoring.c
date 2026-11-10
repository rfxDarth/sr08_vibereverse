/* Compute floor(sqrt(input)) with the restoring base-four digit algorithm.
 * Keep the root, bit, trial, and remainder in V204's working registers. C
 * expresses the scale and update loops; a few inline instructions preserve
 * operand order and register allocation so Clang 18
 * emits the exact 50-byte V204 section.
 */
#include <stdint.h>

__attribute__((used, section(".text.integer_square_root_restoring"))) uint32_t
integer_square_root_restoring(uint32_t input_arg) {
    register uint32_t input asm("r1") = input_arg;
    register uint32_t bit asm("r2") = 1u << 30;
    register uint32_t root asm("r0") = 0;
    register uint32_t trial asm("r4");
    register uint32_t remainder asm("r5");
    uint32_t next_input;

    while (bit > input)
        bit >>= 2;

root_loop:
    if (bit == 0)
        goto done;

    /* Preserve V204's adds r4, r2, r0 encoding for trial = bit + root. */
    __asm__ volatile("adds %0, %1, %2" : "=r"(trial) : "r"(bit), "r"(root) : "cc");
    remainder = input - trial;

    /* Keep the result in r5 without clobbering SUBS flags used by the update condition. */
    __asm__ volatile("" : "+r"(remainder));
    /* Keep the original input when the trial exceeds the remainder. */
    next_input = input;
    if (input >= trial) {
        next_input = remainder;
        root += bit << 1;
    }

    root >>= 1;
    bit >>= 2;
    input = next_input;

    /* Per-source flags retain this head-tested loop and backward branch. */
    goto root_loop;

done:
    return root;
}
