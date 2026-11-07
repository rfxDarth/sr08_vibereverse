import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileOptions;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.AddressRange;
import ghidra.program.model.address.AddressRangeIterator;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;

public class ExportThumbFunctions extends ghidra.app.script.GhidraScript {
    private static final String DEFAULT_ROOT = "/home/drath/Projects/personal/code/sr08_ai/firmware/decompiled/V204_functions/thumb_full";
    private static final String DEFAULT_VERSION = "V204";
    private static final String DEFAULT_SHA256 = "5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570";

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        String version = args.length > 0 ? args[0] : DEFAULT_VERSION;
        String sha256 = args.length > 1 ? args[1] : DEFAULT_SHA256;
        Path root = args.length > 2 ? Path.of(args[2]) : Path.of(DEFAULT_ROOT);
        Path functionsDir = root.resolve("functions");
        Files.createDirectories(functionsDir);
        File[] oldExports = functionsDir.toFile().listFiles();
        if (oldExports != null) {
            for (File oldExport : oldExports) {
                if (oldExport.isFile() && oldExport.getName().endsWith(".c") && !oldExport.delete()) {
                    throw new IllegalStateException("Could not replace stale export " + oldExport);
                }
            }
        }
        DecompInterface decompiler = new DecompInterface();
        decompiler.setOptions(new DecompileOptions());
        if (!decompiler.openProgram(currentProgram)) {
            throw new IllegalStateException(decompiler.getLastMessage());
        }

        int completed = 0;
        int failures = 0;
        StringBuilder index = new StringBuilder("address\tname\tranges\tstatus\terror\n");
        try {
            FunctionIterator functions = currentProgram.getFunctionManager().getFunctions(true);
            while (functions.hasNext()) {
                monitor.checkCancelled();
                Function function = functions.next();
                DecompileResults result = decompiler.decompileFunction(function, 30, monitor);
                String address = function.getEntryPoint().toString();
                String fileName = address + ".c";
                String status = result.decompileCompleted() && result.getDecompiledFunction() != null ? "written" : "failed";
                String error = result.getErrorMessage() == null ? "" : result.getErrorMessage().replace('\t', ' ').replace('\n', ' ');
                StringBuilder bodyRanges = new StringBuilder();
                AddressRangeIterator ranges = function.getBody().getAddressRanges(true);
                while (ranges.hasNext()) {
                    AddressRange range = ranges.next();
                    if (bodyRanges.length() > 0) bodyRanges.append(',');
                    bodyRanges.append(range.getMinAddress()).append('-').append(range.getMaxAddress());
                }
                index.append(address).append('\t').append(function.getName()).append('\t')
                    .append(bodyRanges).append('\t').append(status).append('\t').append(error).append('\n');
                if (status.equals("written")) {
                    String provenance = "/* Ghidra 12.1.4, Thumb-context analysis; " + version +
                        " payload SHA-256: " + sha256 + ". Not original source. */\n\n";
                    Files.writeString(functionsDir.resolve(fileName), provenance + result.getDecompiledFunction().getC());
                    completed++;
                } else {
                    failures++;
                }
                if ((completed + failures) % 50 == 0) {
                    println("Processed " + (completed + failures) + " functions; " + completed + " decompiled, " + failures + " failed.");
                }
            }
        } finally {
            decompiler.dispose();
        }
        Files.writeString(root.resolve("index.tsv"), index.toString());
        println("Finished: " + completed + " decompiled, " + failures + " failed.");
    }
}
