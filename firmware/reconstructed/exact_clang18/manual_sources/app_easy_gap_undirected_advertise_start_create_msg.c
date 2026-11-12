/* Reconstruct the SDK advertising command builder with V204 configuration.
 * SDK gapm_task.h layout from our SDK 6.0.24.1464; configuration and
 * unconditional device-name insertion are recovered from V204.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapm_advertising.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"
#include "firmware/reconstructed/include/sr08_device_name.h"
extern void __aeabi_memcpy(void *, const void *, uint32_t);

__attribute__((used,
               section(".text.app_easy_gap_undirected_advertise_start_create_msg"))) struct gapm_start_advertise_cmd *
app_easy_gap_undirected_advertise_start_create_msg(void) {
    if (SR08_MERGED_SCALAR(merged_globals_5650.adv_cmd) == 0) {
        struct gapm_start_advertise_cmd *cmd = ke_msg_alloc(0x0d0d, 9, 4, sizeof(*cmd));
        SR08_MERGED_SCALAR(merged_globals_5650.adv_cmd) = cmd;
        /* Preserve the vendor's separate channel/mode stores and setup order. */
        volatile struct gapm_start_advertise_cmd *setup = cmd;
        setup->channel_map = 7;
        setup->intv_max = 928;
        setup->intv_min = 928;
        setup->op.code_and_addr_src = 13; /* GAPM_ADV_UNDIRECT, static address source. */
        cmd->info.host.adv_filt_policy = 0;
        setup->info.host.mode = 1;
        uint8_t length = SR08_MERGED_SCALAR(merged_globals_5650.reserved_0a) ? 22 : 0;
        cmd->info.host.adv_data_len = length;
        __aeabi_memcpy(cmd->info.host.adv_data, merged_globals_574c.reserved_28, length);
        cmd->info.host.scan_rsp_data_len = 0;
        uint8_t name_length;
        const uint8_t *name = validate_cached_text_payload_return_install_at_8fb0(&name_length);
        /* Snapshot the output before touching the command; memcpy can alias
         * the original length object. This lifetime also reproduces V204's
         * addition operand order with ARM Compiler 6.16.
         */
        uint8_t cached_length = name_length;
        uint8_t existing = cmd->info.host.scan_rsp_data_len;
        /* Keep the SDK host subobject as the address base. The annotation
         * returns the address unchanged and generates no runtime operation.
         */
        struct gapm_adv_host *host =
            (struct gapm_adv_host *)__builtin_annotation((uintptr_t)&cmd->info.host, "advertising host");
        uint8_t *out = host->scan_rsp_data + existing;
        out[0] = cached_length + 1;
        out[1] = 9;
        __aeabi_memcpy(out + 2, name, cached_length);
        cmd->info.host.scan_rsp_data_len = cached_length + existing + 2;
    }
    return SR08_MERGED_SCALAR(merged_globals_5650.adv_cmd);
}
