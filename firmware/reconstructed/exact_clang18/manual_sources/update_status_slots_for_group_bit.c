/* Select the status slot for a group and bit, update its flag halfword, then
 * store the combined low/high status value. Group three aliases group four.
 */
#include <stdint.h>

__attribute__((used, section(".text.update_status_slots_for_group_bit"))) void
update_status_slots_for_group_bit(uint32_t group, uint32_t bit, uint16_t low, uint16_t high,
                                  uint32_t alternate_arg __attribute__((unused))) {
    register uint32_t group_offset __asm__("r0") = group;
    register uint32_t bit_index __asm__("r1") = bit;
    register uint32_t low_status __asm__("r2") = low;
    register uint32_t high_status __asm__("r3") = high;
    register uint32_t table_address __asm__("r4");
    register uint32_t alternate __asm__("r5");

    if (group_offset == 3)
        group_offset = 4;
    __asm__ volatile("lsls r0, r0, #5" : "+r"(group_offset) : : "cc");

    __asm__ volatile("ldr r4, [pc, #36]" : "=r"(table_address));
    alternate = alternate_arg;
    if (alternate != 0) {
        __asm__ volatile("movs r5, #1\n\t"
                         "lsls r5, %[bit]\n\t"
                         "strh r5, [%[group], %[table]]"
                         :
                         : [bit] "r"(bit_index), [group] "r"(group_offset), [table] "r"(table_address)
                         : "r5", "cc", "memory");
    } else {
        __asm__ volatile("adds r5, %[table], %[group]\n\t"
                         "movs r6, #1\n\t"
                         "lsls r6, %[bit]\n\t"
                         "strh r6, [r5, #2]"
                         :
                         : [group] "r"(group_offset), [table] "r"(table_address), [bit] "r"(bit_index)
                         : "r5", "r6", "cc", "memory");
    }

    __asm__ volatile("orrs %[high], %[low]\n\t"
                     "lsls %[bit], %[bit], #1\n\t"
                     "adds %[bit], %[table], %[bit]\n\t"
                     "adds %[group], %[bit], %[group]\n\t"
                     "strh %[high], [%[group], #4]"
                     : [group] "+r"(group_offset), [bit] "+r"(bit_index), [high] "+r"(high_status)
                     : [table] "r"(table_address), [low] "r"(low_status)
                     : "cc", "memory");
}
