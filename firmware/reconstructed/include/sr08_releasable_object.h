#ifndef SR08_RELEASABLE_OBJECT_H
#define SR08_RELEASABLE_OBJECT_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_allocator.h"

struct sr08_releasable_object {
    uint8_t reserved[0x10];
    /* Address of the releasable object or linked-list head. */
    uintptr_t handle;
};

static __inline__ __attribute__((always_inline)) void
sr08_release_and_clear_object_handle(struct sr08_releasable_object *object) {
    uintptr_t handle = object->handle;
    object->handle = 0;
    ke_free((void *)handle);
}

_Static_assert(offsetof(struct sr08_releasable_object, handle) == 0x10,
               "releasable object handle offset must remain 0x10");
_Static_assert(sizeof(struct sr08_releasable_object) == 0x14, "releasable object layout must remain five words");

#endif
