#ifndef SR08_KERNEL_ALLOCATOR_H
#define SR08_KERNEL_ALLOCATOR_H

#include <stdint.h>

/* Kernel allocation class is passed as a full ABI word. */
void *ke_malloc(uint32_t byte_count, uint32_t allocation_class);
void ke_free(void *object);

#endif
