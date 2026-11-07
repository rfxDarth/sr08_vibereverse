/* Address-exact C reconstruction of V204 FUN_07fc1fd0. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc1fd0")))
uint16_t FUN_07fc1fd0(void)
{
    register volatile uint16_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #208]" : "=r" (state));
    state[0] |= 2;
    register uint32_t count asm("r1");
    __asm__ volatile ("ldr r1, [pc, #20]" : "=r" (count));
    do {
        uint32_t next;
        if (__builtin_add_overflow(count, 1u, &next))
            break;
        count = next;
    } while ((state[0] & 2) != 0);
    state[4] = 0;
    return state[5];
}
