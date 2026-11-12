/* Vendor ADC read of single-ended input P0_1: the SDK's adc_get_vbat_sample
 * (sdk/platform/driver/adc/adc_58x.c, Renesas DA145xx SDK 6.0.18.1182.1;
 * Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt) with the input
 * changed from the battery to P0_1. It samples once with sign change on and
 * once with it off, and returns the sum, which cancels the ADC offset.
 */
#include "firmware/reconstructed/include/sr08_sdk_adc.h"

uint32_t adc_get_p0_1_sample(void)
{
    uint32_t adc_sample, adc_sample2;

    adc_config_t cfg =
    {
        .mode = ADC_INPUT_MODE_SINGLE_ENDED,
        .sign = true,
        .attn = true
    };

    adc_init(&cfg);

    adc_usDelay(20);

    adc_set_se_input(ADC_INPUT_SE_P0_1);

    adc_sample = adc_get_sample();

    adc_usDelay(1);

    cfg.sign = false;

    adc_init(&cfg);

    adc_set_se_input(ADC_INPUT_SE_P0_1);

    adc_sample2 = adc_get_sample();
    adc_sample = (adc_sample2 + adc_sample);

    adc_disable();

    return adc_sample;
}

void adc_disable(void)
{
    SetWord16(GP_ADC_CTRL_REG, 0);
}
