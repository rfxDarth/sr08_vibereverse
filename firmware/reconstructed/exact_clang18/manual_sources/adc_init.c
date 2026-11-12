/* adc_init from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/adc/adc_58x.c, with the adc_configure,
 * adc_set_se_input and adc_set_diff_input it calls (V204's link inlined
 * them). Copyright (C) Dialog Semiconductor / Renesas Electronics
 * Corporation; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt.
 */
#include "firmware/reconstructed/include/sr08_sdk_adc.h"

void adc_set_se_input(adc_input_se_t input)
{
    SetBits16(GP_ADC_CTRL_REG, GP_ADC_SEL, input);
}

void adc_set_diff_input(adc_input_diff_t input)
{
    SetBits16(GP_ADC_CTRL_REG, GP_ADC_SEL, input);
}

static void adc_configure(const adc_config_t *cfg)
{
    if (cfg != NULL)
    {
        adc_set_input_mode(cfg->mode);

        // Set input channel as appropriate
        (cfg->mode == ADC_INPUT_MODE_SINGLE_ENDED)       ?
        adc_set_se_input((adc_input_se_t) cfg->input)    :
        adc_set_diff_input((adc_input_diff_t) cfg->input);

        (cfg->sign == false) ? SetBits16(GP_ADC_CTRL_REG, GP_ADC_SIGN, 0)
                             : SetBits16(GP_ADC_CTRL_REG, GP_ADC_SIGN, 1);

        SetWord16(GP_ADC_CTRL2_REG, GP_ADC_DELAY_EN | GP_ADC_I20U);

        (cfg->attn == false) ? SetBits16(GP_ADC_CTRL2_REG, GP_ADC_ATTN3X, 0)
                             : SetBits16(GP_ADC_CTRL2_REG, GP_ADC_ATTN3X, 1);
    }
}

void adc_init(const adc_config_t *cfg)
{
    SetWord16(GP_ADC_CTRL_REG, GP_ADC_LDO_EN | GP_ADC_EN);
    SetWord16(GP_ADC_CTRL2_REG, 0);

    NVIC_DisableIRQ(ADC_IRQn);

    adc_configure(cfg);
}
