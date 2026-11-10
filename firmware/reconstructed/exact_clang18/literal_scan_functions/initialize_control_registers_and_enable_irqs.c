/* Recovered behavior:
 * Write value six to MMIO address 0x50003400, clear three interrupt masks through NVIC address
 * 0xe000e180 with barriers, clear address 0x50000000, and enable interrupts.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#define DATA_SYNCHRONIZATION_BARRIER() __asm__ volatile("dsb sy" ::: "memory")
#define INSTRUCTION_SYNCHRONIZATION_BARRIER() __asm__ volatile("isb sy" ::: "memory")
#define ENABLE_GLOBAL_INTERRUPTS() __asm__ volatile("cpsie i" ::: "memory")

enum {
    PERIPHERAL_CONFIGURATION_VALUE = 6,
    NVIC_IRQ_15_MASK = 1u << 15,
    NVIC_IRQ_1_MASK = 1u << 1,
    NVIC_IRQ_0_MASK = 1u << 0,
};

void initialize_control_registers_and_enable_irqs(void)

{
    volatile uint32_t *interrupt_clear_enable = SR08_NVIC_CLEAR_ENABLE_REGISTER_1;

    *SR08_PERIPHERAL_CONFIGURATION_REGISTER = PERIPHERAL_CONFIGURATION_VALUE;
    *interrupt_clear_enable = NVIC_IRQ_15_MASK;
    DATA_SYNCHRONIZATION_BARRIER();
    INSTRUCTION_SYNCHRONIZATION_BARRIER();
    *interrupt_clear_enable = NVIC_IRQ_1_MASK;
    DATA_SYNCHRONIZATION_BARRIER();
    INSTRUCTION_SYNCHRONIZATION_BARRIER();
    *interrupt_clear_enable = NVIC_IRQ_0_MASK;
    DATA_SYNCHRONIZATION_BARRIER();
    INSTRUCTION_SYNCHRONIZATION_BARRIER();
    SR08_SYSTEM_CONTROL_REGISTER = 0;
    ENABLE_GLOBAL_INTERRUPTS();
}
