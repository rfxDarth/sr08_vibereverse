/* Nonzero-field fault handler for discontiguous_switch_entry_default_return_blocks_at_65d0.
 * Fixed-address Thumb transcription preserves the hardware fault loop. */
#include <stdint.h>
__attribute__((used, naked, section(".text.discontiguous_switch_entry_default_return_blocks_at_65d0_fault"))) void
discontiguous_switch_entry_default_return_blocks_at_65d0_fault(void) {
    __asm__ volatile(
        "ldrb r0, [r1, #1] /* 07fc6600: ldrb	r0, [r1, #1] */\n"
        "cmp r0, #0 /* 07fc6602: cmp	r0, #0 */\n"
        "beq.n V204_TARGET_07fc6636 /* branch: eq, target at .+50 */ /* 07fc6604: beq.n	0x7fc6636 */\n"
        "ldr r0, [pc, #900] /* 07fc6606: ldr	r0, [pc, #900]	@ (0x7fc698c) */\n"
        "movs r1, #200	@ 0xc8 /* 07fc6608: movs	r1, #200	@ 0xc8 */\n"
        "strh r1, [r0, #0] /* 07fc660a: strh	r1, [r0, #0] */\n"
        "ldr r0, [pc, #896] /* 07fc660c: ldr	r0, [pc, #896]	@ (0x7fc6990) */\n"
        "movs r1, #8 /* 07fc660e: movs	r1, #8 */\n"
        "strh r1, [r0, #0] /* 07fc6610: strh	r1, [r0, #0] */\n"
        ".L_discontiguous_switch_entry_default_return_blocks_at_65d0_fault_at_07fc6612:\n"
        "b.n .L_discontiguous_switch_entry_default_return_blocks_at_65d0_fault_at_07fc6612 /* branch: always, target "
        "at .+0 */ /* 07fc6612: b.n	0x7fc6612 */\n");
}
