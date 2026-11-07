# SR08 ring reverse engineering

This repository contains the ring clicker CLI, firmware analysis artifacts, and
an address-exact V204 reconstruction.

The complete rebuilt firmware container is `firmware/reconstructed/exact_clang18/V204_reconstructed.bin`.
The reproducible build and byte-for-byte verification instructions are in
[`firmware/reconstructed/exact_clang18/README.md`](firmware/reconstructed/exact_clang18/README.md).
The V204 payload and full container are checked against the supplied firmware
artifacts during the build.

The ATC SR08 reference project is included as a Git submodule. Initialize it
with `git submodule update --init --recursive`.
