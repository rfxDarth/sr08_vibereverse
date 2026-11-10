#ifndef SR08_SHARED_STATE_FIELDS_H
#define SR08_SHARED_STATE_FIELDS_H

#include <stddef.h>
#include <stdint.h>

struct sr08_shared_counter_state {
    uint32_t reserved_00;
    uint32_t counter_at_04;
};

struct sr08_shared_word_state {
    uint8_t reserved_00_to_1b[0x1c];
    uint32_t word_at_1c;
};

_Static_assert(offsetof(struct sr08_shared_counter_state, counter_at_04) == 4,
               "shared counter must remain at offset four");
_Static_assert(offsetof(struct sr08_shared_word_state, word_at_1c) == 0x1c, "shared word must remain at offset 0x1c");
_Static_assert(sizeof(struct sr08_shared_word_state) == 0x20, "shared word region must remain 0x20 bytes");

enum { SR08_SHARED_STATE_POINTER_LITERAL_DISPLACEMENT = 12 };

#define SR08_DEFINE_CLEAR_NONZERO_STATE_FIELD(function_name, state_type, field_name)                                   \
    __attribute__((used, section(".text." #function_name))) void function_name(void) {                                 \
        register state_type *state __asm__("r0");                                                                      \
        __asm__ volatile("ldr r0, [pc, #%c[state_pointer_literal_imm]]"                                                \
                         : "=r"(state)                                                                                 \
                         : [state_pointer_literal_imm] "i"(SR08_SHARED_STATE_POINTER_LITERAL_DISPLACEMENT));           \
        if (state->field_name != 0)                                                                                    \
            state->field_name = 0;                                                                                     \
    }

#endif
