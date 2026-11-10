#ifndef SR08_STARTUP_EXCEPTION_VECTORS_H
#define SR08_STARTUP_EXCEPTION_VECTORS_H

#include <stddef.h>
#include <stdint.h>

/* Function pointers consumed by the reset, startup, NMI, and HardFault paths. */
struct sr08_startup_exception_vectors {
    void (*initialization_hook)(void);
    void (*reset_entry)(void);
    void (*nmi_entry)(const uint32_t *exception_context);
    void (*hardfault_entry)(const uint32_t *exception_context);
};

_Static_assert(offsetof(struct sr08_startup_exception_vectors, initialization_hook) == 0,
               "startup hook vector must remain at offset zero");
_Static_assert(offsetof(struct sr08_startup_exception_vectors, reset_entry) == 4,
               "reset entry vector must remain at offset four");
_Static_assert(offsetof(struct sr08_startup_exception_vectors, nmi_entry) == 8,
               "NMI vector must remain at offset eight");
_Static_assert(offsetof(struct sr08_startup_exception_vectors, hardfault_entry) == 12,
               "HardFault vector must remain at offset twelve");
_Static_assert(sizeof(struct sr08_startup_exception_vectors) == 16,
               "startup and exception vectors must remain 16 bytes");

#endif
