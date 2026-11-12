#ifndef SR08_STARTUP_EXCEPTION_VECTORS_H
#define SR08_STARTUP_EXCEPTION_VECTORS_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

/* Function pointers consumed by the reset, startup, NMI, and HardFault paths. */
struct sr08_startup_exception_vectors {
    void (*initialization_hook)(void);
    void (*reset_entry)(void);
    void (*nmi_entry)(const uint32_t *exception_context);
    void (*hardfault_entry)(const uint32_t *exception_context);
};

SR08_STATIC_ASSERT(offsetof(struct sr08_startup_exception_vectors, initialization_hook) == 0,
               "startup hook vector must remain at offset zero");
SR08_STATIC_ASSERT(offsetof(struct sr08_startup_exception_vectors, reset_entry) == 4,
               "reset entry vector must remain at offset four");
SR08_STATIC_ASSERT(offsetof(struct sr08_startup_exception_vectors, nmi_entry) == 8,
               "NMI vector must remain at offset eight");
SR08_STATIC_ASSERT(offsetof(struct sr08_startup_exception_vectors, hardfault_entry) == 12,
               "HardFault vector must remain at offset twelve");
SR08_STATIC_ASSERT(sizeof(struct sr08_startup_exception_vectors) == 16,
               "startup and exception vectors must remain 16 bytes");

#endif
