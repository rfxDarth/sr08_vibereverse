/* Drain a linked record list, clear the record head, then release its state. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_list.h"
#include "firmware/reconstructed/include/sr08_releasable_object.h"

__attribute__((used, section(".text.drain_linked_record_list_and_clear_head"))) void
drain_linked_record_list_and_clear_head(struct sr08_releasable_object *record_argument) {
    struct sr08_releasable_object *list_object = (struct sr08_releasable_object *)record_argument->handle;

    uintptr_t *head_link = &list_object->handle;

again:
    if (*head_link == 0)
        goto done;
    ke_free(co_list_pop_front(head_link));
    goto again;

done:

    record_argument->handle = 0;
    ke_free(list_object);
}
