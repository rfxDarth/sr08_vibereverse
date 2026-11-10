/* Advance the ring's queue head and submit the selected queue entry. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_submission_queue_state.h"

__attribute__((used, section(".text.advance_ring_s_queue_and_submit_entry"))) void
advance_ring_s_queue_and_submit_entry(uint32_t value) {
    volatile struct sr08_submission_queue_state *queue;
    uint32_t inverse_mask;
    uint32_t head;
    uint32_t count;
    uint32_t pending;
    uint32_t next;

    __asm__ volatile("ldr %[queue], [pc, #132]" : [queue] "=r"(queue));
    inverse_mask = ~queue->index_mask;
    head = queue->head;
    count = queue->count;
    __asm__ volatile("adds %[pending], %[head], %[inverse_mask]\n\t"
                     "subs %[next], %[count], #1"
                     : [pending] "=r"(pending), [next] "=r"(next)
                     : [head] "r"(head), [inverse_mask] "r"(inverse_mask), [count] "r"(count)
                     : "cc");
    if (next & pending) {
        next &= head - 1;
        uint32_t call_address;
        uint32_t copy_size;
        __asm__ volatile("ldr %[copy_size], [%[queue], #64]\n\t"
                         "ldr %[call_address], [%[queue], #68]\n\t"
                         "mov r3, %[next]\n\t"
                         "muls r3, %[copy_size]\n\t"
                         "adds %[call_address], %[call_address], r3"
                         : [call_address] "=&r"(call_address), [copy_size] "=&r"(copy_size)
                         : [queue] "r"(queue), [next] "r"(next)
                         : "r3", "cc", "memory");
        __aeabi_memcpy((void *)(uintptr_t)call_address, (const void *)(uintptr_t)value, copy_size);
        queue->head = next;
    }
}
