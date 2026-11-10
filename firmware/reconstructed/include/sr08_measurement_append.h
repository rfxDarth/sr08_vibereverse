#ifndef SR08_MEASUREMENT_APPEND_H
#define SR08_MEASUREMENT_APPEND_H

/* Shared Thumb body for two measurement-record append entry points. */
#define SR08_DEFINE_MEASUREMENT_APPEND(function_name, fatal_pointer_offset_a_arg, fatal_pointer_offset_b_arg,          \
                                       fatal_pointer_offset_c_arg, fatal_pointer_offset_d_arg)                         \
    __attribute__((used, naked, section(".text." #function_name))) void function_name(void) {                          \
        __asm__ volatile("push {r1, r2, r3, r4, r5, r6, r7, lr}\n"                                                     \
                         "mov r4, r2\n"                                                                                \
                         "mov r6, r1\n"                                                                                \
                         "movs r0, #253\n"                                                                             \
                         "bl find_keyed_record_value\n"                                                                \
                         "mov r5, r0\n"                                                                                \
                         "ldrh r7, [r0, #4]\n"                                                                         \
                         "str r6, [sp, #0]\n"                                                                          \
                         "ldrh r6, [r6, #2]\n"                                                                         \
                         "str r4, [sp, #4]\n"                                                                          \
                         "mov r0, r4\n"                                                                                \
                         "bl ke_state_get\n"                                                                           \
                         "cmp r0, #1\n"                                                                                \
                         "bne .Litem_not_active\n"                                                                     \
                         "movs r7, #2\n"                                                                               \
                         "b .Lreturn_status\n"                                                                         \
                         ".Litem_not_active:\n"                                                                        \
                         "adds r0, r6, r7\n"                                                                           \
                         "uxth r0, r0\n"                                                                               \
                         "bl search_next_item_decoded_marker_matches_at_7284\n"                                        \
                         "cmp r0, #0\n"                                                                                \
                         "beq .Lfatal_missing_record\n"                                                                \
                         "add r1, sp, #8\n"                                                                            \
                         "bl match_measurement_index_and_write_offset\n"                                               \
                         "cmp r0, #0\n"                                                                                \
                         "beq .Lactivate_item\n"                                                                       \
                         "ldr r0, [pc, #%c[fatal_pointer_offset_a]]\n"                                                 \
                         "movs r1, #200\n"                                                                             \
                         "strh r1, [r0, #0]\n"                                                                         \
                         "ldr r0, [pc, #%c[fatal_pointer_offset_b]]\n"                                                 \
                         "movs r1, #8\n"                                                                               \
                         "strh r1, [r0, #0]\n"                                                                         \
                         ".Lfatal_match_loop: b .Lfatal_match_loop\n"                                                  \
                         ".Lfatal_missing_record:\n"                                                                   \
                         "ldr r0, [pc, #%c[fatal_pointer_offset_c]]\n"                                                 \
                         "movs r1, #200\n"                                                                             \
                         "strh r1, [r0, #0]\n"                                                                         \
                         "ldr r0, [pc, #%c[fatal_pointer_offset_d]]\n"                                                 \
                         "movs r1, #8\n"                                                                               \
                         "strh r1, [r0, #0]\n"                                                                         \
                         ".Lfatal_lookup_loop: b .Lfatal_lookup_loop\n"                                                \
                         ".Lactivate_item:\n"                                                                          \
                         "movs r7, #1\n"                                                                               \
                         "ldr r0, [sp, #4]\n"                                                                          \
                         "mov r1, r7\n"                                                                                \
                         "bl ke_state_set\n"                                                                           \
                         "movs r0, #0\n"                                                                               \
                         "strb r0, [r5, #12]\n"                                                                        \
                         "ldr r0, [sp, #0]\n"                                                                          \
                         "subs r0, #12\n"                                                                              \
                         "str r0, [r5, #8]\n"                                                                          \
                         "ldr r0, [sp, #8]\n"                                                                          \
                         "strb r0, [r5, #13]\n"                                                                        \
                         "bl append_or_finalize_measurement_record_chunk\n"                                            \
                         ".Lreturn_status:\n"                                                                          \
                         "mov r0, r7\n"                                                                                \
                         "pop {r1, r2, r3, r4, r5, r6, r7, pc}\n"                                                      \
                         :                                                                                             \
                         : [fatal_pointer_offset_a] "i"(fatal_pointer_offset_a_arg),                                   \
                           [fatal_pointer_offset_b] "i"(fatal_pointer_offset_b_arg),                                   \
                           [fatal_pointer_offset_c] "i"(fatal_pointer_offset_c_arg),                                   \
                           [fatal_pointer_offset_d] "i"(fatal_pointer_offset_d_arg));                                  \
    }

#endif
