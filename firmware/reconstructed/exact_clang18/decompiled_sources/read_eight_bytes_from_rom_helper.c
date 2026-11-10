/* Fetch eight bytes from the ROM helper into the caller's output buffer. */
#include <stdint.h>
extern uint32_t dia_rand(void);

__attribute__((used, section(".text.read_eight_bytes_from_rom_helper"))) void
read_eight_bytes_from_rom_helper(uint8_t *output) {
    register int byte_index __asm__("r4");
    /* Initialize V204's r4 loop counter and preserve its saved-register set. */
    __asm__ volatile("movs %0, #0" : "=r"(byte_index) : : "r6");

    do {
        output[byte_index] = (uint8_t)dia_rand();
        /* Increment the r4 loop counter in place, as in V204. */
        __asm__ volatile("adds %0, %0, #1" : "+r"(byte_index) : : "cc");
    } while (byte_index < 8);
}
