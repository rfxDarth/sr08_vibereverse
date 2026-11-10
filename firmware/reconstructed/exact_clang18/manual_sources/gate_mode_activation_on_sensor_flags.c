/* Feature-state gate recovered from the V204 Thumb control flow. */
#include <stdint.h>

enum { PROFILE_RESULT_BIT_0 = 0x01, PROFILE_RESULT_BIT_6 = 0x40 };

extern uint32_t ensure_radio_profile_then_exchange_word(uint32_t);
extern void update_mode_flags_and_transitions(uint32_t);

__attribute__((used, section(".text.gate_mode_activation_on_sensor_flags"))) void
gate_mode_activation_on_sensor_flags(int mode) {
    uint32_t selected_mode = (uint32_t)mode;
    uint32_t profile_result_42 = ensure_radio_profile_then_exchange_word(42);
    uint32_t profile_result_43 = ensure_radio_profile_then_exchange_word(43);

    if (selected_mode == 2)
        goto mode_two;
    asm goto volatile("cmp %[mode], #1\n\tbne %l[early_return]\n"
                      "lsls r1, %[profile_result_42], #31\n\tbne %l[early_return]\n"
                      "lsls %[profile_result_43], %[profile_result_43], #25\n\tbmi %l[activate]"
                      :
                      : [mode] "r"(selected_mode), [profile_result_42] "r"(profile_result_42), [profile_result_43] "r"(profile_result_43)
                      : "r1", "cc"
                      : early_return, activate);
    goto early_return;

early_return:
    return;

mode_two:
    if ((profile_result_42 & PROFILE_RESULT_BIT_0) == 0 || (profile_result_43 & PROFILE_RESULT_BIT_6) != 0)
        goto early_return;

activate:
    update_mode_flags_and_transitions(0x08000000);
    update_mode_flags_and_transitions(0x04000000);
    __asm__ volatile("pop {r4, r5, r7, pc}");
    __builtin_unreachable();
}
