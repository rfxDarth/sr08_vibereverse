/* adc_get_sample from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/adc/adc_58x.c, with ADC_TIMEOUT from adc_58x.h
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

#define ADC_TIMEOUT             (100000)

uint16_t adc_get_sample(void)
{
    int cnt = ADC_TIMEOUT;

    SetBits16(GP_ADC_CTRL_REG, GP_ADC_START, 1);
    while (cnt-- && (GetWord16(GP_ADC_CTRL_REG) & GP_ADC_START) != 0x0000);
    SetWord16(GP_ADC_CLEAR_INT_REG, 0x0000); // Clear interrupt
    return GetWord16(GP_ADC_RESULT_REG);
}
