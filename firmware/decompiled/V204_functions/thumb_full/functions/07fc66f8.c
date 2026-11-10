/* Initialize measurement state for an eligible slot. */
#include <stdint.h>

extern int func_0x07f1bf1a(uint32_t slot_id);
extern int initialize_display_config_or_run_handler_range1(void);
extern void func_0x07f1beb6(uint32_t first, uint32_t second);
extern void initialize_measurement_state_unless_record_already_at_c538(void);

uint32_t initialize_measurement_for_enabled_slot(uint32_t unused_context_0,
                                                 uint32_t unused_context_1,
                                                 uint32_t slot_id)
{
  int slot_state;

  slot_state = func_0x07f1bf1a(slot_id);
  if ((slot_state == 1) &&
      ((slot_state = initialize_display_config_or_run_handler_range1()) != 0)) {
    func_0x07f1beb6(4, 2);
    initialize_measurement_state_unless_record_already_at_c538();
  }
  return 0;
}

