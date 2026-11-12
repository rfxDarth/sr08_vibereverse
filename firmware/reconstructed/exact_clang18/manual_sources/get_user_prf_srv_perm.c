#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_profile_permissions.h"

enum {
    PROFILE_PERMISSION_SCAN_START_OFFSET = -20,
    PROFILE_PERMISSION_SCAN_END_OFFSET = 0,
    PROFILE_PERMISSION_PAIR_STRIDE = sizeof(struct sr08_profile_permission_pair),
    PROFILE_PERMISSION_MODE_LOOKUP_BIAS =
        offsetof(struct sr08_profile_permission_table, pairs[0].task_id) - PROFILE_PERMISSION_SCAN_START_OFFSET,
    PROFILE_PERMISSION_VALUE_LOOKUP_BIAS = offsetof(struct sr08_profile_permission_table, pairs[0].permission) -
                                     PROFILE_PERMISSION_SCAN_START_OFFSET - PROFILE_PERMISSION_PAIR_STRIDE,
    PROFILE_PERMISSION_NOT_FOUND = 4,
};

/* The SDK's app_prf_srv_perm[10] begins at shared-block offset0x66.
 * The signed loop offset retains V204's compiler-generated induction form.
 */
__attribute__((used, section(".text.get_user_prf_srv_perm"))) uint8_t
get_user_prf_srv_perm(uint32_t task_id) {
    const uint8_t *profile_permissions = (const uint8_t *)&merged_globals_56d0;

    int32_t entry_offset = PROFILE_PERMISSION_SCAN_START_OFFSET;
    while (entry_offset != PROFILE_PERMISSION_SCAN_END_OFFSET) {
        uint8_t candidate_task_id = profile_permissions[entry_offset + PROFILE_PERMISSION_MODE_LOOKUP_BIAS];
        entry_offset += PROFILE_PERMISSION_PAIR_STRIDE;
        if (candidate_task_id == task_id)
            return profile_permissions[entry_offset + PROFILE_PERMISSION_VALUE_LOOKUP_BIAS];
    }
    return PROFILE_PERMISSION_NOT_FOUND;
}
