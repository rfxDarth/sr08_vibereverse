/* Serialize the status byte, two shared values, and the 32-bit input. */
#include <stdint.h>

struct sr08_status_snapshot {
    volatile uint8_t status_code;
    volatile uint8_t shared_low;
    volatile uint8_t shared_high_low;
    volatile uint8_t shared_high_high;
    volatile uint8_t input[4];
};

_Static_assert(sizeof(struct sr08_status_snapshot) == 8, "status snapshot must remain eight bytes");

static inline void store_word_as_little_endian_bytes(volatile uint8_t destination[4], uint32_t value) {
    destination[0] = (uint8_t)value;
    destination[1] = (uint8_t)(value >> 8);
    destination[2] = (uint8_t)(value >> 16);
    destination[3] = (uint8_t)(value >> 24);
}

__attribute__((used, section(".text.serialize_status_and_global_values_with_word"))) void
serialize_status_and_global_values_with_word(uint32_t input, uint32_t status) {
    uint32_t status_code = status == 1 ? 59 : ~84u;
    uint32_t shared_value_a;
    uint32_t shared_value_b;
    volatile struct sr08_status_snapshot *output;

    /* These literals identify the two shared fields and output buffer. */
    __asm__ volatile("ldr %[value_a], [pc, #36]\n\t"
                     "ldr %[value_a], [%[value_a], #68]\n\t"
                     "ldr %[value_b], [pc, #36]\n\t"
                     "ldr %[value_b], [%[value_b], #44]\n\t"
                     "ldr %[output], [pc, #36]"
                     : [value_a] "=&r"(shared_value_a), [value_b] "=&r"(shared_value_b), [output] "=r"(output));

    output->status_code = (uint8_t)status_code;
    output->shared_low = (uint8_t)shared_value_b;
    output->shared_high_low = (uint8_t)shared_value_a;
    output->shared_high_high = (uint8_t)(shared_value_a >> 8);
    store_word_as_little_endian_bytes(output->input, input);
}
