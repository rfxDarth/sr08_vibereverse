/* Integer square root using the restoring base-four algorithm. */
#include <stdint.h>

__attribute__((used, section(".text.integer_square_root_restoring"))) uint32_t
integer_square_root_restoring(uint32_t input_arg) {
    uint32_t input = input_arg;
    uint32_t bit = 1u << 30;
    uint32_t root = 0;
    uint32_t trial;
    uint32_t remainder;
    uint32_t next_input;

    while (bit > input)
        bit >>= 2;

root_loop:
    if (bit == 0)
        goto done;

    trial = bit + root;
    remainder = input - trial;

    /* Keep the original input when the trial exceeds the remainder. */
    next_input = input;
    if (input >= trial) {
        next_input = remainder;
        root += bit << 1;
    }

    root >>= 1;
    bit >>= 2;
    input = next_input;

    goto root_loop;

done:
    return root;
}
