/* V204's app_easy_gap_param_update_start/create specialization (SDK app.c).
 * The cached command is sent once and the table slot is then released.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_format.h"
enum { GAPC_UPDATE_PARAMS = 9 };
extern struct gapc_param_update_cmd *gapc_param_update_commands[];
static __attribute__((always_inline)) inline struct gapc_param_update_cmd *get_update_message(uint8_t conidx, uint16_t interval_min, uint16_t interval_max) {
    struct gapc_param_update_cmd **table = gapc_param_update_commands;
    struct gapc_param_update_cmd **slot = table + conidx;
    if (*slot == 0) {
        struct gapc_param_update_cmd *cmd = ke_msg_alloc(GAPC_PARAM_UPDATE_CMD,
            ((uint16_t)conidx << 8) + TASK_GAPC, TASK_APP, sizeof(*cmd));
        cmd->operation = GAPC_UPDATE_PARAMS;
        *slot = cmd;
        arch_printf((const uint8_t *)"rcp %d,%d\n", interval_min, interval_max);
        volatile struct gapc_param_update_cmd *fields = cmd;
        fields->ce_len_max = 0;
        fields->ce_len_min = 0;
        fields->time_out = 600;
        fields->latency = 0;
        fields->intv_min = interval_min;
        fields->intv_max = interval_max;
    }
    return *slot;
}

__attribute__((used, section(".text.allocate_initialize_record_first_use_release_at_3254"))) void
allocate_initialize_record_first_use_release_at_3254(uint8_t conidx, uint16_t interval_min, uint16_t interval_max) {
    struct gapc_param_update_cmd *cmd = get_update_message(conidx, interval_min, interval_max);
    ke_msg_send(cmd);
    gapc_param_update_commands[conidx] = 0;
}
