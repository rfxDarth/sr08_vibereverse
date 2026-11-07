// Re-run after importing V204.payload.bin as ARM:LE:32:v7 at 0x07fc0000.
// Force Ghidra to model instruction streams omitted by auto-analysis.
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileOptions;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.lang.Register;
import java.math.BigInteger;

public class RecoverMissedFunctions extends ghidra.app.script.GhidraScript {
    private static final long[] STARTS = {
        0x7fc0130L, 0x7fc0144L, 0x7fc014cL, 0x7fc0164L,
        0x7fc017cL, 0x7fc017eL, 0x7fc0180L, 0x7fc0182L,
        0x7fc1c0cL, 0x7fc1d88L,
        0x7fc0a98L, 0x7fc11f8L, 0x7fc174cL, 0x7fc1df8L,
        0x7fc2ff4L, 0x7fc302cL, 0x7fc3220L, 0x7fc32bcL, 0x7fc334cL,
        0x7fc33a4L, 0x7fc33c0L, 0x7fc34a8L,
        0x7fc3584L, 0x7fc3b58L, 0x7fc4fc8L,
        0x7fc5808L, 0x7fc5db4L, 0x7fc6dbcL, 0x7fc7358L,
        0x7fc75d4L, 0x7fc77fcL, 0x7fc97acL, 0x7fc97f0L,
        0x7fc01e8L, 0x7fc022cL, 0x7fc0274L, 0x7fc02ecL,
        0x7fc034aL, 0x7fc0374L, 0x7fc042aL,
        0x7fc046eL, 0x7fc04fcL, 0x7fc0664L, 0x7fc0758L,
        0x7fc077eL, 0x7fc0874L, 0x7fc08baL, 0x7fc09dcL, 0x7fc0a2aL,
        0x7fc0bacL, 0x7fc132aL, 0x7fc1394L, 0x7fc1426L,
        0x7fc17bcL, 0x7fc180cL, 0x7fc1894L,
        0x7fc1c18L, 0x7fc1cdcL, 0x7fc1ce6L, 0x7fc1cf0L,
        0x7fc1cfaL, 0x7fc1d04L, 0x7fc1ea4L, 0x7fc1f34L,
        0x7fc4110L, 0x7fc4144L, 0x7fc5484L, 0x7fc549cL,
        0x7fc5cbcL, 0x7fc5f28L, 0x7fc5f30L,
        0x7fc61e4L, 0x7fc625cL, 0x7fc6358L, 0x7fc64a8L,
        0x7fc65d0L, 0x7fc66c0L, 0x7fc66f8L, 0x7fc677cL,
        0x7fc67f0L, 0x7fc6804L, 0x7fc686cL, 0x7fc6998L,
        0x7fc6fc0L, 0x7fc7bccL, 0x7fc7c88L, 0x7fc7db4L,
        0x7fc8b2cL, 0x7fc8b6cL, 0x7fc8bdcL,
        0x7fca84cL, 0x7fca89cL, 0x7fca8ecL, 0x7fca914L,
        0x7fca960L, 0x7fcaa68L, 0x7fcaae8L, 0x7fcab3cL,
        0x7fcab78L, 0x7fcabb4L, 0x7fcac20L, 0x7fcace8L,
        0x7fcad54L, 0x7fcad78L, 0x7fcb0a8L, 0x7fcb0d0L,
        0x7fcb0f8L, 0x7fcb1b0L, 0x7fcb924L, 0x7fcb980L,
        0x7fcc148L, 0x7fcc2f0L, 0x7fcc31cL, 0x7fcc414L,
        0x7fcc728L, 0x7fcc8b0L, 0x7fcca2cL,
        0x7fc5f38L, 0x7fc5f64L, 0x7fc5f70L, 0x7fc5f7cL,
        0x7fc5f80L, 0x7fc5fb0L, 0x7fc60ecL, 0x7fc6458L,
        0x7fc98a0L, 0x7fcc118L, 0x7fcc3ccL, 0x7fcc3f0L,
        0x7fcc538L, 0x7fcc9c8L,
        // Thumb function-pointer candidates found in unclaimed bytes. Sources
        // include V204 callback/dispatch tables; inspect each before treating
        // all forced boundaries as certain.
        0x7fc022aL, 0x7fc1e4cL, 0x7fc20d4L, 0x7fc3028L,
        0x7fc31f4L, 0x7fc3e40L, 0x7fc5654L, 0x7fc5694L,
        0x7fc57b4L, 0x7fc5e50L, 0x7fc5e52L, 0x7fc5f7eL,
        0x7fc6440L, 0x7fc653cL, 0x7fc6560L, 0x7fc6564L,
        0x7fc65c8L, 0x7fc65ccL, 0x7fc671cL, 0x7fc6720L,
        0x7fc6bf0L, 0x7fc8b20L, 0x7fc8b48L, 0x7fc8b54L,
        0x7fc8b88L, 0x7fc8b94L, 0x7fc8ba0L, 0x7fc8bacL,
        0x7fc8bb8L, 0x7fc8bc4L, 0x7fc8bd0L, 0x7fc97caL,
        0x7fc97d8L, 0x7fc9880L, 0x7fca79cL, 0x7fca844L,
        0x7fca848L, 0x7fca904L, 0x7fcaa4cL, 0x7fcac7cL,
        0x7fcacb8L, 0x7fcacd0L, 0x7fcaf60L, 0x7fcaf78L,
        0x7fcaf84L, 0x7fcaf9cL, 0x7fcb014L, 0x7fcb828L,
        0x7fcb8d0L, 0x7fcb8d4L, 0x7fcb960L, 0x7fcb962L,
        0x7fcb96cL, 0x7fcb97cL, 0x7fcbbc4L, 0x7fcbbdcL,
        0x7fcbc3aL, 0x7fcc4acL, 0x7fcc4aeL
    };

