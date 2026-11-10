/* Process one CRC byte with eight reflected polynomial rounds. */
#include <stdint.h>

enum {
    CRC32_ROUNDS_PER_BYTE = 8,
    CRC32_REFLECTED_BIT_SHIFT = 31,
    CRC32_POLYNOMIAL_LITERAL_DISPLACEMENT = 20,
};

__attribute__((used, section(".text.crc32_update_one_byte"))) uint32_t crc32_update_one_byte(uint32_t crc_state) {
    uint32_t rounds_remaining;
    uint32_t reflected_polynomial;
    __asm__ volatile("movs %[rounds_remaining], #%c[round_count]"
                     : [rounds_remaining] "=r"(rounds_remaining)
                     : [round_count] "i"(CRC32_ROUNDS_PER_BYTE));
    /* Load v204_crc32_reflected_polynomial from its fixed literal at 0x07fc5758. */
    __asm__ volatile(
        "ldr %[reflected_polynomial], [pc, #%c[polynomial_literal]]"
        : [reflected_polynomial] "=r"(reflected_polynomial)
        : [rounds_remaining] "r"(rounds_remaining), [polynomial_literal] "i"(CRC32_POLYNOMIAL_LITERAL_DISPLACEMENT));

    while (rounds_remaining != 0) {
        uint32_t shifted_crc_state;
        /* This compact sequence fits the fixed 24-byte slot before the literal. */
        /* Shift right, test the discarded low bit, and XOR the reflected polynomial when set. */
        __asm__ volatile(
            "lsrs %[shifted_crc_state], %[crc_state], #1\n\t"
            "lsls %[crc_state], %[crc_state], #%c[low_bit_shift]\n\t"
            "beq .Lskip_polynomial_xor\n\teors %[shifted_crc_state], %[reflected_polynomial]\n\t"
            ".Lskip_polynomial_xor: mov %[crc_state], %[shifted_crc_state]"
            : [crc_state] "+r"(crc_state), [shifted_crc_state] "=&r"(shifted_crc_state)
            : [reflected_polynomial] "r"(reflected_polynomial), [low_bit_shift] "i"(CRC32_REFLECTED_BIT_SHIFT)
            : "cc");
        /* Loop rotation is disabled for this source to retain the head test. */
        --rounds_remaining;
    }
    return crc_state;
}
