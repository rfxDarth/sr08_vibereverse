import ghidra.program.model.address.AddressSetView;
import ghidra.program.model.listing.CodeUnit;
import ghidra.program.model.listing.CodeUnitIterator;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;
import java.nio.file.Files;
import java.nio.file.Path;

/** Export Ghidra's current code/data listing and references for gap review. */
public class AuditCodeUnits extends ghidra.app.script.GhidraScript {
    private static final String DEFAULT_OUTPUT =
        "/home/drath/Projects/personal/code/sr08_ai/firmware/decompiled/V204_code_units.tsv";

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        Path output = args.length == 0 ? Path.of(DEFAULT_OUTPUT) : Path.of(args[0]);
        Memory memory = currentProgram.getMemory();
        AddressSetView loaded = memory.getLoadedAndInitializedAddressSet();
        CodeUnitIterator units = currentProgram.getListing().getCodeUnits(loaded, true);
        StringBuilder rows = new StringBuilder("start\tend\tkind\towner\tflow\tdescription\tincoming\n");
        int count = 0;
        while (units.hasNext()) {
            monitor.checkCancelled();
            CodeUnit unit = units.next();
            String kind = unit instanceof Instruction ? "instruction" : "data";
            String owner = "";
            Function function = currentProgram.getFunctionManager().getFunctionContaining(unit.getMinAddress());
            if (function != null) owner = function.getEntryPoint().toString();
            String flow = "";
            if (unit instanceof Instruction) {
                flow = ((Instruction) unit).getFlowType().toString();
            }
            String description = unit.toString();
            ReferenceIterator references = currentProgram.getReferenceManager().getReferencesTo(unit.getMinAddress());
            StringBuilder incoming = new StringBuilder();
            while (references.hasNext()) {
                Reference reference = references.next();
                if (incoming.length() != 0) incoming.append(';');
                incoming.append(reference.getReferenceType()).append('@').append(reference.getFromAddress());
            }
            rows.append(unit.getMinAddress()).append('\t').append(unit.getMaxAddress()).append('\t')
                .append(kind).append('\t').append(owner).append('\t').append(flow).append('\t')
                .append(description.replace('\t', ' ').replace('\n', ' ')).append('\t')
                .append(incoming).append('\n');
            count++;
        }
        Files.writeString(output, rows.toString());
        println("Wrote " + count + " listing units to " + output);
    }
}
