/* Recovered behavior:
 * Compute the indexed record address and call the ROM unsigned divider.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"

struct sr08_indexed_division_parameters {
    uint32_t reserved_00_to_07[2];
    uint32_t index_scale;
};

_Static_assert(offsetof(struct sr08_indexed_division_parameters, index_scale) == 8,
               "indexed division scale must remain at byte offset eight");

__attribute__((used, section(".text.call_divider_for_indexed_record"))) void
call_divider_for_indexed_record(uint32_t index) {
    volatile struct sr08_indexed_division_parameters *table;
    __asm__ volatile("ldr %[table], [pc, #16]" : [table] "=r"(table));
    uint32_t index_scale = table->index_scale;
    uint32_t scaled_index = index_scale * index;

    uint32_t indexed_numerator;
    __asm__ volatile("ldr %[numerator], [pc, #12]" : [numerator] "=r"(indexed_numerator));
    indexed_numerator = scaled_index + indexed_numerator;

    uint32_t divisor;
    __asm__ volatile("ldr %[divisor], [pc, #12]" : [divisor] "=r"(divisor));
    __aeabi_uidiv(indexed_numerator, divisor);
}
