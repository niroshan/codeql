// Generated automatically from com.hubspot.jinjava.interpret.InvalidArgumentException for testing purposes

package com.hubspot.jinjava.interpret;

import com.hubspot.jinjava.interpret.InvalidReason;
import com.hubspot.jinjava.interpret.JinjavaInterpreter;
import com.hubspot.jinjava.lib.Importable;

public class InvalidArgumentException extends RuntimeException
{
    protected InvalidArgumentException() {}
    public InvalidArgumentException(JinjavaInterpreter p0, Importable p1, InvalidReason p2, String p3, Object... p4){}
    public InvalidArgumentException(JinjavaInterpreter p0, Importable p1, InvalidReason p2, int p3, Object... p4){}
    public InvalidArgumentException(JinjavaInterpreter p0, String p1, String p2){}
    public String getMessage(){ return null; }
    public String getName(){ return null; }
    public int getLineNumber(){ return 0; }
    public int getStartPosition(){ return 0; }
}
