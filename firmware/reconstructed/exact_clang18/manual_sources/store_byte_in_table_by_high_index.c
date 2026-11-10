/* Recovered behavior:
 * Store the input byte in the table slot selected by the high index byte.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_indexed_record_table.h"

__attribute__((used, section(".text.store_byte_in_table_by_high_index"))) uint32_t store_byte_in_table_by_high_index(
    uint32_t unused_abi_argument_1, const uint8_t *source_byte, uint32_t unused_abi_argument_3, uint32_t packed_value) {
    volatile struct sr08_indexed_record_block *table_base;
    /* Keep this 16-bit load: a C global reference grows beyond the 18-byte slot. */
    /* The literal is the named v204_indexed_record_table at 0x07fc64a4. */
    __asm__ volatile("ldr %[table_base], [pc, #92]" : [table_base] "=r"(table_base));
    /* The high byte selects a block; V204 stores at the first byte of the next block. */
    table_base[(packed_value >> 8) + 1].value = *source_byte;
    return 0;
}
