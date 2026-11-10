/* Clear the object handle field and release its previous value. */
#include <stdint.h>

#include "firmware/reconstructed/include/sr08_releasable_object.h"
#include "firmware/reconstructed/include/sr08_trivial_callbacks.h"

SR08_DEFINE_VOID_SINGLE_ARGUMENT_FORWARDER(release_and_clear_object_handle, struct sr08_releasable_object *object,
                                           object, sr08_release_and_clear_object_handle)
