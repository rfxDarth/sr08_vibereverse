# Alice: remaining display writers/formatter after status-mod5 acceptance

No new display candidate is accepted or installed from this batch. Context
contains the accepted native status reader 0xa914 and native writer 0xacb8.
Candidate declarations use canonical merged_globals types.

Three-native group results: writer 0xacd0 matches all24 bytes, but signed
formatter0xa8ec chooses display root0xace0 instead of0xac78 (one byte), and
halfword writer0xa904 chooses0xace0 instead of0xacb4 (one byte). These values
are equal pointers, but do not match original bytes. three_native_context.log.

Writer-only changed-input isolation probe also passed all24 bytes locally
(writer_only_context.log). However, full source-only build with this writer
and the independently exact0x80d8 dispatcher FAILED canonical hash. Its six
display differences are0xa918,0xacc0,0xacc8-0xaccb: existing0xa914 is retargeted
to root0xace0 and original writer0xacb8 loses root0xacc8, moving its unique
constant there. The dispatcher region remains exact. Proof and rejected full
log in ../status_dispatch_offset/. Writer source, both native registrations,
and catalog rows have been restored. Local probes do not prove whole-image
parity. No guards, compiler profiles/support, Jeff or Tools changed.

Future work must preserve both0xacc8 and0xace0 storage and the original load
choices in existing native readers. Do not repeat the same writer-only probe
as acceptance evidence. No emitted binary was patched; rejected diagnostic
ELF/prefix is not a flash image.
