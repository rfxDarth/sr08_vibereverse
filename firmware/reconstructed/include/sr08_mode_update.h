#ifndef SR08_MODE_UPDATE_H
#define SR08_MODE_UPDATE_H

/*
 * These adjacent firmware entry points execute the same Thumb sequence but
 * load state through different literal-pool locations. Keep the instruction
 * body shared and pass each PC-relative displacement as an immediate.
 */
#define SR08_DEFINE_MODE_UPDATE(function_name, mode_byte_displacement_arg, first_state_displacement_arg,               \
                                second_state_displacement_arg, output_state_displacement_arg,                          \
                                display_service_displacement_arg, fallback_state_displacement_arg)                     \
    __attribute__((used, naked, section(".text." #function_name))) void function_name(void) {                          \
        __asm__ volatile("push {r7, lr}\n"                                                                             \
                         "movs r0, #48\n"                                                                              \
                         "ldr r1, [pc, #%c[mode_byte_literal]]\n"                                                      \
                         "ldrb r1, [r1, r0]\n"                                                                         \
                         "movs r0, #3\n"                                                                               \
                         "ands r0, r1\n"                                                                               \
                         "cmp r0, #3\n"                                                                                \
                         "bne .Lmerge_companion_state\n"                                                               \
                         "movs r0, #64\n"                                                                              \
                         "ldr r1, [pc, #%c[first_state_literal]]\n"                                                    \
                         "ldrb r0, [r1, r0]\n"                                                                         \
                         "movs r1, #1\n"                                                                               \
                         "orrs r1, r0\n"                                                                               \
                         "b .Lapply_display_flags\n"                                                                   \
                         ".Lmerge_companion_state: cmp r0, #2\n"                                                       \
                         "bcc .Lcheck_zero_mode\n"                                                                     \
                         "movs r0, #64\n"                                                                              \
                         "ldr r1, [pc, #%c[second_state_literal]]\n"                                                   \
                         "ldrb r1, [r1, r0]\n"                                                                         \
                         ".Lapply_display_flags: movs r0, #8\n"                                                        \
                         "orrs r0, r1\n"                                                                               \
                         ".Lwrite_mode: movs r1, #64\n"                                                                \
                         "orrs r0, r1\n"                                                                               \
                         "ldr r2, [pc, #%c[output_state_literal]]\n"                                                   \
                         "strb r0, [r2, r1]\n"                                                                         \
                         ".Lnotify_display: ldr r1, [pc, #%c[display_service_literal]]\n"                              \
                         "ldr r0, [r1, #44]\n"                                                                         \
                         "adds r1, #66\n"                                                                              \
                         "movs r2, #3\n"                                                                               \
                         "movs r3, #1\n"                                                                               \
                         "bl convert_quotient_remainder_sequence_ring_s_at_3148\n"                                     \
                         "pop {r7, pc}\n"                                                                              \
                         ".Lcheck_zero_mode: cmp r0, #0\n"                                                             \
                         "beq .Lnotify_display\n"                                                                      \
                         "movs r0, #64\n"                                                                              \
                         "ldr r1, [pc, #%c[fallback_state_literal]]\n"                                                 \
                         "ldrb r0, [r1, r0]\n"                                                                         \
                         "b .Lwrite_mode\n"                                                                            \
                         :                                                                                             \
                         : [mode_byte_literal] "i"(mode_byte_displacement_arg),                                        \
                           [first_state_literal] "i"(first_state_displacement_arg),                                    \
                           [second_state_literal] "i"(second_state_displacement_arg),                                  \
                           [output_state_literal] "i"(output_state_displacement_arg),                                  \
                           [display_service_literal] "i"(display_service_displacement_arg),                            \
                           [fallback_state_literal] "i"(fallback_state_displacement_arg));                             \
    }

#endif
