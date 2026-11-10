#ifndef SR08_SENSOR_TABLE_LOOKUPS_H
#define SR08_SENSOR_TABLE_LOOKUPS_H

#include <stdint.h>

/* Search exactly 32 records, each 24 bytes long. Compare the record's first
 * halfword with the low byte of `value`; on a match, merge the selected
 * halfword into value's upper 24 bits. If no record matches, the low byte is
 * 0xff. The entry points differ in the literal-pool displacement, key field
 * offset in the first record, and backward distance from the next record to
 * the matched halfword.
 *
 * Register roles in the byte-exact loop: r1 is the current record pointer,
 * r3 is the zero-extended key, r4 counts down from 33 before each comparison,
 * r5 holds the matched first halfword, and r2 holds the miss sentinel. The
 * loop performs 32 comparisons. On a miss, the low byte becomes 0xff; on a
 * hit, the selected halfword replaces the low 16 bits while the upper bits
 * from the input value are retained. */
#define SR08_DEFINE_SENSOR_TABLE_PAIR_LOOKUP(function_name, section_symbol, literal_pool_displacement,                 \
                                             first_record_key_offset, matched_halfword_backstep)                       \
    __attribute__((used, naked, section(".text." #section_symbol))) uint32_t function_name(uint32_t value) {           \
        __asm__ volatile(                                                                                              \
            "push {r4, r5, r7, lr}\n\t"                                                                                \
            "ldr r1, [pc, #%c[literal_pool_imm]]\n\t"                                                                  \
            "adds r1, #%c[key_offset_imm]\n\t"                                                                         \
            "uxtb r3, r0\n\t"                                                                                          \
            "movs r4, #33\n"                                                                                           \
            ".Lsensor_pair_lookup_compare:\n\t"                                                                        \
            "movs r2, #255\n\t"                                                                                        \
            "subs r4, r4, #1\n\t"                                                                                      \
            "beq .Lsensor_pair_lookup_miss\n\t"                                                                        \
            "ldrh r5, [r1, #0]\n\t"                                                                                    \
            "adds r1, #24\n\t"                                                                                         \
            "cmp r5, r3\n\t"                                                                                           \
            "bne .Lsensor_pair_lookup_compare\n\t"                                                                     \
            "subs r1, #%c[halfword_backstep_imm]\n\t"                                                                  \
            "ldrh r1, [r1, #0]\n\t"                                                                                    \
            "b .Lsensor_pair_lookup_done\n"                                                                            \
            ".Lsensor_pair_lookup_miss: mov r1, r2\n"                                                                  \
            ".Lsensor_pair_lookup_done: bics r0, r2\n\t"                                                               \
            "orrs r0, r1\n\t"                                                                                          \
            "pop {r4, r5, r7, pc}"                                                                                     \
            :                                                                                                          \
            : [literal_pool_imm] "i"(literal_pool_displacement), [key_offset_imm] "i"(first_record_key_offset),        \
              [halfword_backstep_imm] "i"(matched_halfword_backstep));                                                 \
    }

#endif
