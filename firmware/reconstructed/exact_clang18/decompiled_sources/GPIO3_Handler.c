/* GPIO3_Handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/gpio/gpio.c (Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#include "firmware/reconstructed/include/sr08_sdk_gpio.h"

void GPIOn_Handler(IRQn_Type irq);

void GPIO3_Handler(void)
{
    GPIOn_Handler(GPIO3_IRQn);
}
