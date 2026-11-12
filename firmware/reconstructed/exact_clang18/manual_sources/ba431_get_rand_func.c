/* Recovered behavior:
 * Write 32 bytes from the DA14585 ROM random-number routine into the destination and return zero.
 */
#include <stdint.h>

extern uint32_t dia_rand(void);

__attribute__((used, section(".text.ba431_get_rand_func"))) uint32_t
ba431_get_rand_func(uint32_t unused_abi_context, uint8_t *destination) {
    uint32_t index = 0;
    for (;;) {
        /* Per-source flags retain this guard before every ROM call. */
        if (index == 32)
            goto done;
        destination[index] = (uint8_t)dia_rand();
        ++index;
    }

done:
    return 0;
}
