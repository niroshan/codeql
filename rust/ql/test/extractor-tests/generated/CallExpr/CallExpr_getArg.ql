// generated by codegen
import codeql.rust.elements
import TestUtils

from CallExpr x, int index
where toBeTested(x) and not x.isUnknown()
select x, index, x.getArg(index)
