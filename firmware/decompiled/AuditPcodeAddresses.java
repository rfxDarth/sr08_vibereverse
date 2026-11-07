import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileOptions;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.pcode.HighFunction;
import ghidra.program.model.pcode.PcodeOpAST;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/** Record instruction addresses represented by each decompiler CFG. */
public class AuditPcodeAddresses extends ghidra.app.script.GhidraScript {
    private static final String DEFAULT_OUTPUT =
        "/home/drath/Projects/personal/code/sr08_ai/firmware/decompiled/V204_pcode_addresses.tsv";

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        Path output = args.length == 0 ? Path.of(DEFAULT_OUTPUT) : Path.of(args[0]);
        DecompInterface decompiler = new DecompInterface();
        decompiler.setOptions(new DecompileOptions());
        if (!decompiler.openProgram(currentProgram)) {
            throw new IllegalStateException(decompiler.getLastMessage());
        }

        StringBuilder rows = new StringBuilder("function\taddress\tpcode_ops\tinside_function_body\n");
        int failed = 0;
        try {
            FunctionIterator functions = currentProgram.getFunctionManager().getFunctions(true);
            while (functions.hasNext()) {
                monitor.checkCancelled();
                Function function = functions.next();
                DecompileResults result = decompiler.decompileFunction(function, 30, monitor);
                HighFunction high = result.getHighFunction();
                if (!result.decompileCompleted() || high == null) {
                    failed++;
                    continue;
                }
                Map<Address, Integer> counts = new TreeMap<>();
                Iterator<PcodeOpAST> ops = high.getPcodeOps();
                while (ops.hasNext()) {
                    Address address = ops.next().getSeqnum().getTarget();
                    counts.merge(address, 1, Integer::sum);
                }
                for (Map.Entry<Address, Integer> entry : counts.entrySet()) {
                    Address address = entry.getKey();
                    rows.append(function.getEntryPoint()).append('\t').append(address).append('\t')
                        .append(entry.getValue()).append('\t')
                        .append(function.getBody().contains(address)).append('\n');
                }
            }
        } finally {
            decompiler.dispose();
        }
        Files.writeString(output, rows.toString());
        println("Wrote decompiler instruction addresses to " + output + "; failed functions: " + failed);
    }
}
