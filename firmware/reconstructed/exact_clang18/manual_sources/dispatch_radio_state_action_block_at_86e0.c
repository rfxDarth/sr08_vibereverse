/* Radio action dispatcher, range 2; fixed-address Thumb transcription.*/
#include <stdint.h>
__attribute__((used, naked, section(".text.dispatch_radio_state_action_block_at_86e0"))) void
dispatch_radio_state_action_block_at_86e0(void) {
    __asm__ volatile("movs r0, #2 /* 0x07fc86e0 */\n"
                     "bl configure_command_record\n" /* at 0x07fc86e2 */
                     "ldr r0, [pc, #484] /* 0x07fc86e6 */\n"
                     "movs r1, #1 /* 0x07fc86e8 */\n"
                     "strb r1, [r0, #30] /* 0x07fc86ea */\n"
                     "strb r1, [r0, #21] /* 0x07fc86ec */\n"
                     "pop {r4, r5, r7, pc} /* 0x07fc86ee */\n"
                     "bl configure_radio_state_from_profile\n" /* at 0x07fc86f0 */
                     "b.n .L_dispatch_radio_state_action_block_at_86e0_at_07fc86fa /* branch: always, target at .+6 */ "
                     "/* 0x07fc86f4 */\n"
                     "bl initialize_radio_scan_and_mark_state_ready\n" /* at 0x07fc86f6 */
                     ".L_dispatch_radio_state_action_block_at_86e0_at_07fc86fa:\n"
                     "ldr r0, [pc, #464] /* 0x07fc86fa */\n"
                     "movs r1, #0 /* 0x07fc86fc */\n"
                     "strb r1, [r0, #30] /* 0x07fc86fe */\n"
                     "pop {r4, r5, r7, pc} /* 0x07fc8700 */\n"
                     "movs r1, #32 /* 0x07fc8702 */\n"
                     "ldr r0, [pc, #228] /* 0x07fc8704 */\n"
                     "movs r2, #15 /* 0x07fc8706 */\n"
                     "strb r2, [r0, r1] /* 0x07fc8708 */\n"
                     "adds r0, #32 /* 0x07fc870a */\n"
                     "movs r1, #5 /* 0x07fc870c */\n"
                     "strb r1, [r0, #14] /* 0x07fc870e */\n"
                     "movs r1, #0 /* 0x07fc8710 */\n"
                     "movs r2, #16 /* 0x07fc8712 */\n"
                     "strh r2, [r0, #12] /* 0x07fc8714 */\n"
                     "movs r4, #1 /* 0x07fc8716 */\n"
                     "lsls r2, r4, #18 /* 0x07fc8718 */\n"
                     "str r1, [r0, #4] /* 0x07fc871a */\n"
                     "str r2, [r0, #8] /* 0x07fc871c */\n"
                     "strh r1, [r0, #2] /* 0x07fc871e */\n"
                     "str r1, [r0, #16] /* 0x07fc8720 */\n"
                     "str r1, [r0, #20] /* 0x07fc8722 */\n"
                     "str r1, [r0, #24] /* 0x07fc8724 */\n"
                     "strb r1, [r0, #28] /* 0x07fc8726 */\n"
                     "ldr r1, [pc, #68] /* 0x07fc8728 */\n"
                     "strh r1, [r0, #30] /* 0x07fc872a */\n"
                     "bl clear_radio_flag_and_configure_state\n"                  /* at 0x07fc872c */
                     "bl publish_enabled_sensor_field_trigger_periodic_at_8774\n" /* at 0x07fc8730 */
                     "ldr r0, [pc, #404] /* 0x07fc8734 */\n"
                     "strb r4, [r0, #31] /* 0x07fc8736 */\n"
                     "strb r4, [r0, #20] /* 0x07fc8738 */\n"
                     "pop {r4, r5, r7, pc} /* 0x07fc873a */\n"
                     "ldr r4, [pc, #396] /* 0x07fc873c */\n"
                     "movs r5, #0 /* 0x07fc873e */\n"
                     "strb r5, [r4, #20] /* 0x07fc8740 */\n"
                     "movs r0, #1 /* 0x07fc8742 */\n"
                     "bl configure_radio_profile_and_mark_state_ready\n" /* at 0x07fc8744 */
                     "strb r5, [r4, #31] /* 0x07fc8748 */\n"
                     ".global V204_RADIO_STATE_DISPATCH_DEFAULT_RETURN\n"
                     "V204_RADIO_STATE_DISPATCH_DEFAULT_RETURN:\n"
                     "pop {r4, r5, r7, pc} /* 0x07fc874a */\n"
                     "movs r0, #32 /* 0x07fc874c */\n"
                     "ldr r1, [pc, #156] /* 0x07fc874e */\n"
                     "movs r2, #2 /* 0x07fc8750 */\n"
                     "strb r2, [r1, r0] /* 0x07fc8752 */\n"
                     "adds r1, #32 /* 0x07fc8754 */\n"
                     "strb r2, [r1, #28] /* 0x07fc8756 */\n"
                     "movs r0, #0 /* 0x07fc8758 */\n"
                     "strb r0, [r1, #2] /* 0x07fc875a */\n"
                     "bl clear_radio_flag_and_configure_state\n"                  /* at 0x07fc875c */
                     "bl publish_enabled_sensor_field_trigger_periodic_at_8774\n" /* at 0x07fc8760 */
                     "ldr r0, [pc, #356] /* 0x07fc8764 */\n"
                     "movs r1, #1 /* 0x07fc8766 */\n"
                     "strb r1, [r0, #31] /* 0x07fc8768 */\n"
                     "strb r1, [r0, #20] /* 0x07fc876a */\n"
                     "pop {r4, r5, r7, pc} /* 0x07fc876c */\n");
}