    @Override
    protected void run() throws Exception {
        Register thumbMode = currentProgram.getProgramContext().getRegister("TMode");
        if (thumbMode == null) {
            throw new IllegalStateException("ARM context register TMode was not found");
        }
        setThumbAndClear(thumbMode, 0x7fc0130L, 0x7fc0193L);
        setThumbAndClear(thumbMode, 0x7fc1c0cL, 0x7fc1c17L);
        setThumbAndClear(thumbMode, 0x7fc1d88L, 0x7fc1d9fL);
        setThumbAndClear(thumbMode, 0x7fc0a90L, 0x7fc0adbL);
        setThumbAndClear(thumbMode, 0x7fc11f8L, 0x7fc1329L);
        setThumbAndClear(thumbMode, 0x7fc174cL, 0x7fc17bbL);
        setThumbAndClear(thumbMode, 0x7fc1df8L, 0x7fc1e3fL);
        setThumbAndClear(thumbMode, 0x7fc2ff4L, 0x7fc3027L);
        setThumbAndClear(thumbMode, 0x7fc3028L, 0x7fc3147L);
        setThumbAndClear(thumbMode, 0x7fc3220L, 0x7fc324dL);
        setThumbAndClear(thumbMode, 0x7fc32bcL, 0x7fc33ffL);
        setThumbAndClear(thumbMode, 0x7fc34a4L, 0x7fc3563L);
        setThumbAndClear(thumbMode, 0x7fc3584L, 0x7fc37bdL);
        setThumbAndClear(thumbMode, 0x7fc3b58L, 0x7fc3b77L);
        setThumbAndClear(thumbMode, 0x7fc4fc8L, 0x7fc501dL);
        setThumbAndClear(thumbMode, 0x7fc5808L, 0x7fc5843L);
        setThumbAndClear(thumbMode, 0x7fc5db4L, 0x7fc5dd5L);
        setThumbAndClear(thumbMode, 0x7fc5f38L, 0x7fc653fL);
        setThumbAndClear(thumbMode, 0x7fc6dbcL, 0x7fc6fabL);
        setThumbAndClear(thumbMode, 0x7fc7358L, 0x7fc737bL);
        setThumbAndClear(thumbMode, 0x7fc75d4L, 0x7fc769fL);
        setThumbAndClear(thumbMode, 0x7fc77fcL, 0x7fc7ba9L);
        setThumbAndClear(thumbMode, 0x7fc97acL, 0x7fc97bdL);
        setThumbAndClear(thumbMode, 0x7fc97f0L, 0x7fc9827L);
        setThumbAndClear(thumbMode, 0x7fc987eL, 0x7fc98d3L);
        setThumbAndClear(thumbMode, 0x7fcc118L, 0x7fcc147L);
        setThumbAndClear(thumbMode, 0x7fcc148L, 0x7fcc493L);
        setThumbAndClear(thumbMode, 0x7fcc534L, 0x7fcc577L);
        setThumbAndClear(thumbMode, 0x7fcc9c8L, 0x7fcc9fdL);

        DecompInterface decompiler = new DecompInterface();
        decompiler.setOptions(new DecompileOptions());
        if (!decompiler.openProgram(currentProgram)) {
            throw new IllegalStateException(decompiler.getLastMessage());
        }
        try {
            for (long value : STARTS) {
                monitor.checkCancelled();
                Address address = toAddr(value);
                Function function = getFunctionAt(address);
                if (function == null) {
                    Function containing = getFunctionContaining(address);
                    if (containing != null) {
                        println(String.format("SKIP 0x%08x inside %s at %s", value,
                            containing.getName(), containing.getEntryPoint()));
                        continue;
                    }
                    clearListing(address, address.add(3));
                    currentProgram.getProgramContext().setValue(thumbMode, address, address.add(3), BigInteger.ONE);
                    disassemble(address);
                    function = createFunction(address, null);
                }
                if (function == null) {
                    println(String.format("NO FUNCTION at 0x%08x", value));
                    continue;
                }
                DecompileResults result = decompiler.decompileFunction(function, 60, monitor);
                println(String.format("FUNCTION 0x%08x %s [%s]", value,
                    function.getBody(), result.getErrorMessage()));
                if (result.decompileCompleted() && result.getDecompiledFunction() != null) {
                    String name = String.format("V204_functions/manual_0x%08x.c", value);
                    java.io.File output = new java.io.File("/home/drath/Projects/personal/code/sr08_ai/firmware/decompiled/" + name);
                    output.getParentFile().mkdirs();
                    String header = "/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: " +
                        "5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; " +
                        "Thumb context explicitly set. Not original source. */\n\n";
                    java.nio.file.Files.writeString(output.toPath(), header + result.getDecompiledFunction().getC());
                    println("WROTE " + output.getAbsolutePath());
                }
            }
        } finally {
            decompiler.dispose();
        }
    }

    private void setThumbAndClear(Register thumbMode, long first, long last) throws Exception {
        Address low = toAddr(first);
        Address high = toAddr(last);
        clearListing(low, high);
        currentProgram.getProgramContext().setValue(thumbMode, low, high, BigInteger.ONE);
    }
}
