/* custs_get_func_callbacks from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_custs/app_customs.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined it into its callers and folded the cust_prf_funcs lookups.
 */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"

const struct cust_prf_func_callbacks *custs_get_func_callbacks(enum KE_API_ID task_id)
{
    int i = 0;

    // max number of service characteristics
    while (cust_prf_funcs[i].task_id != TASK_ID_INVALID)
    {
        if(cust_prf_funcs[i].task_id == task_id)
            return &cust_prf_funcs[i];
        else
            i++;
    }
    return NULL;
}
