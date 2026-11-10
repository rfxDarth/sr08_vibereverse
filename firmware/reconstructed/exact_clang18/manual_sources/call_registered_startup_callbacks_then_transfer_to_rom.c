#include <stdint.h>

extern void initialize_sensor_measurement_state_entry_thunk(void);

/* Calls each registered startup callback, then transfers to the ROM thunk. */
__attribute__((used, naked, section(".text.call_registered_startup_callbacks_then_transfer_to_rom"))) void
call_registered_startup_callbacks_then_transfer_to_rom(void) {
    __asm__ volatile("ldr r4, [pc, #24]\n"
                     "movs r5, #1\n"
                     "ldr r6, [pc, #24]\n"
                     "b .Lstartup_callback_loop_check\n"
                     ".Lrun_startup_callback: ldr r3, [r4, #12]\n"
                     "ldmia r4!, {r0, r1, r2}\n"
                     "orrs r3, r5\n"
                     "subs r4, #12\n"
                     "blx r3\n"
                     "adds r4, #16\n"
                     ".Lstartup_callback_loop_check: cmp r4, r6\n"
                     "bcc .Lrun_startup_callback\n"
                     "bl initialize_sensor_measurement_state_entry_thunk\n"
                     ".word 0x07fd0340\n"
                     ".word 0x07fd0360\n");
}
