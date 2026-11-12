/* Write six to the peripheral configuration register, disable IRQs 15, 1
 * and 0 one at a time with barriers, clear the system control register and
 * enable interrupts. */
#include <arm_acle.h>
#include <arm_compat.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"

enum {
    PERIPHERAL_CONFIGURATION_VALUE = 6,
    NVIC_IRQ_15_MASK = 1u << 15,
    NVIC_IRQ_1_MASK = 1u << 1,
    NVIC_IRQ_0_MASK = 1u << 0,
    BARRIER_FULL_SYSTEM = 0xf,
};

void SystemInit(void) {
    volatile uint32_t *interrupt_clear_enable = SR08_NVIC_CLEAR_ENABLE_REGISTER_1;

    *SR08_PERIPHERAL_CONFIGURATION_REGISTER = PERIPHERAL_CONFIGURATION_VALUE;
    *interrupt_clear_enable = NVIC_IRQ_15_MASK;
    __dsb(BARRIER_FULL_SYSTEM);
    __isb(BARRIER_FULL_SYSTEM);
    *interrupt_clear_enable = NVIC_IRQ_1_MASK;
    __dsb(BARRIER_FULL_SYSTEM);
    __isb(BARRIER_FULL_SYSTEM);
    *interrupt_clear_enable = NVIC_IRQ_0_MASK;
    __dsb(BARRIER_FULL_SYSTEM);
    __isb(BARRIER_FULL_SYSTEM);
    SR08_SYSTEM_CONTROL_REGISTER = 0;
    __enable_irq();
}
