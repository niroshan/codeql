// generated by codegen
import codeql.rust.elements
import TestUtils

from RangeExpr x
where toBeTested(x) and not x.isUnknown()
select x, x.getRhs()
