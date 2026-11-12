#ifndef SR08_PROFILE_PERMISSIONS_H
#define SR08_PROFILE_PERMISSIONS_H
#include <stdint.h>
#include <stddef.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

/* app.c's app_prf_srv_sec_t records, retained in the block at0x07fd56d0. */
struct sr08_profile_permission_pair {
    uint8_t task_id;
    uint8_t permission;
};
enum { SR08_PROFILE_PERMISSION_PAIR_COUNT = 10 };
struct sr08_profile_permission_table {
    uint8_t reserved_prefix[0x66];
    struct sr08_profile_permission_pair pairs[SR08_PROFILE_PERMISSION_PAIR_COUNT];
};
SR08_STATIC_ASSERT(offsetof(struct sr08_profile_permission_table, pairs) == 0x66,
                   "profile permissions begin at shared-block offset0x66");
SR08_STATIC_ASSERT(sizeof(struct sr08_profile_permission_pair) == 2, "profile permission record layout");
SR08_STATIC_ASSERT(sizeof(struct sr08_profile_permission_table) == 0x7a, "profile permission table extent");
#endif
