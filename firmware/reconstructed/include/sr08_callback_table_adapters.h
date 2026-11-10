#ifndef SR08_CALLBACK_TABLE_ADAPTERS_H
#define SR08_CALLBACK_TABLE_ADAPTERS_H

#include <stdint.h>

enum {
    SR08_CALLBACK_TABLE_PROFILE_4 = 4,
    SR08_CALLBACK_TABLE_PROFILE_7 = 7,
    SR08_CALLBACK_TABLE_PROFILE_14 = 14,
};

extern int search_callback_table_invoke_matching_handler_at_40a0(uint32_t key, uint32_t first_context,
                                                                 uint32_t second_context, uint32_t third_context,
                                                                 uint8_t *result, const void *table,
                                                                 uint32_t entry_count);

/* These V204 entry points share one register/stack adapter; only the profile
 * immediate differs. The adapter moves the fifth caller argument (result) and
 * the callback table/profile into the helper's stack argument slots. It swaps
 * r2/r3 for the helper ABI. The helper swaps those context words when invoking
 * the selected handler, so the handler receives the caller's original order.
 * Keep this adapter in assembly: a direct C call compiled by Clang 18 uses a
 * separate {r4, lr} frame, stack allocation, and an in-section table literal
 * (36 bytes total in a trial object); the V204 wrapper is 28 bytes and loads
 * its table pointer from separately placed fixed-address data. */
#define SR08_DEFINE_CALLBACK_TABLE_PROFILE_ADAPTER(function_name, section_symbol, profile)                             \
    __attribute__((naked, used, section(".text." #section_symbol))) void function_name(                                \
        uint32_t key, uint32_t first_context, uint32_t second_context, uint32_t third_context, uint8_t *result) {      \
        __asm__ volatile("push {r0-r4, lr}\n\t"                                                                        \
                         "mov r4, r2\n\t"                                                                              \
                         "movs r2, #%c[profile_imm]\n\t"                                                               \
                         "str r2, [sp, #8]\n\t"                                                                        \
                         "ldr r2, [pc, #16]\n\t"                                                                       \
                         "str r2, [sp, #4]\n\t"                                                                        \
                         "ldr r2, [sp, #24]\n\t"                                                                       \
                         "str r2, [sp, #0]\n\t"                                                                        \
                         "mov r2, r3\n\t"                                                                              \
                         "mov r3, r4\n\t"                                                                              \
                         "bl search_callback_table_invoke_matching_handler_at_40a0\n\t"                                \
                         "add sp, #16\n\t"                                                                             \
                         "pop {r4, pc}"                                                                                \
                         :                                                                                             \
                         : [profile_imm] "i"(profile)                                                                  \
                         : "memory");                                                                                  \
    }

#endif
