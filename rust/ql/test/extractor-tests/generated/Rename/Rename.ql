// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from Rename x, string hasName
where
  toBeTested(x) and
  not x.isUnknown() and
  if x.hasName() then hasName = "yes" else hasName = "no"
select x, "hasName:", hasName
