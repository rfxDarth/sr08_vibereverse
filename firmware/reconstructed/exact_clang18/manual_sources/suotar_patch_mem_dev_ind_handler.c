/* SDK 6.0.18.1182.1 app_suotar_task.c suotar_patch_mem_dev_ind_handler with the
 * app_suotar.c helpers it inlines, as modified by the vendor: only the SPI flash
 * image device can be started, the image bank is checked for every valid device,
 * the start callback is the vendor BLE parameter-update gate (stop has none), and
 * start, exit and image end all clear the CRC and the transfer indexes.
 * Image validation always reports SUOTAR_CMP_OK. reboot_requested is
 * merged_globals_5650.suota_activate_pending.
 * See third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt. */
#include "firmware/reconstructed/include/sr08_sdk_suotar.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

#define GAP_INVALID_CONIDX (0xFF)

extern void platform_reset(uint32_t error);
extern void app_easy_gap_disconnect(uint8_t conidx);
extern void gate_periodic_record_creation_sensor_mode_at_2dc4(void);

static void app_suotar_reset(void)
{
    merged_globals_5650.crc_calc = 0;
    merged_globals_56d0.new_patch_len = 0;
    merged_globals_56d0.suota_block_idx = 0;
    merged_globals_56d0.suota_img_idx = 0;
    merged_globals_56d0.suota_image_len = 0;
}

static void app_suotar_start(void)
{
    gate_periodic_record_creation_sensor_mode_at_2dc4();
    suotar_send_status_update_req((uint8_t) SUOTAR_IMG_STARTED);
    app_suotar_reset();
}

static void app_suotar_read_mem(uint32_t mem_dev, uint32_t* mem_info)
{
    uint8_t mem_dev_cmd = (uint8_t) ((mem_dev & SUOTAR_READ_MEM_DEV_TYPE) >> 24);

    // If valid memory device, store memory device type and base address
    if( mem_dev_cmd < SUOTAR_MEM_INVAL_DEV )
    {
        merged_globals_56d0.mem_base_add = mem_dev & SUOTAR_READ_MEM_BASE_ADD;

        // Store requested image bank (V204 keeps no image bank)
        if(merged_globals_56d0.mem_base_add <= 2)
        {
        }
        else
        {
            // Invalid image bank
            suotar_send_status_update_req((uint8_t) SUOTAR_INVAL_IMG_BANK);
            return;
        }
    }

    switch( mem_dev_cmd )
    {
        case SUOTAR_IMG_SPI_FLASH:
            app_suotar_start();
            break;

        case SUOTAR_MEM_SERVICE_EXIT:
            app_suotar_reset();
            suotar_send_status_update_req((uint8_t) SUOTAR_SRV_EXIT);
            break;

        case SUOTAR_IMG_END:
            if( merged_globals_5650.crc_calc != 0 )
            {
                suotar_send_status_update_req((uint8_t) SUOTAR_CRC_ERR);
            }
            else
            {
                suotar_send_status_update_req((uint8_t) SUOTAR_CMP_OK);
            }
            app_suotar_reset();
            break;

        case SUOTAR_REBOOT:
            if (merged_globals_56d0.app_env[0].conidx == GAP_INVALID_CONIDX)
            {
                // Reboot now since peer has already disconnected
                platform_reset(RESET_AFTER_SUOTA_UPDATE);
            }
            else
            {
                // Reboot is requested
                merged_globals_5650.suota_activate_pending = 1;

                // Send disconnect command
                app_easy_gap_disconnect(merged_globals_56d0.app_env[0].conidx);
            }
            break;

        default:
            suotar_send_status_update_req((uint8_t) SUOTAR_INVAL_MEM_TYPE);
            *mem_info = 0;
            break;
    }
}

int suotar_patch_mem_dev_ind_handler(ke_msg_id_t const msgid,
                                     struct suotar_patch_mem_dev_ind const *param,
                                     ke_task_id_t const dest_id,
                                     ke_task_id_t const src_id)
{
    uint32_t mem_info = 0;

    if (param->char_code)
    {
        app_suotar_read_mem(param->mem_dev, &mem_info);

        // write memory info to db
        // Inform SUOTAR task. Allocate the  memory info updadte indication
        suotar_send_mem_info_update_req(mem_info);
    }

    return (KE_MSG_CONSUMED);
}
