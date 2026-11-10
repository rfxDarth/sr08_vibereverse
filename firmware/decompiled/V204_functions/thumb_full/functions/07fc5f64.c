extern void update_mode_flags_and_transitions(uint32_t flags);

void clear_mode_flags_0x0011(void)
{
    update_mode_flags_and_transitions(0x00110000u);
}

