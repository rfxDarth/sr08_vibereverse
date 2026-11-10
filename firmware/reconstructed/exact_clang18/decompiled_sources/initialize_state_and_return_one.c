/* Run the state initializer at 0x07fcd908, then report success. */
#include <stdint.h>
extern void initialize_shared_control_state_tables(void);

/*
 * The equivalent C call and return make Clang save r7 as well as lr. Keep
 * these four instructions pinned so V204 retains its one-register stack frame.
 */
__attribute__((naked)) uint32_t initialize_state_and_return_one(void) {
    __asm__ volatile("push {lr}\n\t"
                     "bl initialize_shared_control_state_tables\n\t"
                     "movs r0, #1\n\t"
                     "pop {pc}\n\t");
}
