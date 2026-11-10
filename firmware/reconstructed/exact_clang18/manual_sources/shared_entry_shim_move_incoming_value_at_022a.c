/* Shared entry shim: move the incoming value to r2 and fall through. */
__attribute__((used, naked, section(".text.shared_entry_shim_move_incoming_value_at_022a"))) void
shared_entry_shim_move_incoming_value_at_022a(void) {
    __asm__ volatile("mov r2, r0\n");
}
