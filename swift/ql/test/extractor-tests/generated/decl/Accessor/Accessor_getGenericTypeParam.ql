// generated by codegen/codegen.py, do not edit
import codeql.swift.elements
import TestUtils

from Accessor x, int index
where toBeTested(x) and not x.isUnknown()
select x, index, x.getGenericTypeParam(index)
