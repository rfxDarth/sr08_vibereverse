/* GPIOn_Handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/gpio/gpio.c, with the GPIO_ResetIRQ and gpioshift16 it
 * calls (Copyright (C) Dialog Semiconductor / Renesas Electronics
 * Corporation; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 * V204 never registers a GPIO callback, so its link removed the callback
 * call, and it knew GPIOn_Handler's only callers (GPIO0_Handler to
 * GPIO4_Handler), so it removed the IRQ range checks.
 */
#include "firmware/reconstructed/include/sr08_sdk_gpio.h"

#define NO_OF_IRQS (GPIO4_IRQn - GPIO0_IRQn + 1)
GPIO_handler_function_t GPIOHandlerFunction[NO_OF_IRQS];

static uint16_t gpioshift16(uint16_t f)
{
    uint16_t c;  // output: c will count f's trailing zero bits,

    if (f)
    {
        f = (f ^ (f - 1)) >> 1;  // Set f's trailing 0s to 1s and zero rest
        for (c = 0; f; c++)
        {
            f >>= 1;
        }
    }
    else
    {
        c = 8 * sizeof(f);
    }
    return c;
}

#define GPIOSetBits16(a,f,d)    ( SetWord16( (a), (GetWord16(a)&(~(uint16_t)(f))) | (((uint16_t)(d))<<gpioshift16((f))) ))

void GPIO_ResetIRQ( IRQn_Type irq )
{
    GPIOSetBits16(GPIO_RESET_IRQ_REG, RESET_GPIO0_IRQ << (irq-GPIO0_IRQn), 1);
}

void GPIOn_Handler(IRQn_Type irq)
{
    if ((irq<=GPIO4_IRQn) && (irq>=GPIO0_IRQn))
    {
        GPIO_ResetIRQ(irq);
        GPIO_handler_function_t callback = GPIOHandlerFunction[irq-GPIO0_IRQn];
        if (callback != NULL)
            callback();
        else
            NVIC_ClearPendingIRQ(irq);
    }
}
