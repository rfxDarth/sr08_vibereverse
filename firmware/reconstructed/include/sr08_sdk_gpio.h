/* The parts of the Renesas DA145xx SDK 6.0.18.1182.1 GPIO driver interface
 * (sdk/platform/driver/gpio/gpio.h, sdk/platform/include/da14585_586.h and
 * CMSIS 5.6.0 core_cm0.h) that V204's GPIO units use (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). Enumerations
 * keep the SDK's value ranges, which set their size under -fshort-enums.
 */
#ifndef SR08_SDK_GPIO_H
#define SR08_SDK_GPIO_H

#include <stdbool.h>
#include <stddef.h>
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

#define GPIO_BASE   P0_DATA_REG

/// GPIO mode
typedef enum {
    INPUT = 0,
    INPUT_PULLUP = 0x100,
    INPUT_PULLDOWN = 0x200,
    OUTPUT = 0x300,
} GPIO_PUPD;

/// GPIO port
typedef enum {
    GPIO_PORT_0 = 0U,
    GPIO_PORT_1 = 1U,
    GPIO_PORT_2 = 2U,
    GPIO_PORT_3 = 3U,
    GPIO_PORT_3_REMAP = 4U,
} GPIO_PORT;

/// GPIO pin (DA14585/586: pins 0 to 9)
typedef enum {
    GPIO_PIN_0 = 0U,
    GPIO_PIN_9 = 9U,
} GPIO_PIN;

/// GPIO function (DA14585/586 PID values, all below 0x100)
typedef enum {
    PID_GPIO = 0,
    PID_I2C_SCL = 9,
    PID_I2C_SDA = 10,
} GPIO_FUNCTION;

typedef void (*GPIO_handler_function_t)(void);

#endif
