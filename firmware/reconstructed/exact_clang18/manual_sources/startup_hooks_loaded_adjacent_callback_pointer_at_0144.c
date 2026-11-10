/* Call the initialization hook, then branch to the reset entry from the vector struct. */
__attribute__((used, naked, section(".text.startup_hooks_loaded_adjacent_callback_pointer_at_0144"))) void
startup_hooks_loaded_adjacent_callback_pointer_at_0144(void) {
    __asm__ volatile("ldr r0, [pc, #60]\n" /* initialization_hook at 0x07fc0184 */
                     "blx r0\n"
                     "ldr r0, [pc, #60]\n" /* reset_entry at 0x07fc0188 */
                     "bx r0\n");
}
