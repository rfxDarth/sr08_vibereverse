/* Recovered behavior:
 * Apply peripheral control settings, populate the supplied callback configuration, seed a 40-byte
 * sequence table, run the companion initialization routine, convert the initial sensor value, and
 * start the follow-up state handler.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.initialize_sensor_peripheral_and_sample_state"))) void
initialize_sensor_peripheral_and_sample_state(void) {
    __asm__ volatile("push {r4, r5, r6, r7, lr} /* 0x07fcb82c */\n"
                     "sub sp, #44 /* 0x07fcb82e */\n"
                     "movs r1, #31 /* 0x07fcb830 */\n"
                     "lsls r1, r1, #16 /* 0x07fcb832 */\n"
                     "ldr r2, [pc, #108] /* 0x07fcb834 */\n"
                     "ldr r3, [r2, #0] /* 0x07fcb836 */\n"
                     "bics r3, r1 /* 0x07fcb838 */\n"
                     "movs r1, #1 /* 0x07fcb83a */\n"
                     "lsls r4, r1, #17 /* 0x07fcb83c */\n"
                     "adds r3, r3, r4 /* 0x07fcb83e */\n"
                     "str r3, [r2, #0] /* 0x07fcb840 */\n"
                     "lsls r3, r1, #19 /* 0x07fcb842 */\n"
                     "ldr r2, [pc, #96] /* 0x07fcb844 */\n"
                     "ldr r4, [r2, #0] /* 0x07fcb846 */\n"
                     "bics r4, r3 /* 0x07fcb848 */\n"
                     "str r4, [r2, #0] /* 0x07fcb84a */\n"
                     "ldr r4, [pc, #96] /* 0x07fcb84c */\n"
                     "ldr r5, [pc, #100] /* 0x07fcb84e */\n"
                     "ldr r6, [pc, #100] /* 0x07fcb850 */\n"
                     "str r6, [r0, #20] /* 0x07fcb852 */\n"
                     "ldr r6, [pc, #100] /* 0x07fcb854 */\n"
                     "ldr r7, [pc, #104] /* 0x07fcb856 */\n"
                     "ldr r3, [pc, #104] /* 0x07fcb858 */\n"
                     "str r3, [r0, #28] /* 0x07fcb85a */\n"
                     "str r6, [r0, #32] /* 0x07fcb85c */\n"
                     "str r4, [r0, #36]	@ 0x24 /* 0x07fcb85e */\n"
                     "ldr r3, [pc, #72] /* 0x07fcb860 */\n"
                     "str r3, [r0, #40]	@ 0x28 /* 0x07fcb862 */\n"
                     "str r5, [r0, #44]	@ 0x2c /* 0x07fcb864 */\n"
                     "ldr r3, [pc, #96] /* 0x07fcb866 */\n"
                     "str r7, [r0, #0] /* 0x07fcb868 */\n"
                     "str r3, [r0, #4] /* 0x07fcb86a */\n"
                     "lsls r0, r1, #18 /* 0x07fcb86c */\n"
                     "ldr r1, [r2, #0] /* 0x07fcb86e */\n"
                     "bics r1, r0 /* 0x07fcb870 */\n"
                     "str r1, [r2, #0] /* 0x07fcb872 */\n"
                     "movs r0, #0 /* 0x07fcb874 */\n"
                     ".L_initialize_sensor_peripheral_and_sample_state_block_at_b82c_at_07fcb876:\n"
                     "cmp r0, #40	@ 0x28 /* 0x07fcb876 */\n"
                     "beq.n .L_initialize_sensor_peripheral_and_sample_state_block_at_b82c_at_07fcb882 /* branch: eq, "
                     "target at .+10 */ /* 0x07fcb878 */\n"
                     "add r1, sp, #4 /* 0x07fcb87a */\n"
                     "strb r0, [r1, r0] /* 0x07fcb87c */\n"
                     "adds r0, r0, #1 /* 0x07fcb87e */\n"
                     "b.n .L_initialize_sensor_peripheral_and_sample_state_block_at_b82c_at_07fcb876 /* branch: "
                     "always, target at .-10 */ /* 0x07fcb880 */\n"
                     ".L_initialize_sensor_peripheral_and_sample_state_block_at_b82c_at_07fcb882:\n"
                     "ldr r0, [pc, #72] /* 0x07fcb882 */\n"
                     "ldr r0, [r0, #0] /* 0x07fcb884 */\n"
                     "adds r0, #64	@ 0x40 /* 0x07fcb886 */\n"
                     "add r1, sp, #4 /* 0x07fcb888 */\n"
                     "movs r2, #40	@ 0x28 /* 0x07fcb88a */\n"
                     "bl __aeabi_memcpy\n"                               /* at 0x07fcb88c */
                     "bl initialize_ring_display_and_sensor_registers\n" /* at 0x07fcb890 */
                     "bl read_sensor_conversion_result\n"                /* at 0x07fcb894 */
                     "ldr r1, [pc, #800] /* 0x07fcb898 */\n"
                     "strh r0, [r1, #56]	@ 0x38 /* 0x07fcb89a */\n"
                     "bl temporarily_clear_hardware_flags_query_sensor_at_16f8\n" /* at 0x07fcb89c */
                     "add sp, #44 /* 0x07fcb8a0 */\n"
                     "pop {r4, r5, r6, r7, pc} /* 0x07fcb8a2 */\n");
}
