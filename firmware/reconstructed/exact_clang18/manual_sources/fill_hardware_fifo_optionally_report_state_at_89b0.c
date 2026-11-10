/* Fill the hardware FIFO, optionally report state, and copy results out. */
#include <stdint.h>

__attribute__((used, naked, section(".text.fill_hardware_fifo_optionally_report_state_at_89b0"))) void
fill_hardware_fifo_optionally_report_state_at_89b0(uint32_t command __attribute__((unused)),
                                                   uint8_t *destination __attribute__((unused)),
                                                   uint32_t byte_count __attribute__((unused))) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr}\n"
                     "mov r4, r2\n"
                     "mov r5, r1\n"
                     "mov r6, r0\n"
                     "bl wait_for_status_mask_0x02_set_minimum_8\n"
                     "ldr r7, [pc, #340]\n"
                     "strh r6, [r7, #0]\n"
                     "movs r6, #0\n"
                     ".Lwrite_fifo_loop: cmp r6, r4\n"
                     "bcs .Lbegin_readback\n"
                     "bl wait_for_status_mask_0x02_set_minimum_8\n"
                     "movs r0, #1\n"
                     "lsls r0, r0, #8\n"
                     "strh r0, [r7, #0]\n"
                     "adds r6, r6, #1\n"
                     "b .Lwrite_fifo_loop\n"
                     ".Lbegin_readback: bl wait_for_status_mask_0x04_set_minimum_32\n"
                     "ldr r6, [pc, #316]\n"
                     "ldrh r0, [r6, #44]\n"
                     "lsls r0, r0, #31\n"
                     "beq .Lreadback_start\n"
                     "ldr r0, [pc, #312]\n"
                     "movs r1, #158\n"
                     "movs r2, #1\n"
                     "bl format_and_send_uart_message\n"
                     ".Lreadback_start: ldrh r0, [r6, #0]\n"
                     "movs r6, #0\n"
                     ".Lreadback_loop: cmp r6, r4\n"
                     "bcs .Ldone\n"
                     "bl wait_for_any_status_bit_or_elapsed_200\n"
                     "ldrh r0, [r7, #0]\n"
                     "strb r0, [r5, #0]\n"
                     "adds r6, r6, #1\n"
                     "adds r5, r5, #1\n"
                     "b .Lreadback_loop\n"
                     ".Ldone: bl wait_for_status_mask_0x04_set_minimum_32\n"
                     "bl wait_for_status_mask_0x20_clear_minimum_8\n"
                     "pop {r3, r4, r5, r6, r7, pc}\n");
}
