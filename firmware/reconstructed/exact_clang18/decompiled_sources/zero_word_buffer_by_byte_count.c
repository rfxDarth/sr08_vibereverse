/* Zero complete destination words until byte_count reaches zero. The startup
 * records pass multiples of four; this routine has no partial-word tail. */
#include <stdint.h>

__attribute__((used, section(".text.zero_word_buffer_by_byte_count"))) void
zero_word_buffer_by_byte_count(uint32_t unused_callback_argument, uint32_t *destination, uint32_t byte_count) {
    uint32_t zero;
    /* Initialize zero before the branch-around-store check, as V204 does. */
    __asm__ volatile("movs %0, #0" : "=r"(zero));
    /* Preserve the initial branch around the store so a zero byte count writes nothing.
     * A pure C if/do-while form fits the 14-byte slot but emits its cmp/beq
     * before the loop body; V204 branches unconditionally to the bottom test. */
    __asm__ goto volatile("b %l[check_remaining]" : : : : check_remaining);

write_next_word:
    *destination++ = zero;
    byte_count -= sizeof(*destination);

check_remaining:
    if (byte_count != 0)
        goto write_next_word;
}
