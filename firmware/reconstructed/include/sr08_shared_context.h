#ifndef SR08_SHARED_CONTEXT_H
#define SR08_SHARED_CONTEXT_H

/* Known byte offsets from the shared context base; its complete layout is unknown. */
enum sr08_shared_context_offset {
    SR08_SHARED_CONTEXT_SECONDARY_STEP_COUNT_OFFSET = 0x2c,
    SR08_SHARED_CONTEXT_TOTAL_STEP_COUNT_OFFSET = 0x38,
    SR08_SHARED_CONTEXT_TERTIARY_STEP_COUNT_OFFSET = 0x3c,
    SR08_SHARED_CONTEXT_DISPLAY_CHARACTER_OFFSET = 0x95,
};

#endif
