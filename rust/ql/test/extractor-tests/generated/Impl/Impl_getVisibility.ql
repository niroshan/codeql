// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from Impl x
where toBeTested(x) and not x.isUnknown()
select x, x.getVisibility()
