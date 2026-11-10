#include <stdint.h>
#include "firmware/reconstructed/include/sr08_format.h"
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"
/* Exchange one command through the radio interface; the 16-bit data register
 * transmits only the low halfword of command_value.
 */
uint8_t exchange_one_radio_word(uint32_t command_value)

{
    volatile uint16_t *command_register;
    volatile uint16_t *radio_status_registers;
    uint32_t wait_result;
    uint8_t response;

    wait_for_status_mask_0x02_set_minimum_8();
    __asm__ volatile("ldr %[command_register], [pc, #252]" : [command_register] "=r"(command_register));
    *command_register = (uint16_t)command_value;
    wait_for_status_mask_0x02_set_minimum_8();
    *command_register = 0x100;
    wait_for_status_mask_0x04_set_minimum_32();
    __asm__ volatile("ldr %[status_registers], [pc, #240]" : [status_registers] "=r"(radio_status_registers));
    if ((radio_status_registers[0x16] & 1) == 0) {
        wait_result = wait_for_any_status_bit_or_elapsed_200(*radio_status_registers);
        response = (uint8_t)*command_register;
    } else {
        uint32_t format_string;
        __asm__ volatile("ldr %[format_string], [pc, #224]" : [format_string] "=r"(format_string));
        format_and_send_uart_message((const uint8_t *)(uintptr_t)format_string, 0x76, 1);
        wait_result = (uint32_t)*radio_status_registers;
        response = 0;
    }
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-non-prototype"
    wait_for_status_mask_0x04_set_minimum_32(wait_result);
#pragma clang diagnostic pop
    wait_for_status_mask_0x20_clear_minimum_8();
    return response;
}
