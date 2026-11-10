#ifndef SR08_NONRETURNING_H
#define SR08_NONRETURNING_H

/* These entry points deliberately halt by branching to their own address. */
#define SR08_DEFINE_NONRETURNING_SPIN_LOOP(function_name)                                                              \
    void function_name(void) {                                                                                         \
        for (;;) {                                                                                                     \
        }                                                                                                              \
    }

#endif
