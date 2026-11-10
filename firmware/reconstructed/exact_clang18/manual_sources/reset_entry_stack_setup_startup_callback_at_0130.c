/* Reset-entry stack setup and startup callback walk. */
extern void call_registered_startup_callbacks_then_transfer_to_rom(void);

__attribute__((used, naked, section(".text.reset_entry_stack_setup_startup_callback_at_0130"))) void
reset_entry_stack_setup_startup_callback_at_0130(void) {
    __asm__ volatile("ldr r0, [pc, #12]\n" /* v204_initial_stack_top at 0x07fc0140 */
                     "mov sp, r0\n"
                     "bl call_registered_startup_callbacks_then_transfer_to_rom\n");
}
