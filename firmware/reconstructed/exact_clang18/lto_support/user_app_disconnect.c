/* V204's user_app_disconnect (user_callback_config.h's app_on_disconnect),
 * recovered from its inlined copy in gapc_disconnect_ind_handler. It is the
 * SDK's peripheral template version (Renesas DA145xx SDK 6.0.18.1182.1;
 * Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt) without the
 * manufacturer-data update, with V204's additions: a pending SUOTA image is
 * activated (copied from its staging area at 0x6c000 to 0x18000 first, and
 * marked with 0xaa), the activation is recorded, and the device restarts.
 */
#include "firmware/reconstructed/include/sr08_flash_operation.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sensor_status_record.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_param_update_request_timer_used \
    SR08_MERGED_SCALAR(merged_globals_5650.app_param_update_request_timer_used)
#define suota_activate_pending SR08_MERGED_SCALAR(merged_globals_5650.suota_activate_pending)
#define suota_copy_pending SR08_MERGED_SCALAR(merged_globals_5650.suota_copy_pending)

/* arch.h */
#define RESET_AFTER_SUOTA_UPDATE    0x11111111

enum {
    SUOTA_IMAGE_ADDRESS = 0x18000,
    SUOTA_STAGED_IMAGE_ADDRESS = 0x6c000,
    SUOTA_IMAGE_SIZE = 0x14000,
    SUOTA_COPY_BLOCK_SIZE = 1024,
};

extern void platform_reset(uint32_t error);
extern struct sr08_sensor_status_context sensor_status_context;
extern void stage_and_program_flash_region_3c000(void);
extern void reset_related_capture_sensor_state_control_at_4fc8(int);

void user_app_disconnect(struct gapc_disconnect_ind const *param)
{
    // Cancel the parameter update request timer
    if (app_param_update_request_timer_used != EASY_TIMER_INVALID_TIMER)
    {
        app_easy_timer_cancel(app_param_update_request_timer_used);
        app_param_update_request_timer_used = EASY_TIMER_INVALID_TIMER;
    }

    // Restart Advertising
    user_app_adv_start();

    if (suota_activate_pending == 1)
    {
        suota_activate_pending = 0;
        if (suota_copy_pending == 1)
        {
            uint32_t image = SUOTA_IMAGE_ADDRESS;
            uint32_t staged = SUOTA_STAGED_IMAGE_ADDRESS;
            uint8_t marker;

            erase_flash_range_status(SUOTA_IMAGE_ADDRESS, SUOTA_IMAGE_SIZE);
            for (int block = 0; block < SUOTA_IMAGE_SIZE / SUOTA_COPY_BLOCK_SIZE; block++)
            {
                perform_flash_memory_operation((uint8_t *)&sensor_status_context, staged,
                                               SUOTA_COPY_BLOCK_SIZE, SR08_FLASH_READ);
                perform_flash_memory_operation((uint8_t *)&sensor_status_context, image,
                                               SUOTA_COPY_BLOCK_SIZE, SR08_FLASH_PROGRAM);
                image += SUOTA_COPY_BLOCK_SIZE;
                staged += SUOTA_COPY_BLOCK_SIZE;
            }
            marker = 0xaa;
            perform_flash_memory_operation(&marker, SUOTA_IMAGE_ADDRESS + 2, 1, SR08_FLASH_PROGRAM);
        }
        sr08_shared_context.suota_activation.marker = 0xaaaa;
        sr08_shared_context.suota_activation.value =
            SR08_MERGED_SCALAR(merged_globals_56d0.suota_activation_value);
        stage_and_program_flash_region_3c000();
        platform_reset(RESET_AFTER_SUOTA_UPDATE);
    }

    reset_related_capture_sensor_state_control_at_4fc8(0);
}
