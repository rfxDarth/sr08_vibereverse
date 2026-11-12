/* GPIO_ConfigurePin from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/gpio/gpio.c, with the DA14585 versions of
 * GPIO_SetActive, GPIO_SetInactive and GPIO_SetPinFunction it calls (V204's
 * link inlined them; DEVELOPMENT_DEBUG is off). Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt.
 */
#include "firmware/reconstructed/include/sr08_sdk_gpio.h"

void GPIO_SetPinFunction(GPIO_PORT port, GPIO_PIN pin, GPIO_PUPD mode, GPIO_FUNCTION function)
{
    if (port == GPIO_PORT_3)
        port = GPIO_PORT_3_REMAP; // Set to 4 due to P30_MODE_REG address (0x50003086 instead of 0x50003066)

    const int data_reg = GPIO_BASE + (port << 5);
    const int mode_reg = data_reg + 0x6 + (pin << 1);

    SetWord16(mode_reg, (uint16_t)mode | (uint16_t)function);
}

void GPIO_SetActive(GPIO_PORT port, GPIO_PIN pin)
{
    if (port == GPIO_PORT_3)
        port = GPIO_PORT_3_REMAP; // Set to 4 due to P30_MODE_REG address (0x50003086 instead of 0x50003066)

    const int data_reg = GPIO_BASE + (port << 5);
    const int set_data_reg = data_reg + 2;

    SetWord16(set_data_reg, 1 << pin);
}

void GPIO_SetInactive(GPIO_PORT port, GPIO_PIN pin)
{
    if (port == GPIO_PORT_3)
        port = GPIO_PORT_3_REMAP; // Set to 4 due to P30_MODE_REG address (0x50003086 instead of 0x50003066)

    const int data_reg = GPIO_BASE + (port << 5);
    const int reset_data_reg = data_reg + 4;

    SetWord16(reset_data_reg, 1 << pin);
}

void GPIO_ConfigurePin(GPIO_PORT port, GPIO_PIN pin, GPIO_PUPD mode, GPIO_FUNCTION function,
                        const bool high)
{
    if (high)
        GPIO_SetActive( port, pin );
    else
        GPIO_SetInactive( port, pin );

    GPIO_SetPinFunction( port, pin, mode, function );
}
