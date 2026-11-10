/* Send radio command (1, 0) up to ten times, waiting between each attempt.
 * Store each response byte at radio configuration offset 0x13. Return one if
 * a response is 0x27, or zero after all ten attempts fail to match. The exact
 * Thumb instruction sequence remains explicit to preserve V204's encoding.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

__attribute__((naked, noinline, used, section(".text.retry_radio_command_until_status_0x27"))) uint32_t
retry_radio_command_until_status_0x27(void) {
    /* The shared radio configuration object stores each returned byte at +0x13. */
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "movs r1, #0\n"
                     "ldr r5, [pc, #912]\n"
                     ".Lretry_attempt_or_check_limit: mov r6, r1\n"
                     "cmp r1, #9\n"
                     "bhi .Lcheck_retry_result\n"
                     "movs r0, #1\n"
                     "movs r4, #0\n"
                     "mov r1, r4\n"
                     "bl send_device_command_pair\n"
                     "movs r0, #5\n"
                     "bl wait_shared_timer_delta_exceed_requested_at_4458\n"
                     "mov r0, r4\n"
                     "bl ensure_radio_profile_then_exchange_word\n"
                     "strb r0, [r5, #19]\n"
                     "adds r1, r6, #1\n"
                     "cmp r0, #39\n"
                     "bne .Lretry_attempt_or_check_limit\n"
                     ".Lcheck_retry_result: cmp r6, #10\n"
                     "bcc .Lstatus_matched\n"
                     "movs r0, #0\n"
                     "pop {r4, r5, r6, pc}\n"
                     ".Lstatus_matched: movs r0, #1\n"
                     "pop {r4, r5, r6, pc}\n");
}
