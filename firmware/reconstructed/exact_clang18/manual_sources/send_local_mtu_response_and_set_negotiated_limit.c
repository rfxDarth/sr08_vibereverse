/* Reply with the local MTU, then negotiate the peer/local MTU limit. */
#include <stddef.h>
#include <stdint.h>

struct sr08_mtu_update_pdu {
    uint16_t header;
    uint16_t maximum_mtu;
};

_Static_assert(offsetof(struct sr08_mtu_update_pdu, maximum_mtu) == 2, "MTU field must remain at byte two");
_Static_assert(sizeof(struct sr08_mtu_update_pdu) == 4, "MTU update PDU prefix must remain four bytes");

extern void *atts_allocate_pdu(uint32_t, uint32_t, uint32_t);
extern uint16_t gattm_get_max_mtu(void);
extern void atts_send_pdu(void *);
extern void gattc_set_mtu(uint32_t, uint32_t);

__attribute__((used, section(".text.send_local_mtu_response_and_set_negotiated_limit"))) uint32_t
send_local_mtu_response_and_set_negotiated_limit(uint32_t connection_index,
                                                 const struct sr08_mtu_update_pdu *peer_request) {
    uint32_t zero, three;
    __asm__ volatile("movs %[zero], #0\n\tmovs %[three], #3" : [zero] "=r"(zero), [three] "=r"(three));

    register uint32_t saved_connection_index __asm__("r4") = connection_index;
    register const struct sr08_mtu_update_pdu *saved_peer_request __asm__("r6") = peer_request;
    register struct sr08_mtu_update_pdu *response_pdu __asm__("r5") =
        atts_allocate_pdu(saved_connection_index, three, zero);
    response_pdu->maximum_mtu = gattm_get_max_mtu();
    atts_send_pdu(response_pdu);

    register uint32_t value __asm__("r0") = gattm_get_max_mtu();
    asm goto volatile("ldrh r1, [%[record], #2]\n\tcmp r0, r1\n\t"
                      "bcc %l[below]\n\tmov r0, r1"
                      : "+r"(value)
                      : [record] "r"(saved_peer_request)
                      : "r1", "cc"
                      : below);
below:
    gattc_set_mtu(saved_connection_index, value);
    return 0;
}
