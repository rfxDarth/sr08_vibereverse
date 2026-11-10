/*
 * Upsert a variable-length item in the measurement-record list.
 *
 * The 0xfd lookup record contains the list head at +0x10. Each list node is:
 *   +0  next-node pointer
 *   +4  selector byte
 *   +5  payload-length byte
 *   +6  payload bytes
 * Nodes allocate payload_length + 8 bytes, matching the original allocator
 * layout. An existing selector with a different length is removed and freed;
 * a same-length node is updated in place.
 *
 * The direct C version is 106 bytes with the normal -Os build. With -Oz it
 * fits the 98-byte slot, but Clang reverses the register operands in both
 * equality comparisons. Those two Thumb encodings differ from V204, so the
 * exact instruction sequence remains pinned until the comparisons can be
 * expressed in C without changing their encodings.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_kernel_allocator.h"
#include "firmware/reconstructed/include/sr08_kernel_list.h"
#include "firmware/reconstructed/include/sr08_record_lookup.h"
#include "firmware/reconstructed/include/sr08_releasable_object.h"
#include "firmware/reconstructed/include/sr08_variable_length_record.h"

__attribute__((naked, used, section(".text.upsert_variable_length_list_record"))) void
upsert_variable_length_list_record(uint32_t selector, uint32_t length, const void *data) {
    __asm__ volatile("push {r1, r2, r3, r4, r5, r6, r7, lr}\n\t"
                     /* Preserve the payload pointer and keep length/selector in callee-saved registers. */
                     "str r2, [sp, #8]\n\t"
                     "mov r7, r1\n\t"
                     "mov r5, r0\n\t"
                     /* The list head begins 16 bytes into lookup record 0xfd. */
                     "movs r0, #253\n\t"
                     "bl find_keyed_record_value\n\t"
                     "mov r6, r0\n\t"
                     "adds r6, #16\n\t"
                     "str r7, [sp, #4]\n\t"
                     "mov r4, r6\n\t"
                     /* Find the selector; reuse it only when its length also matches. */
                     ".Lscan: ldr r4, [r4, #0]\n\t"
                     "cmp r4, #0\n\t"
                     "beq .Lallocate\n\t"
                     "ldrb r0, [r4, #4] /* node->record_id */\n\t"
                     "cmp r0, r5\n\t"
                     "bne .Lscan\n\t"
                     "ldrb r0, [r4, #5] /* node->value_length */\n\t"
                     "cmp r0, r7\n\t"
                     "beq .Lcopy\n\t"
                     "movs r2, #0\n\t"
                     "mov r0, r6\n\t"
                     "mov r1, r4\n\t"
                     "bl co_list_extract\n\t"
                     "mov r0, r4\n\t"
                     "bl ke_free\n\t"
                     /* Allocate and clear a replacement node, then append it. */
                     ".Lallocate: adds r7, #8\n\t"
                     "movs r1, #1\n\t"
                     "mov r0, r7\n\t"
                     "bl ke_malloc\n\t"
                     "mov r4, r0\n\t"
                     "mov r1, r7\n\t"
                     "bl __aeabi_memclr\n\t"
                     "mov r0, r6\n\t"
                     "mov r1, r4\n\t"
                     "bl co_list_push_back\n\t"
                     /* Store the node header and copy the payload at byte six. */
                     ".Lcopy: ldr r2, [sp, #4]\n\t"
                     "strb r2, [r4, #5] /* node->value_length */\n\t"
                     "strb r5, [r4, #4] /* node->record_id */\n\t"
                     "adds r0, r4, #6 /* node->values */\n\t"
                     "ldr r1, [sp, #8]\n\t"
                     "bl __aeabi_memcpy\n\t"
                     "pop {r1, r2, r3, r4, r5, r6, r7, pc}\n\t");
}
