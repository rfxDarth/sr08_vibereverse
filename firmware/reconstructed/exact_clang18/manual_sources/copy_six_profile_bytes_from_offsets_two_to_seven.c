/* Recovered behavior:
 * Copy six bytes from profile offsets two through seven.
 */
#include <stdint.h>

__attribute__((used, section(".text.copy_six_profile_bytes_from_offsets_two_to_seven"))) void
copy_six_profile_bytes_from_offsets_two_to_seven(uint8_t *destination) {
    register uint32_t source_offset asm("r1");
    volatile uint8_t *profile_bytes;
    __asm__ volatile("movs %[offset], #7\n"
                     "ldr %[profile], [pc, #16]"
                     : [offset] "=r"(source_offset), [profile] "=r"(profile_bytes));
    /* Copy profile offsets 7 through 2; offset 1 is the loop terminator. */
    while (source_offset != 1) {
        *destination++ = profile_bytes[source_offset];
        __asm__ volatile("subs %0, %0, #1" : "+r"(source_offset) : : "cc");
    }
}
