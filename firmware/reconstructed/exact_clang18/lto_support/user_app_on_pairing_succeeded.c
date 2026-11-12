/* V204's user_app_on_pairing_succeeded (user_callback_config.h's
 * app_on_pairing_succeeded), recovered from its inlined copy in
 * gapc_bond_ind_handler. Like the SDK's default_app_on_pairing_succeeded
 * (Renesas DA145xx SDK 6.0.18.1182.1; Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt) it stores a bond,
 * but in V204's own flash record instead of the bond database, and it marks
 * the connection encrypted and schedules the slot-11 timing record as
 * app_easy_security_accept_encryption does.
 */
#include "firmware/reconstructed/include/sr08_flash_operation.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"

#define app_env (merged_globals_56d0.app_env)
#define app_sec_env (merged_globals_53e4.app_sec_env)

enum {
    BOND_STORE_ADDRESS = 0x2d000,
    BOND_STORE_SECTOR_SIZE = 0x1000,
    BOND_STORE_HEAD_MAGIC = 0x1236,
    BOND_STORE_TAIL_MAGIC = 0x4323,
};

extern int write_indexed_timing_record(int slot_index, uint32_t timing_value, uint32_t data_word);
extern void schedule_callback_in_slot_eleven(void);

void user_app_on_pairing_succeeded(uint8_t conidx)
{
    if (app_sec_env[conidx].auth & GAP_AUTH_BOND)
    {
        merged_globals_53e4.bond_store_head_magic = BOND_STORE_HEAD_MAGIC;
        merged_globals_53e4.bond_store_tail_magic = BOND_STORE_TAIL_MAGIC;
        erase_flash_range_status(BOND_STORE_ADDRESS, BOND_STORE_SECTOR_SIZE);
        perform_flash_memory_operation((uint8_t *)&merged_globals_53e4, BOND_STORE_ADDRESS,
                                       sizeof(merged_globals_53e4), SR08_FLASH_PROGRAM);
        app_env[0].encrypted = true;
        write_indexed_timing_record(11, 1, (uint32_t)schedule_callback_in_slot_eleven);
    }
}
