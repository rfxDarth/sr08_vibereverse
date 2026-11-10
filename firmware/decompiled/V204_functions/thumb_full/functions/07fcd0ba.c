/* Zero destination words until the byte count has been consumed. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fcd0ba")))
void zero_word_buffer_by_byte_count(uint32_t unused_context,
                                    uint32_t *destination,
                                    uint32_t byte_count)
{
    register uint32_t zero asm("r0");
    __asm__ volatile ("movs r0, #0" : "=r" (zero));
    __asm__ goto volatile ("b %l[check_remaining]" : : : : check_remaining);

write_next_word:
    *destination++ = zero;
    byte_count -= sizeof(*destination);

check_remaining:
    if (byte_count != 0)
        goto write_next_word;
}

