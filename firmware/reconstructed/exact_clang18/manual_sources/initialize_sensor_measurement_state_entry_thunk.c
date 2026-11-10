/* Literal-indirect tail-call thunk to initialize_sensor_measurement_state. */
__attribute__((used, naked, section(".text.initialize_sensor_measurement_state_entry_thunk"))) void
initialize_sensor_measurement_state_entry_thunk(void) {
    __asm__ volatile("ldr r0, [pc, #0]\n" /* v204_initial_startup_hook at 0x07fc013c */
                     "bx r0\n");
}
