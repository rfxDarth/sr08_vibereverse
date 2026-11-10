/* Recovered behavior:
 * Use the key 0xfc attribute entry's value offset plus six to set a four-byte value from the
 * caller's buffer. On failure, set the MMIO timeout/status values and spin forever; otherwise
 * return zero.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_attmdb.h"
#include "firmware/reconstructed/include/sr08_record_lookup.h"

struct sr08_attribute_table_entry {
    uint8_t reserved_prefix[6];
    uint16_t value_offset;
};

_Static_assert(offsetof(struct sr08_attribute_table_entry, value_offset) == 6,
               "attribute value offset must remain at byte six");

enum { ATTRIBUTE_VALUE_PREFIX_SIZE = 6 };

__attribute__((used, section(".text.set_attribute_value_and_halt_on_failure"))) uint32_t
set_attribute_value_and_halt_on_failure(uint32_t unused_callback_argument __attribute__((unused)),
                                        const void *value_buffer) {
    struct sr08_attribute_table_entry *attribute_record = find_keyed_record_value(SR08_ATTRIBUTE_RECORD_LOOKUP_KEY);
    uint16_t attribute_handle = (uint16_t)(attribute_record->value_offset + ATTRIBUTE_VALUE_PREFIX_SIZE);
    int32_t write_status = attmdb_att_set_value(attribute_handle, 4, 0, value_buffer);

    if (write_status != 0) {
        volatile uint16_t *timeout_register;
        __asm__ volatile("ldr %[timeout_register], [pc, #852]"
                         : [timeout_register] "=r"(timeout_register)
                         :
                         : "memory");
        *timeout_register = 200;
        __asm__ volatile("ldr r0, [pc, #848]\n"
                         "movs r1, #8\n"
                         "strh r1, [r0, #0]"
                         :
                         :
                         : "r0", "r1", "memory");
        for (;;) {
        }
    }
    return 0;
}
