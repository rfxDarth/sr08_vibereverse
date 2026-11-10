#ifndef SR08_EXCEPTION_ENTRIES_H
#define SR08_EXCEPTION_ENTRIES_H

enum { SR08_EXCEPTION_STACK_SELECT_MASK = 4 };

/* Select the exception's active stack from LR bit 2 and tail-call the
 * corresponding fixed dispatcher entry. Literal offsets are V204-specific. */
#define SR08_DEFINE_EXCEPTION_STACK_ENTRY(function_name, section_symbol, psp_literal_offset, msp_literal_offset)       \
    __attribute__((used, naked, section(".text." #section_symbol))) void function_name(void) {                         \
        __asm__ volatile("movs r0, #%c[stack_mask_imm]\n\t"                                                            \
                         "mov r1, lr\n\t"                                                                              \
                         "tst r0, r1\n\t"                                                                              \
                         "beq 1f\n\t"                                                                                  \
                         "mrs r0, psp\n\t"                                                                             \
                         "ldr r1, [pc, #%c[psp_literal_imm]]\n\t"                                                      \
                         "bx r1\n\t"                                                                                   \
                         "1: mrs r0, msp\n\t"                                                                          \
                         "ldr r1, [pc, #%c[msp_literal_imm]]\n\t"                                                      \
                         "bx r1"                                                                                       \
                         :                                                                                             \
                         : [stack_mask_imm] "i"(SR08_EXCEPTION_STACK_SELECT_MASK),                                     \
                           [psp_literal_imm] "i"(psp_literal_offset), [msp_literal_imm] "i"(msp_literal_offset));      \
    }

#endif
