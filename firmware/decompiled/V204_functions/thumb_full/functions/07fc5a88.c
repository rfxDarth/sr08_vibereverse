/* Match an input index against the current measurement range. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_range.h"

extern uint32_t find_key_bounded_table_return_preceding_at_b080(uint32_t key);

uint32_t match_measurement_index_and_write_offset(
    uint32_t candidate_index, int8_t *relative_index)
{
  const struct sr08_measurement_range *range =
      (const struct sr08_measurement_range *)(uintptr_t)
          find_key_bounded_table_return_preceding_at_b080(0xfd);
  uint16_t range_start = range->range_start;
  uint32_t result = 0x80;

  /* Keep the original unsigned lower-bound branch encoding. */
  __asm__ goto volatile ("cmp %0, %1\n\tbhi %l[range_fail]"
                         : : "l"(range_start), "l"(candidate_index)
                         : "cc" : range_fail);
  if (candidate_index < (uint32_t)range->entry_count + range_start) {
    *relative_index = (int8_t)candidate_index - (int8_t)range_start;
    result = 0;
  }
range_fail:
  return result;
}

