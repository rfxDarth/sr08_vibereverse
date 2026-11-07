import ghidra.program.model.address.Address;
import ghidra.program.model.lang.Register;
import java.math.BigInteger;

public class SetThumbMode extends ghidra.app.script.GhidraScript {
    @Override
    protected void run() throws Exception {
        Register thumbMode = currentProgram.getProgramContext().getRegister("TMode");
        if (thumbMode == null) {
            throw new IllegalStateException("ARM context register TMode was not found");
        }
        Address first = currentProgram.getMinAddress();
        Address last = currentProgram.getMaxAddress();
        currentProgram.getProgramContext().setValue(thumbMode, first, last, BigInteger.ONE);
        println("Set Thumb mode over " + first + ".." + last + " before auto-analysis.");
    }
}
