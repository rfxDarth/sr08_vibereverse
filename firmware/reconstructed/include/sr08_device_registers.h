#ifndef SR08_DEVICE_REGISTERS_H
#define SR08_DEVICE_REGISTERS_H

#include <stdint.h>
#include "sr08_peripheral_register_profile.h"

/* Memory-mapped device and NVIC registers used by the reconstructed firmware. */
enum {
    SR08_SENSOR_INITIAL_CONFIGURATION_VALUE = 0x14,
    SR08_SENSOR_CONFIGURATION_WORD_INDEX = 1,
    SR08_SENSOR_CONVERSION_RESULT_WORD_INDEX = 2,
    SR08_16BIT_CLEAR_BIT_0_MASK = 0xfffe,
    SR08_BIT_15_MASK = 0x8000,
};

#define SR08_SHARED_FLAGS_REGISTER ((volatile uint32_t *)(uintptr_t)0x40000030u)
#define SR08_PERIPHERAL_CONTROL_WORD_40000000 (*(volatile uint32_t *)(uintptr_t)0x40000000u)
#define SR08_PERIPHERAL_CONTROL_WORD_40000074 (*(volatile uint32_t *)(uintptr_t)0x40000074u)
#define SR08_SYSTEM_CONTROL_REGISTER (*(volatile uint16_t *)(uintptr_t)0x50000000u)
#define SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000008 ((volatile uint16_t *)0x50000008u)
#define SR08_NMI_CONTROL_REGISTER ((volatile uint16_t *)0x50000010u)
#define SR08_SYSTEM_CONTROL_REGISTER_50000012 ((volatile uint16_t *)0x50000012u)
#define SR08_PERIPHERAL_STATUS_REGISTER_50000014 ((volatile uint16_t *)0x50000014u)
#define SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000022 ((volatile uint16_t *)0x50000022u)
#define SR08_SHARED_CONTROL_REGISTER_50001104 ((volatile uint16_t *)0x50001104u)
#define SR08_FLASH_CONTROLLER_REGISTER ((volatile uint16_t *)0x50001200u)
#define SR08_RING_OUTPUT_CONTROL_REGISTER ((volatile uint16_t *)0x50001200u)
#define SR08_STATUS_REGISTER_50001370 ((uintptr_t)0x50001370u)
#define SR08_STATUS_REGISTER_50001378 ((uintptr_t)0x50001378u)
#define SR08_PERIPHERAL_STATUS_REGISTER_50001508 ((volatile uint16_t *)0x50001508u)
#define SR08_SENSOR_CONTROL_REGISTER ((volatile uint16_t *)(uintptr_t)0x50001600u)
#define SR08_HARDFAULT_STATUS_REGISTER ((volatile uint16_t *)0x50003100u)
#define SR08_HALT_STATUS_REGISTER ((volatile uint16_t *)0x50003302u)
#define SR08_PERIPHERAL_CONFIGURATION_REGISTER ((volatile uint16_t *)(uintptr_t)0x50003400u)
#define SR08_NVIC_CLEAR_ENABLE_REGISTER_1 ((volatile uint32_t *)(uintptr_t)0xe000e180u)
#define SR08_NVIC_PENDING_CLEAR_REGISTER ((uint32_t *)0xe000e280u)

void initialize_peripheral_state_and_interrupts(void);
void initialize_ring_display_and_sensor_registers(void);
int set_pending_flag_if_status_bit_7_clear(void);
void program_peripheral_registers_from_descriptor(const struct sr08_peripheral_register_profile *profile);

/* Fixed profiles used by device-state handling and radio-command recovery. */
#define SR08_DEVICE_STATE_RADIO_PROFILE_ADDRESS 0x07fcfae2u
#define SR08_COMMAND_READY_RADIO_PROFILE_ADDRESS 0x07fcfb08u

/* Define a no-argument entry point for one fixed radio register profile. */
#define SR08_DEFINE_RADIO_PROFILE_APPLIER(function_name, profile_address)                                              \
    void function_name(void) {                                                                                         \
        program_peripheral_registers_from_descriptor(                                                                  \
            (const struct sr08_peripheral_register_profile *)(uintptr_t)(profile_address));                            \
    }

#endif
