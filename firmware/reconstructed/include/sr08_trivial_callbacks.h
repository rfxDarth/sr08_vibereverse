#ifndef SR08_TRIVIAL_CALLBACKS_H
#define SR08_TRIVIAL_CALLBACKS_H

#include <stdint.h>

/* Keep identical constant-return and empty callback bodies in one place. */
#define SR08_DEFINE_CONSTANT_U32_CALLBACK(name, value)                                                                 \
    uint32_t name(void) {                                                                                              \
        return value;                                                                                                  \
    }

#define SR08_DEFINE_EMPTY_VOID_CALLBACK(name)                                                                          \
    void name(void) {                                                                                                  \
    }

#define SR08_DEFINE_VOID_U32_FORWARDER(name, callback, argument)                                                       \
    void name(void) {                                                                                                  \
        callback(argument);                                                                                            \
    }

#define SR08_DEFINE_VOID_SINGLE_ARGUMENT_FORWARDER(name, parameter_declaration, parameter_name, callback)              \
    void name(parameter_declaration) {                                                                                 \
        callback(parameter_name);                                                                                      \
    }

#endif
