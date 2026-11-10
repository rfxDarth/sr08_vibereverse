#ifndef SR08_COMPUTED_DISPATCH_H
#define SR08_COMPUTED_DISPATCH_H

enum {
    SR08_SIX_WAY_DISPATCH_MAX_INDEX = 5,
    SR08_JUMP_TABLE_ENTRY_WORD_SHIFT = 2,
};

/* Six-way Thumb jump-table prefix. The range-check branch targets a shared
 * default return block in the separately linked case body. The ADR target is
 * four bytes beyond ADR's aligned PC, which is the jump-table start. */
#define SR08_DEFINE_SIX_WAY_THUMB_DISPATCH(function_name, section_symbol, default_target)                              \
    __attribute__((used, naked, section(".text." #section_symbol))) void function_name(void) {                         \
        __asm__ volatile(                                                                                              \
            "push {r4, r5, r7, lr}\n\t"                                                                                \
            "cmp r0, #%c[max_index_imm]\n\t"                                                                           \
            "bhi.n " #default_target "\n\t"                                                                            \
            "lsls r0, r0, #%c[entry_shift_imm]\n\t"                                                                    \
            ".set .Lsr08_dispatch_table, .+8\n\t"                                                                      \
            "adr r1, .Lsr08_dispatch_table\n\t"                                                                        \
            "ldr r0, [r1, r0]\n\t"                                                                                     \
            "mov pc, r0"                                                                                               \
            :                                                                                                          \
            : [max_index_imm] "i"(SR08_SIX_WAY_DISPATCH_MAX_INDEX), [entry_shift_imm] "i"(                             \
                                                                        SR08_JUMP_TABLE_ENTRY_WORD_SHIFT));            \
    }

#endif
