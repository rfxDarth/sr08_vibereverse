/* hogpd_destroy from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

void hogpd_destroy(struct prf_task_env* env)
{
    struct hogpd_env_tag* hogpd_env = (struct hogpd_env_tag*) env->env;

    // free profile environment variables
    env->env = NULL;
    ke_free(hogpd_env);
}
