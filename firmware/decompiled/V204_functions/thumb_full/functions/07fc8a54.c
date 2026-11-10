/* Scan at most 254 pairs, stopping on the 0xff/0xff terminator. */
extern void process_two_packed_input_bytes_update_at_8ad8(
    uint8_t first, uint8_t second);

__attribute__((used, section(".text.FUN_07fc8a54")))
void scan_paired_bytes_until_lanes_are_at_8a54(uint8_t *pairs)
{
  register uint8_t *cursor __asm__("r4") = pairs;
  __asm__ volatile ("" : "+r" (cursor));
  register int remaining __asm__("r5") = 254;
  __asm__ volatile ("" : "+r" (remaining));

  /* Preserve V204's callee-saved set and aligned helper-call stack. */
  __asm__ volatile ("" ::: "r7");

  for (;;) {
    __asm__ goto ("cmp %0, #0\n\tbeq %l[done]"
                  : : "l" (remaining) : "cc" : done);

    register uint32_t second __asm__("r1") = cursor[1];
    register uint32_t first __asm__("r0") = cursor[0];
    register uint32_t both __asm__("r2") = first;
    __asm__ volatile ("" : "+r" (both));
    both &= second;
    __asm__ goto ("cmp %0, #255\n\tbeq %l[done]"
                  : : "l" (both) : "cc" : done);

    process_two_packed_input_bytes_update_at_8ad8(first, second);
    --remaining;
    __asm__ volatile ("" : "+r" (remaining) : "r" (cursor));
    cursor += 2;
  }

done:
  return;
}
