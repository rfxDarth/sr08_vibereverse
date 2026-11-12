/* The DA14585 ADC driver interface V204 uses, from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/platform/driver/adc/adc.h and adc_58x.h (Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_ADC_H
#define SR08_SDK_ADC_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

#define ADC_TIMEOUT             (100000)

typedef enum
{
    ADC_INPUT_MODE_DIFFERENTIAL = 0,
    ADC_INPUT_MODE_SINGLE_ENDED = 1
} adc_input_mode_t;

typedef enum
{
    ADC_INPUT_SE_P0_0    = 0,
    ADC_INPUT_SE_P0_1    = 1,
    ADC_INPUT_SE_P0_2    = 2,
    ADC_INPUT_SE_P0_3    = 3,
    ADC_INPUT_SE_AVS     = 4,
    ADC_INPUT_SE_VDD_REF = 5,
    ADC_INPUT_SE_VDD_RTT = 6,
    ADC_INPUT_SE_VBAT3V  = 7,
    ADC_INPUT_SE_VDCDC   = 8,
    ADC_INPUT_SE_VBAT1V  = 9
} adc_input_se_t;

typedef enum
{
    ADC_INPUT_DIFF_P0_0_P0_1 = 0,
    ADC_INPUT_DIFF_P0_2_P0_3 = 1
} adc_input_diff_t;

typedef struct
{
    adc_input_mode_t    mode;
    uint8_t             input;
    bool                sign;
    bool                attn;
} adc_config_t;

static inline __attribute__((always_inline)) void adc_set_input_mode(adc_input_mode_t input_mode)
{
    SetBits16(GP_ADC_CTRL_REG, GP_ADC_SE, input_mode);
}

void adc_init(const adc_config_t *cfg);
void adc_set_se_input(adc_input_se_t input);
void adc_set_diff_input(adc_input_diff_t input);
void adc_disable(void);
uint16_t adc_get_sample(void);
void adc_usDelay(uint32_t nof_us);

#endif
