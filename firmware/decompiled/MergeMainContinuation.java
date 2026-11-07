import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileOptions;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.FlowOverride;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.Listing;
import java.nio.file.Files;
import java.nio.file.Path;

/** Merge the main routine's Ghidra-split continuation for analysis only. */
public class MergeMainContinuation extends ghidra.app.script.GhidraScript {
    private static final long MAIN = 0x7fc98d4L;
    private static final long CONTINUATION = 0x7fc9da0L;
    private static final long SELF_CALL = 0x7fca5a4L;
    private static final Path OUTPUT = Path.of(
        "/home/drath/Projects/personal/code/sr08_ai/firmware/decompiled/V204_main_merged.c");

    @Override
    protected void run() throws Exception {
        Address mainEntry = toAddr(MAIN);
        Address continuationEntry = toAddr(CONTINUATION);
        FunctionManager manager = currentProgram.getFunctionManager();
        Function main = manager.getFunctionAt(mainEntry);
        Function continuation = manager.getFunctionAt(continuationEntry);
        if (main == null || continuation == null) {
            throw new IllegalStateException("Expected main and continuation functions were not found");
        }

        AddressSet mergedBody = new AddressSet(main.getBody());
        mergedBody.add(continuation.getBody());
        manager.removeFunction(continuationEntry);
        main.setBody(mergedBody);

        Listing listing = currentProgram.getListing();
        Instruction recursiveCall = listing.getInstructionAt(toAddr(SELF_CALL));
        if (recursiveCall == null || !recursiveCall.getFlowType().isCall()) {
            throw new IllegalStateException("Expected continuation back-edge call was not found");
        }
        // This BL never returns: the target is an internal continuation and the
        // caller loops forever after waking. Model its intra-function CFG edge.
        recursiveCall.setFlowOverride(FlowOverride.BRANCH);

        DecompInterface decompiler = new DecompInterface();
        decompiler.setOptions(new DecompileOptions());
        if (!decompiler.openProgram(currentProgram)) {
            throw new IllegalStateException(decompiler.getLastMessage());
        }
        try {
            DecompileResults result = decompiler.decompileFunction(main, 180, monitor);
            if (!result.decompileCompleted() || result.getDecompiledFunction() == null) {
                throw new IllegalStateException("Merged decompilation failed: " + result.getErrorMessage());
            }
            Files.writeString(OUTPUT,
                "/* Analysis-only merged Ghidra decompilation of V204 payload " +
                "SHA-256 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; " +
                "FlowOverride changes analysis only, not firmware bytes. Not original source. */\n\n" +
                result.getDecompiledFunction().getC());
            println("Merged ranges and wrote " + OUTPUT);
            println("Function body: " + main.getBody());
        } finally {
            decompiler.dispose();
        }
    }
}
