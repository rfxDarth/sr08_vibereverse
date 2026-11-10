/* Update selected state bits and publish whether the resulting word is empty. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_empty_status_record.h"

__attribute__((used, section(".text.update_state_bits_and_publish_empty_status"))) void
update_state_bits_and_publish_empty_status(uint32_t clear_mode, uint32_t state_mask) {
    uint32_t state;

    if (clear_mode) {
        __asm__ volatile("ldr %[state], [pc, #552]\n\t"
                         "ldr %[state], [%[state], #120]\n\t"
                         "bics %[state], %[mask]"
                         : [state] "=&r"(state)
                         : [mask] "r"(state_mask)
                         : "cc", "memory");
    } else {
        __asm__ volatile("ldr %[state], [pc, #544]\n\t"
                         "ldr %[state], [%[state], #120]\n\t"
                         "orrs %[state], %[mask]"
                         : [state] "=&r"(state)
                         : [mask] "r"(state_mask)
                         : "cc", "memory");
    }

    /* The state word is at offset 0x78 from the global state base. */
    volatile uint32_t *global_state;
    __asm__ volatile("ldr %[base], [pc, #540]\n\t"
                     "str %[state], [%[base], #120]"
                     : [base] "=&r"(global_state)
                     : [state] "r"(state)
                     : "memory");

    uint32_t state_word_is_empty = (state == 0);
    volatile struct sr08_empty_status_record *status;
    __asm__ volatile("ldr %[status], [pc, #12]" : [status] "=r"(status));
    status->primary_is_empty = (uint8_t)state_word_is_empty;
    __asm__ volatile("ldr %[status], [pc, #12]" : [status] "=r"(status));
    status->secondary_is_empty = (uint8_t)state_word_is_empty;
}
