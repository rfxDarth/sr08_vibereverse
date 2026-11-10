/*
 * Initialize the two output-state halfwords around the shared mode helper.
 * Read the mode byte at offset 2, write 1 or 8 to output halfword 1, pass the
 * incoming transaction value through to the polled MMIO helper, then read
 * the mode byte again and write 1 or 8 to output halfword 0. Keep the Thumb
 * body pinned because it fits this 38-byte slot exactly and preserves the
 * original aligned stack save around the helper call.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_flash_transfer.h"
#include "firmware/reconstructed/include/sr08_output_state.h"

__attribute__((naked, used, section(".text.update_mode_dependent_output_state_during_flash_transfer"))) uint32_t
update_mode_dependent_output_state_during_flash_transfer(uint32_t transaction_value __attribute__((unused))) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr}\n\t"
                     "ldr r6, [pc, #36]\n\t"
                     "ldrb r1, [r6, #2]\n\t"
                     "movs r4, #8\n\t"
                     "movs r5, #1\n\t"
                     "cmp r1, #0\n\t"
                     "mov r1, r4\n\t"
                     "bne .Lfirst_done_bb94\n\t"
                     "mov r1, r5\n"
                     ".Lfirst_done_bb94:\n\t"
                     "ldr r7, [pc, #24]\n\t"
                     "strh r1, [r7, #2]\n\t"
                     "bl transfer_flash_controller_word\n\t"
                     "ldrb r1, [r6, #2]\n\t"
                     "cmp r1, #0\n\t"
                     "bne .Lsecond_done_bb94\n\t"
                     "mov r4, r5\n"
                     ".Lsecond_done_bb94:\n\t"
                     "strh r4, [r7, #0]\n\t"
                     "pop {r3, r4, r5, r6, r7, pc}");
}
