/*
 * Initialize the output-state RAM layout with two ROM-to-RAM copies:
 *
 * - 112 bytes from 0x07fcf1cc to 0x40080020.
 * - 56 bytes from 0x07fcf194 to 0x07fc00c0.
 *
 * Then install 0x07f1bf8c at 0x400800c0, 0x07fcf15c at 0x400800c4, and
 * 0x00103fff at 0x40080000. These addresses and lengths come from the
 * function's literal pool; the body keeps V204's call and store order.
 */
__attribute__((used, naked, section(".text.copy_two_initialized_state_blocks_and_install_pointers"))) void
copy_two_initialized_state_blocks_and_install_pointers(void) {
    __asm__ volatile("push {r4, lr}\n"
                     "movs r2, #112\n"
                     "ldr r1, [pc, #72]\n"
                     "ldr r0, [pc, #72]\n"
                     "bl __aeabi_memcpy\n"
                     "ldr r1, [pc, #64]\n"
                     "movs r2, #56\n"
                     "subs r1, #56\n"
                     "ldr r0, [pc, #64]\n"
                     "bl __aeabi_memcpy\n"
                     "ldr r0, [pc, #56]\n"
                     "ldr r1, [pc, #60]\n"
                     "adds r0, #160\n"
                     "str r1, [r0, #0]\n"
                     "ldr r1, [pc, #44]\n"
                     "subs r1, #112\n"
                     "str r1, [r0, #4]\n"
                     "ldr r1, [pc, #40]\n"
                     "ldr r0, [pc, #52]\n"
                     "subs r1, #32\n"
                     "str r0, [r1, #0]\n"
                     "pop {r4, pc}\n");
}
