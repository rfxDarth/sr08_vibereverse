/* Run the state initializer at 0x07fcd908, then report success. */
extern void initialize_shared_control_state_tables_range1(void);

__attribute__((naked)) uint32_t initialize_state_and_return_one(void)
{
  __asm__ volatile (
      "push {lr}\n\t"
      "bl initialize_shared_control_state_tables_range1\n\t"
      "movs r0, #1\n\t"
      "pop {pc}\n\t");
}

