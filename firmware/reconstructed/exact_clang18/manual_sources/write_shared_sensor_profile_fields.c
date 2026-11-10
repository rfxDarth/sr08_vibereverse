/* Recovered behavior:
 * Store the caller's three leading bytes, two 32-bit profile values, and final byte at offsets 0,
 * 1, 2, 4, 8, and 12 of the shared sensor-profile record.
 */
#include <stddef.h>
#include <stdint.h>

typedef struct {
    volatile uint8_t profile_byte_0;
    volatile uint8_t profile_byte_1;
    volatile uint8_t profile_byte_2;
    volatile uint8_t reserved_03;
    volatile uint32_t profile_word_04;
    volatile uint32_t profile_word_08;
    volatile uint8_t profile_byte_0c;
} shared_sensor_profile_t;

_Static_assert(offsetof(shared_sensor_profile_t, profile_byte_0) == 0, "profile byte zero offset must remain zero");
_Static_assert(offsetof(shared_sensor_profile_t, profile_word_04) == 4, "profile word offset must remain four");
_Static_assert(offsetof(shared_sensor_profile_t, profile_word_08) == 8, "profile word offset must remain eight");
_Static_assert(offsetof(shared_sensor_profile_t, profile_byte_0c) == 12, "profile byte offset must remain twelve");
_Static_assert(sizeof(shared_sensor_profile_t) == 16, "shared sensor profile must remain sixteen bytes");

__attribute__((used, section(".text.write_shared_sensor_profile_fields"))) void
write_shared_sensor_profile_fields(uint8_t profile_byte_0, uint8_t profile_byte_1, uint8_t profile_byte_2,
                                   uint32_t profile_word_04, uint32_t profile_word_08, uint8_t profile_byte_0c) {
    volatile shared_sensor_profile_t *profile;
    __asm__ volatile("ldr %[profile], [pc, #20]" : [profile] "=r"(profile));
    register uint32_t stacked_profile_word_08 asm("r5");
    register uint32_t stacked_profile_byte_0c asm("r6");
    /* After saving r4-r6/lr, the fifth and sixth ABI arguments are at SP+16/+20. */
    __asm__ volatile("ldr r6, [sp, #20]\n"
                     "ldr r5, [sp, #16]"
                     : "=r"(stacked_profile_byte_0c), "=r"(stacked_profile_word_08));
    profile->profile_byte_0 = profile_byte_0;
    profile->profile_byte_1 = profile_byte_1;
    profile->profile_byte_2 = profile_byte_2;
    profile->profile_word_08 = stacked_profile_word_08;
    profile->profile_word_04 = profile_word_04;
    profile->profile_byte_0c = (uint8_t)stacked_profile_byte_0c;
}
